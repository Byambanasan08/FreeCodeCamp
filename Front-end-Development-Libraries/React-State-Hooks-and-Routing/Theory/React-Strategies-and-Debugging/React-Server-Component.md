## React Server Components гэж юу вэ, мөн тэд хэрхэн ажилладаг вэ?

React Server Components (RSCs) нь React хөгжүүлэгчид (React developers) хэрхэн ажиллах хандлагыг өөрчилсөн шинэ чиг хандлага (new trend) юм. RSC-уудын тусламжтайгаар илүү их ажил сервер (server) рүү шилждэг бөгөөд энэ нь олон давуу талтай.

Сервер компонентууд (server components) гэж юу болох, тэд хэрхэн ажилладаг, мөн сервер компонентуудыг нэвтрүүлэхэд (introduction) юу нөлөөлснийг харцгаая.

React Server Components нь зөвхөн сервер дээр (server) рэндэр (render) хийгддэг React компонентууд бөгөөд зөвхөн эцсийн HTML-ийг клиент (client) рүү илгээдэг. Энэ нь тухайн компонентууд сервер талын нөөцүүдэд (server-side resources) шууд хандах боломжтой бөгөөд браузер (browser) руу илгээх JavaScript-ийн хэмжээг эрс багасгадаг гэсэн үг.

Уламжлалт байдлаар React аппууд нь "client component" системийг ашигладаг байсан бөгөөд энэ нь рэндэрлэх (rendering), интерактив байдал (interactivity), болон side effect-ууд зэрэг бүх зүйлийг хариуцдаг. "Client component" гэсэн нэр томьёо нь React server components гарч ирэх хүртэл бараг хэрэглэгддэггүй байсан.

Гэхдээ client component систем нь их хэмжээний JavaScript bundle болон анхны ачааллын удаашрал (slower initial load times) зэрэг сул талуудтай.

Next.js болон Gatsby зэрэг React framework-ууд эдгээр асуудлыг шийдэхийн тулд зарим процессуудыг сервер рүү шилжүүлэх арга (workarounds) олсон боловч эдгээр нь стандартчилагдаагүй (not standardized) байсан. Хэрвээ та эдгээр framework-уудын аль нэгийг ашиглаж байсан бол getServerSideProps болон getServerData талаар сонссон байх.

Дараа нь React Server Components гарч ирсэн бөгөөд энэ нь зарим компонентуудыг бүрэн сервер дээр ажиллуулах боломж олгож, хэрэглэгчийн браузер дээр ямар ч код ажиллахаас өмнө өгөгдөл татах (data fetching) болон тооцоолол (computation) хийх боломжийг бүрдүүлсэн.

Server components нь анх Next.js дээр түгээмэл болж, бэлэн ашиглагдах болсон. Remix болон Gatsby зэрэг бусад framework-ууд дагаж хөгжиж байгаа бөгөөд vite-plugin-react-server нэртэй туршилтын plugin нь Vite дээр server components бүтээх боломжийг олгодог.

Тэгвэл server components хэрхэн ажилладаг вэ?

React Server Components-ийг харуулах хамгийн сайн жишээний нэг бол өгөгдөл татах (data fetching) юм.

Уламжлалт React client component-ууд дээр браузер API хүсэлтүүдийг (API requests) гүйцэтгэдэг. Өгөгдөл татах нь side effect тул та API дуудлагыг useEffect hook дотор хийдэг.

Мөн loading, data, error гэх мэт state хувьсагч (state variables)-уудыг тохируулах нь сайн практик (good practice) бөгөөд ингэснээр өгөгдөл ачаалж байгааг харуулах, өгөгдөл бэлэн болмогц харуулах, эсвэл алдаа гарсан тохиолдолд апп дотор харуулах боломжтой.

React Server Components ашиглах үед та бүхэл компонентын логикийг сервер рүү шилжүүлж, useState эсвэл useEffect ашиглахгүйгээр тэнд өгөгдөл татаж болно:

const Users = async () => {
const res = await fetch("https://jsonplaceholder.typicode.com/users");
const users = await res.json();

return (
<> <h1 className="text-4xl text-center mt-6">Users</h1> <ul className="text-center mt-3">
{users.map((user) => ( <li key={user.id}>{user.name}</li>
))} </ul>
</>
);
};

export default Users;

React Server Components нь зөвхөн сервер дээр ажилладаг тул та API-гаас өгөгдөл татаж, зөвхөн нэг удаа рэндэр хийхэд хангалттай. Мөн өгөгдөл татах процесс сервер дээр, өгөгдлийн эх үүсвэрт ойрхон явагддаг тул таны аппын гүйцэтгэл (performance) сайжирч магадгүй, ялангуяа удаан сүлжээтэй (slow network connections) хэрэглэгчдийн хувьд.

Нэг том анхаарах зүйл (gotcha) нь сервер компонентуудын бүх код сервер дээр үлддэг бөгөөд браузер (browser) руу илгээгддэггүй. Энэ нь та тэдэнтэй React hook-ууд ашиглаж чадахгүй, мөн Web API-ууд эсвэл браузерын event listener-үүдэд хандах боломжгүй гэсэн үг. Тэгвэл интерактив байдал (interactivity)-ыг хэрхэн нэмэх вэ?

Next.js-ийн app router дотор бүх компонентууд анхдагчаар (default) server component байдаг. Хэрвээ та интерактив байдал нэмэхийг хүсвэл тухайн компонентыг "use client" directive ашиглан client component болгон тэмдэглэх хэрэгтэй.

Өмнөх жишээг client component болгохыг хүсэж байна гэж бодъё. Үүнийг дараах байдлаар хийж болно:

"use client";

import { useState, useEffect } from "react";

const Users2 = () => {
const [status, setStatus] = useState({
users: [],
loading: true,
error: null,
});

async function fetchUsers() {
try {
const res = await fetch("https://jsonplaceholder.typicode.com/users");
const data = await res.json();
setStatus((prevStatus) => ({
...prevStatus,
users: data,
loading: false,
}));
} catch (err) {
setStatus((prevStatus) => ({
...prevStatus,
error: err.message,
loading: false,
}));
}
}

useEffect(() => {
fetchUsers();
}, []);

if (status.loading) {
return <p>Loading Users...</p>;
}
if (status.error) {
return <p>Error getting users: {status.error}</p>;
}

return (
<> <h1 className="text-4xl text-center mt-6">Users</h1> <ul className="text-center mt-3">
{status.users.map((user) => ( <li key={user.id}>{user.name}</li>
))} </ul>
</>
);
};

export default Users2;

Хэрвээ та click event зэрэг интерактив үйлдэл нэмэхийг хүсвэл тухайн компонент мөн client component гэж тэмдэглэгдсэн байх ёстой:

"use client";

import { useState } from "react";

const Counter = () => {
const [count, setCount] = useState(0);

return (
<> <h1>Counter</h1>
<button onClick={() => setCount(count + 1)}>Increment</button> <h2>{count}</h2>
<button onClick={() => setCount(count - 1)}>Decrement</button>
</>
);
};

export default Counter;

Хэрвээ та компонент дээр use client directive нэмэхгүй бол "You're importing a server component that needs useState. This React hook only works in a client component. To fix, mark the file (or its parent) with the "use client" directive." гэсэн алдааны мессеж (error message) гарч ирнэ.

React Server Components-ийн гол давуу талууд нь өгөгдөл татах (data fetching) илүү энгийн болох, код уншихад илүү ойлгомжтой болох, мөн client талын төвөгтэй байдал (client complexity) багасах зэрэг юм.
