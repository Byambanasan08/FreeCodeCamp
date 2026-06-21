# State гэж юу вэ, мөн useState Hook хэрхэн ажилладаг вэ?

State нь React болон бусад front-end фреймворкуудын (front-end frameworks) хамгийн чухал суурь ойлголтуудын нэг юм. Энэ нь component-ийн “тархи” шиг бөгөөд цаг хугацааны явцад өөрчлөгдөж болох мэдээллийг хадгалж, component-ууд хэрхэн ажиллах болон харагдахыг удирддаг.

State гэж юу болох болон useState hook нь үүнтэй хэрхэн ажиллах боломж олгодгийг харцгаая.

State нь таны React component дахь динамик өгөгдлийг (dynamic data) илэрхийлдэг, жишээлбэл хэрэглэгчийн оруулсан утга (user input), API-аас татсан өгөгдөл (data fetched from an API), эсвэл хийх зүйлсийн жагсаалт (to-do list)-ын нэг элемент байж болно.

State өөрчлөгдөх бүрд React нь хуудсыг дахин ачаалалгүйгээр component-ийг дахин дүрсэлж (re-render), хэрэглэгчийн интерфэйс (user interface)-д тухайн өөрчлөлтийг тусгадаг. Энэ реактив чанар (reactivity) нь таны апп-ыг интерактив болгодог.

useState hook нь функциональ component-ууд (functional components) дотор state хувьсагч (state variables) зарлах боломж олгодог функц юм.

Hooks гарахаас өмнө state-ийг зөвхөн class component-ууд (class components) дотор ашиглах боломжтой байсан. Харин React 16.8-аас хойш hooks нэвтэрснээр, та useState hook ашиглан functional component-ууд дотор state ашиглах боломжтой болсон.

useState hook ашиглахын тулд та үүнийг React-оос импорт хийх хэрэгтэй:

import { useState } from "react";

Та мөн React-ийг өөрийг нь импортлоод useState hook-д property байдлаар хандаж болно:

import React from "react";

useState-ийг импортолсон үед state хувьсагчийг дараах байдлаар зарлаж болно:

const [stateVariable, setStateFunction] = useState(initialValue);

React-ийг импортолсон үед state хувьсагчийг дараах байдлаар зарлаж болно:

const [stateVariable, setStateFunction] = React.useState(initialValue);

State хувьсагч дотор дараах зүйлс байна:

```
stateVariable нь одоогийн state-ийн утгыг хадгална
setStateFunction (setter function) нь state хувьсагчийг шинэчилнэ
initialValue нь анхны state-ийг тохируулна
```

React component доторх state нь хувийн (private) бөгөөд component-ийн instance бүрт тусгаарлагдсан (isolated) байдаг гэдгийг анхаарна уу. Энэ нь нэг component-ийг хоёр удаа render хийвэл, нэгнийх нь state нөгөөд нөлөөлөхгүй гэсэн үг юм. Мөн хэрэв component-ууд хооронд state хуваалцахыг хүсвэл, state-ийг дээд (common parent) component руу өргөж (lift up) props хэлбэрээр доош дамжуулах хэрэгтэй.

Өөр нэг зүйл бол hooks-уудыг component-ийн дээд түвшинд (top level), return түлхүүр үгийн өмнө дуудах ёстой бөгөөд ингэснээр render бүр дээр state болон effects тогтвортой (consistent) байна. Энэ нь та state-ийг loop, нөхцөл (conditions), эсвэл nested функцүүд дотор ашиглаж болохгүй гэсэн үг юм.

Дараах нь Counter component дотор useState hook ашиглан state удирдаж буй жишээ юм:

// useState hook-ийг импортлож байна
import { useState } from "react";

function Counter() {
const initialValue = 0;

// State хувьсагч болон setter функц
const [count, setCount] = useState(initialValue);

return ( <div>
{/_ Одоогийн state утгыг харуулж байна _/} <h2>{count}</h2>

```
  <button onClick={() => setCount(count - 1)}>Decrement</button>
  <button onClick={() => setCount(count + 1)}>Increment</button>
</div>
```

);
}

export default Counter;

Дээрх кодонд бид useState hook-ийг React-оос импортолсон. Counter component дотор count нь одоогийн state-ийг илэрхийлж байгаа бол setCount нь state-ийг шинэчлэх үүрэгтэй set функц юм. Одоогийн state утга нь 0 байна. return statement дотор count болон count-ийг 1-ээр багасгах болон нэмэх хоёр товч (button) байна.

Та useState hook-ийг олон удаа дуудаж олон state-уудыг удирдаж болно. Энэ нь ялангуяа хоорондоо хамааралгүй state хувьсагчидтай үед чухал:

function UserProfile() {
const [isOnline, setIsOnline] = useState(false);
const [notifications, setNotifications] = useState(0);

// Component-ийн үлдсэн логик
}

Мөн та тус тусдаа шинэчлэгддэг олон state-уудыг удирдахдаа useState hook-ийг олон удаа дуудаж болно, жишээ нь form-ийн талбарууд (form fields):

function SignUpForm() {
const [name, setName] = useState("");
const [username, setUsername] = useState("");
const [email, setEmail] = useState("");

// Component-ийн үлдсэн логик
}

Гэхдээ энэ тохиолдолд эдгээр нь бүгд нэг form-ийн хэсэг тул state-уудыг нэгтгэх нь илүү тохиромжтой:

function SignUpForm() {
const [formData, setFormData] = useState({
name: "",
username: "",
email: "",
});

// Component-ийн үлдсэн логик
}

Энэ бол state гэж юу болох болон useState hook-ийг хэрхэн ашиглаж болох тухай юм.
