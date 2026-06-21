# useOptimistic Hook гэж юу вэ, мөн хэрхэн ажилладаг вэ?

React-ийн сүүлийн хувилбарууд нь rendering болон логикийн зарим үүргийг сервер рүү шилжүүлэх зорилгоор server components болон server actions-ийг танилцуулсан.

Эдгээр шинэчлэлтүүдийн хамт React нь useOptimistic гэж нэрлэгдэх шинэ hook-ийг нэмсэн бөгөөд энэ нь async үйлдэл (action) background-д дуусахыг хүлээж байх үед UI-ийг хариу үйлдэлтэй (responsive) байлгахад тусалдаг.

Энэ нь ихэвчлэн серверээс өгөгдөл татахад ашиглагддаг боловч зөвхөн үүгээр хязгаарлагдахгүй. Энэ hook нь ерөнхийдөө async үйлдлүүдийг боловсруулахад ашигтай бөгөөд үйлдэл ажиллаж байх хугацаанд UI-г гөлгөр (smooth), интерактив байлгахыг хангадаг.

useOptimistic hook гэж юу болох, мөн хурдан (snappy), хариу үйлдэлтэй UI хийхэд хэрхэн хувь нэмэр оруулдгийг харцгаая.

useOptimistic hook нь UI дээрх "optimistic updates"-ийг удирдахад тусалдаг бөгөөд энэ нь серверийн хариуг хүлээх зэрэг үйлдлийн хүлээгдэж буй үр дүнд тулгуурлан UI-г шууд (immediate) шинэчлэх стратеги юм.

useOptimistic hook-ийн үндсэн синтакс дараах байдалтай:

const [optimisticState, addOptimistic] = useOptimistic(actualState, updateFunction);

```
optimisticState нь хэрэглэгчийн туршлагыг сайжруулахын тулд шууд шинэчлэгддэг түр state юм.

addOptimistic нь бодит state өөрчлөгдөхөөс өмнө optimistic update-ийг хэрэгжүүлдэг функц юм.

actualState нь серверээс өгөгдөл татах зэрэг action-ийн үр дүнгээс ирдэг бодит state-ийн утга юм.

updateFunction нь optimistic state хэрхэн шинэчлэгдэхийг тодорхойлдог функц юм.
```

Эхний харахад useOptimistic hook нь React-д loading state удирдах өөр нэг арга мэт санагдаж магадгүй. Гэхдээ энэ нь түүнээс илүү юм.

Loading state нь ямар нэг зүйл background-д болж байх үед UI дээр spinner, мессеж эсвэл өөр indicator харуулах эсэхийг хянадаг.

Харин useOptimistic hook нь жишээ нь API руу дуудлага хийхээс өмнө ч гэсэн хүлээгдэж буй үр дүнд тулгуурлан UI-г шууд шинэчилдэг. Энэ hook нь танд loading indicator эсвэл мессеж харуулах, боломжит алдаануудыг (errors) зөөлөн (gracefully) боловсруулах, мөн UI-г илүү хурдан мэдрэмжтэй (snappy) болгохын тулд шууд feedback үзүүлэх боломжийг олгодог.

useOptimistic hook хэрхэн ажилладгийг харуулах жишээнүүдийг үзэхэд энэ нь илүү ойлгомжтой болно.

Дараах нь task-ийг сервер дээр хадгалахыг дуурайлган (simulate) харуулсан action юм. Энэ нь бодит API request дээр тохиолдож болох шиг 1 секундийн delay-ийн дараа task-ийг буцаадаг:

export async function saveTask(task) {
await new Promise((res) => setTimeout(res, 1000));

return task;
}

Дараах нь useOptimistic hook-ийг import хийж, эхлүүлсэн (initialize) код бөгөөд handleSubmit функц нь input-ийг action руу илгээдэг:

"use client";

import { useOptimistic } from "react";

export default function TaskList({ tasks, addTask }) {
const [optimisticTasks, addOptimisticTask] = useOptimistic(
tasks,
(state, newTask) => [...state, { text: newTask, pending: true }]
);

async function handleSubmit(e) {
e.preventDefault();
const formData = new FormData(e.target);

```
addOptimisticTask(formData.get("task"));

addTask(formData);
e.target.reset();
```

}

return <>{/_ UI _/}</>;
}

Энэ код дээр useOptimistic hook нь шинэ task нэмэх үед шууд шинэчлэгддэг түр task-уудын жагсаалтыг хадгалж байна.

(state, newTask) => [...state, { text: newTask, pending: true }] гэсэн мөр нь сервер form-оос ирж буй өгөгдлийг баталгаажуулахаас өмнө ч гэсэн шинэ task pending төлөвтэйгээр харагдахыг баталгаажуулж байна.

