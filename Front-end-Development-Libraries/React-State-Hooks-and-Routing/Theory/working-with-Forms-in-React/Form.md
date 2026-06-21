# React дээр Form-ууд (Forms) хэрхэн ажилладаг вэ?

Form-ууд (Forms) нь ямар ч вэб аппликейшнд суурь (fundamental) үүрэгтэй байдаг, учир нь тэд хэрэглэгчийн оролтыг (user input) боловсруулах, өгөгдөл цуглуулах (collect data), болон үйлдлүүдийг (actions) өдөөх боломжийг олгодог.

React-д, form-уудыг state эсвэл refs ашиглан удирддаг бөгөөд энэ нь тэдний зан төлөв (behavior) болон баталгаажуулалт (validation)-ыг бүрэн хянах боломжийг танд өгдөг. Form-ыг удирдах эдгээр хоёр аргыг "controlled" болон "uncontrolled" input гэж нэрлэдэг.

Controlled болон uncontrolled input гэж юу болохыг харцгаая.

Controlled input нь form input-уудыг боловсруулах хамгийн "React-д ойр" арга юм. Controlled input ашиглах үед та input талбарын (input field) утгыг state-д хадгалж, onChange event-ээр дамжуулан шинэчилдэг. Энэ нь танд form-ийн өгөгдлийг бүрэн хянах боломжийг олгож, шууд (instant) validation болон нөхцөлт render (conditional rendering) хийх боломжийг олгодог.

Энэ процесс дараах байдлаар ажилладаг: React нь useState hook ашиглан form-ийн state-ийг хадгалдаг бөгөөд та үүнийг өөрчлөгдөх бүрт нь шинэчилдэг. Хэрэглэгч input талбарт бичих үед onChange event ажиллаж, state-ийг шинэчилж, React шинэ утгатайгаар component-ийг дахин render хийдэг.

import { useState } from "react";

function App() {
const [name, setName] = useState("");

const handleChange = (e) => {
setName(e.target.value);
};

const handleSubmit = (e) => {
e.preventDefault();
console.log(name);
};

return (
<> <form onSubmit={handleSubmit}> <label htmlFor="name">Your name</label> <br /> <input value={name} id="name" onChange={handleChange} type="text" /> <button type="submit">Submit</button> </form>
</>
);
}

export default App;

Controlled input-уудын давуу талууд дараах байдалтай:

```
Form-ийн өгөгдөлд шууд (immediate) хандах боломжтой.

Та шууд (instant) validation хэрэгжүүлэх боломжтой.

Та submit товчийг нөхцөлөөр идэвхгүй (disable) болгож чадна.

Та input-ийн утгыг программын аргаар (programmatically) хянах боломжтой.
```

Нөгөө талаас uncontrolled input-ууд нь уламжлалт HTML form-ууд дээр илүү их харагддаг. Тиймээс useState hook ашиглан input-уудыг удирдахын оронд, HTML дээрх uncontrolled input-ууд нь DOM-ийн тусламжтайгаар өөрсдийн дотоод state-ийг хадгалдаг.

DOM нь input-ийн утгуудыг хянадаг тул, танд хэрэгтэй зүйл бол ref ашиглан input талбаруудын утгыг авах явдал юм. Энэ арга нь бага код шаарддаг бөгөөд илүү гүйцэтгэлтэй (performance) байдаг, учир нь refs нь React-ийг дахин render хийхэд хүргэдэггүй.

Uncontrolled input-уудын жишээг харцгаая:

import { useRef } from "react";

function App() {
const nameRef = useRef();

const handleSubmit = (e) => {
e.preventDefault();
console.log(nameRef.current.value);
};

return ( <form onSubmit={handleSubmit}> <label htmlFor="name">Your</label>{" "} <input type="text" ref={nameRef} id="name" /> <button type="submit">Submit</button> </form>
);
}

export default App;

Uncontrolled input-уудын маш тодорхой нэг давуу тал нь бага код шаарддаг явдал юм. Мөн тэд илүү гүйцэтгэл сайтай бөгөөд HTML-д дассан React-ийн эхлэгчдэд илүү байгалийн (natural) мэдрэмж төрүүлдэг.

Тэгэхээр controlled болон uncontrolled input-уудаас аль нь ашиглах ёстой вэ?

Хэрэв танд динамик form шинэчлэлт (dynamic form updates), бодит цагийн validation (real-time validation), эсвэл input-ийн утгуудыг state-тэй синк (sync) хийх шаардлагатай бол controlled input ашиглаарай. Тэд илүү сайн хяналт өгдөг боловч илүү олон дахин render (re-render) шаарддаг.

Хэрэв танд илүү энгийн form хэрэгтэй, зөвхөн илгээх (submission) үед утгуудыг авах шаардлагатай, эсвэл React биш кодтой (non-React code) хамт ажиллаж байгаа бол uncontrolled input ашиглаарай.

Controlled болон uncontrolled input-уудаас аль нь ч ашигласан бай, React дээр form хийхдээ дараах сайн туршлагуудыг (best practices) баримтлах хэрэгтэй:

```
Form-ийн default submission-ийг үргэлж зогсоо (prevent the default form submission).

Илгээхээс (submission) өмнө input-уудыг заавал шалгаж (validate) бай.

Loading, validation errors болон бусад холбогдох төлөвүүдээр (states) дамжуулан хэрэглэгчдэд үргэлж ойлгомжтой feedback өг.
```
