# useActionState Hook гэж юу вэ, мөн хэрхэн ажилладаг вэ?

React 19 нь server components болон server actions гэж нэрлэгдэх хоёр онцлох шинэ боломжуудтайгаар гарч ирсэн.

Тэр хувилбараас эхлэн, server components нь тэдгээрийг шууд дэмждэг Next.js зэрэг framework-үүдэд анхдагч (default) болсон.

Нөгөө талаас server actions нь API endpoint шаардлагагүйгээр form-ийг сервер дээр шууд боловсруулах боломж олгодог, сервер дээр ажилладаг функцууд юм.

Server action нь дараах байдлаар харагдана:

"use server";

async function submitForm(formData) {
const name = formData.get("name");
return { message: `Hello, ${name}!` };
}

Энэ server action нь form-оос name талбарыг (field) авч, тухайн нэрийг мэндчилсэн string (мөр) буцаадаг.

Server action-уудын state management-ийг хялбарчлах, мөн энгийн form-уудын хувьд client-side JavaScript хэрэгцээг арилгахын тулд React баг 19-р хувилбарт useActionState hook-ийг танилцуулсан.

Энэ hook-ийг илүү ойроос харж, хэрхэн ажилладгийг нь үзье.

React-ийн баримт бичиг (documentation) дээр useActionState hook-ийг "form action-ийн үр дүнд тулгуурлан state-ийг шинэчлэх боломж олгодог hook" гэж тодорхойлсон.

Гэхдээ энэ нь та useActionState hook-ийг зөвхөн form-той ашиглаж болно гэсэн үг биш юм. Та мөн button click болон бусад event-үүдийг удирдахад ашиглаж болно, зөвхөн танд action бэлэн байх хэрэгтэй.

Мөн санаарай, useActionState нь hook учраас та үүнийг server component дотор ашиглах боломжгүй.

useActionState hook-ийн үндсэн синтакс дараах байдалтай:

const [state, action, isPending] = useActionState(actionFunction, initialState, permalink);

```
state нь action буцааж буй одоогийн state юм.

action нь server action-ийг ажиллуулах (trigger) функц юм.

isPending нь тухайн action одоогоор ажиллаж байгаа эсэхийг илэрхийлэх boolean утга юм.

actionFunction параметр нь өөрөө server action юм.

initialState нь action ажиллахаас өмнөх state-ийн эхний утгыг илэрхийлдэг параметр юм.

permalink нь form өөрчилж буй тухайн хуудсын цорын ганц (unique) URL-ийг агуулсан optional string юм.
```

useActionState hook-ийг ашиглахын тулд эхлээд танд action бэлэн байх ёстой. Үүний тулд өмнөх жишээний action-ийг бага зэрэг өөрчлөлттэй ашиглая:

"use server";

export async function submitForm(\_, formData) {
const name = formData.get("name");

const hour = new Date().getHours();
let greeting;

if (hour < 12) {
greeting = "Good morning";
} else if (hour < 18) {
greeting = "Good afternoon";
} else {
greeting = "Good evening";
}

return { message: `${greeting}, ${name}` };
}

Component дотроо та useActionState hook-ийг import хийж, component-ийн биеийн (body) хамгийн дээд түвшинд (return statement-аас өмнө) бусад hook-ууд шиг дуудах хэрэгтэй. Мөн action-ийг import хийх шаардлагатай:

"use client";

// useActionState hook-ийг import хийнэ
import { useActionState } from "react";

// submitForm action-ийг import хийнэ
import { submitForm } from "./actions/submitForm";

const Greeter = () => {

// Hook-ийг эхлүүлнэ (initialize)
const [state, submit, isPending] = useActionState(submitForm, {
message: "",
});

return ( <div className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-6">
{/_ Component-ийн үлдсэн хэсэг _/} </div>
);
};

export default Greeter;

Бага зэрэг styling нэмсэн бүрэн код дараах байдлаар харагдана:

"use client";

import { useActionState } from "react";
import { submitForm } from "./actions/submitForm";