Form илгээгдсэн үед handleSubmit функц нь task-ийг гаргаж авч, addOptimisticTask параметрийг ашиглан "optimistically" нэмдэг. Дараа нь addTask нь prop хэлбэрээр дамжуулагдаж, task-ийг сервер рүү илгээдэг. Эцэст нь e.target.reset() дуудаж form-ийг reset хийдэг.

Дараах нь TaskList component юм:

"use client";
import { useOptimistic, startTransition } from "react";

export default function TaskList({ tasks, addTask }) {
const [optimisticTasks, addOptimisticTask] = useOptimistic(
tasks,
(state, newTask) => [...state, { text: newTask, pending: true }]
);

async function handleSubmit(e) {
e.preventDefault();
const formData = new FormData(e.target);

```
startTransition(() => {
  addOptimisticTask(formData.get("task"));
});

addTask(formData);
e.target.reset();
```

}

return ( <div className="max-w-md mx-auto p-4"> <h3 className="text-xl font-medium mb-3">Tasks</h3>

```
  <ul className="space-y-2 mb-4">
    {optimisticTasks.map((task, index) => (
      <li key={index} className="p-2 border-b">
        {task.text}
        {task.pending && (
          <small className="ml-2 text-gray-500 text-sm">
            Adding Task...
          </small>
        )}
      </li>
    ))}
  </ul>

  <form onSubmit={handleSubmit} className="flex gap-2">
    <input
      type="text"
      name="task"
      placeholder="Type in a task..."
      className="flex-1 p-2 border"
    />
    <button type="submit" className="bg-gray-200 px-3 py-2 cursor-pointer">
      Submit
    </button>
  </form>
</div>
```

);
}

Энд бид optimisticTasks параметрийг давталтаар (loop) гүйлгэж task-уудыг харуулж байна. task.pending нь true үед Adding Task... гэсэн текст task-ийн хажууд харагдаж, сервер баталгаажуулахаас өмнө task "optimistically" нэмэгдсэнийг баталж байна.

Дараах нь form-ийн state-ийг удирддаг Task component юм. Энэ нь action-оос saveTask функцийг дуудаж task-ийг нэмдэг бөгөөд серверээс task ирсний дараа шинэ task-ийг жагсаалтанд нэмдэг:

"use client";

import { useState } from "react";
import TaskList from "./TaskList";
import { saveTask } from "./actions";

export default function Tasks() {
const [tasks, setTasks] = useState([]);

async function addTask(formData) {
const newTaskText = formData.get("task");

```
const savedTask = await saveTask(newTaskText);
setTasks((prev) => [...prev, { text: savedTask, pending: false }]);
```

}

return <TaskList tasks={tasks} addTask={addTask} />;
}

Энэ нь серверийн хариуг хүлээхээс илүүтэйгээр шууд feedback харуулснаар UI-г хурдан (snappy) шинэчилж байна. Task хадгалагдсаны дараа pending property арилж, эцсийн task жагсаалт тохирох байдлаар шинэчлэгддэг.

UI дээр болох ёсгүй хоёр зүйл болж байна. Нэгдүгээрт, Adding Task... текст хэт хурдан гарч алга болж байгаа тул харагдахгүй байна. Дараагийнх нь task нэмсний дараа алдаа гарч байна.

Эдгээр асуудлыг шийдэхийн тулд бид хоёр зүйл хийх хэрэгтэй.

Нэгдүгээрт, бид React-оос startTransition-ийг import хийж, addOptimisticTask(formData.get('task')) гэсэн мөрийг үүн дотор wrap хийх хэрэгтэй:

startTransition(() => {
addOptimisticTask(formData.get("task"));
});

Хоёрдугаарт, бид Adding Task... текстийг алга болохоос нь өмнө хэсэг хугацаанд харагддаг болгох хэрэгтэй.

Үүнийг хийхийн тулд addTask функцийг pending state-тэй болгож, task-ийг дууссан гэж тэмдэглэхээс өмнө хэдэн секундийн delay-ийг simulate хийж болно. Үүнд setTimeout() хамгийн тохиромжтой:

async function addTask(formData) {
const newTaskText = formData.get("task");

// pending төлөвтэй optimistic task нэмнэ
const tempTask = { id: Date.now(), text: newTaskText, pending: true };
setTasks((prev) => [...prev, tempTask]);

// Task-ийг дууссан гэж тэмдэглэхээс өмнө 3 секундын delay simulate хийнэ
setTimeout(async () => {
const savedTask = await saveTask(newTaskText);

```
setTasks((prev) =>
  prev.map((task) =>
    task.id === tempTask.id
      ? { ...task, text: savedTask, pending: false }
      : task
  )
);
```

}, 3000);
}

Ингээд та үүнийг хийсний дараа бүх зүйл зөв ажиллана.