const Greeter = () => {
const [state, submit, isPending] = useActionState(submitForm, {
message: "",
});

return ( <div className="flex flex-col items-center justify-center min-h-screen bg-gray-100 p-6"> <form
action={submit}
className="bg-white p-6 rounded-2xl shadow-md w-full max-w-md"

> <h2 className="text-2xl text-center font-semibold text-gray-700 mb-4">
> Greet Someone </h2>

```
    <input
      type="text"
      name="name"
      placeholder="Enter your name"
      required
      className="w-full p-3 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-green-400"
    />

    <button
      type="submit"
      disabled={isPending}
      className="w-full mt-4 p-3 bg-green-500 text-white font-semibold rounded-lg hover:bg-green-600 disabled:bg-gray-400 transition-all"
    >
      {isPending ? "Greeting..." : "Greet"}
    </button>

    {state.message && (
      <p className="mt-4 text-green-600 text-center font-medium">
        {state.message}
      </p>
    )}
  </form>
</div>
```

);
};

export default Greeter;

Browser дээр та form-ийн товч нь action isPending байх үед Greet-ээс Greeting... болж өөрчлөгдөхийг харах болно — мөн form илгээгдсэн цаг хугацаанаас хамааран мэндчилгээ нь Good morning, {name}, Good afternoon, {name}, эсвэл Good evening, {name} гэж харагдана.

# Та useActionState hook-ийг form-оос гадуур мөн ашиглаж болдог гэж бид өмнө нь дурдсан гэдгийг санаж байна уу?

Энэ жишээнд бид JSONPlaceholder-оос таван хэрэглэгчийг (users) button дарснаар татаж авна:

"use server";

export async function getUsers() {
const res = await fetch(
"https://jsonplaceholder.typicode.com/users?_start=0&_limit=5/"
);
return await res.json();
}

Дараах нь styled UI юм:

"use client";

import { useActionState } from "react";
import { getUsers } from "./actions/getUsers";

export default function FetchUsers() {
const [users, fetchAction, isPending] = useActionState(getUsers, []);

return ( <div className="p-6 max-w-lg mx-auto"> <button
onClick={fetchAction}
disabled={isPending}
className="px-4 py-2 cursor-pointer bg-green-500 text-white rounded-lg hover:bg-green-600 disabled:bg-gray-400 font-bold"

> {isPending ? "Fetching Users..." : "Fetch Users"} </button>

```
  <ul className="mt-4 space-y-2">
    {users.map((user) => (
      <li key={user.id} className="p-3 bg-gray-100 rounded-lg">
        <p className="font-semibold">{user.name}</p>
        <p className="text-sm text-gray-600">{user.email}</p>
      </li>
    ))}
  </ul>
</div>
```

);
}

Browser дээр та button-ийг дарсны дараа button-ийн текст Fetching Users... болж өөрчлөгдөхгүй байгааг харах болно.

Энэ нь React өгөгдөл татах (data fetching) болон render хийхийг isPending state-ээс илүү өндөр приоритет (priority)-той гэж үздэгтэй холбоотой бөгөөд энэ явцад isPending-ийг блоклож (block) алдаа үүсгэдэг.

Энэ асуудлыг засахын тулд та action-ийг startTransition дотор wrap хийх хэрэгтэй:

"use client";

// React-оос startTransition-ийг import хийнэ
import { useActionState, startTransition } from "react";
import { getUsers } from "./actions/getUsers";

export default function FetchUsers() {
const [users, fetchAction, isPending] = useActionState(getUsers, []);

return ( <div className="p-6 max-w-lg mx-auto">
<button
{/_ fetchAction-ийг startTransition дотор wrap хийнэ _/}
onClick={() => startTransition(() => fetchAction())}
disabled={isPending}
className="px-4 py-2 bg-green-500 font-bold cursor-pointer text-white rounded-lg hover:bg-green-600 disabled:bg-gray-400"

> {isPending ? 'Fetching Users...' : 'Fetch Users'} </button>

```
  <ul className="mt-4 space-y-2">
    {users.map((user) => (
      <li key={user.id} className="p-3 bg-gray-100 rounded-lg">
        <p className="font-semibold">{user.name}</p>
        <p className="text-sm text-gray-600">{user.email}</p>
      </li>
    ))}
  </ul>
</div>
```

);
}

Хэрэв та startTransition гэж юу вэ гэж гайхаж байвал, энэ нь state update-ийг бага приоритеттой (low-priority) гэж React-д хэлдэг функц бөгөөд тасалдуулж (interrupt) болдог. Энэ нь server action зэрэг асинхрон (asynchronous) шинэчлэлтүүдийг боловсруулах явцад UI-ийг хариу үйлдэлтэй (responsive) байлгадаг.

Ингэж useActionState hook-ийг form дотор болон form-оос гадуур ашиглаж болно.
