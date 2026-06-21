## React дээр Custom Hooks-ийг хэрхэн үүсгэх вэ?

React нь таны төслүүдэд янз бүрийн боломжуудыг хэрэгжүүлэхэд туслах олон built-in hooks-уудыг санал болгодог. Үүнд useState, useEffect, useContext болон бусад багтана.

Гэхдээ зарим тохиолдолд built-in hooks-уудын аль нь ч тусалж чадахгүй шинэ боломж нэмэх шаардлага гарч болно. Аз болоход, та React дээр өөрийн custom hooks-уудыг үүсгэж чадна.

Custom hooks нь санагдаж байгаа шигээ төвөгтэй биш. Эдгээр нь зүгээр л дахин ашиглагдах боломжтой (reusable) функцууд бөгөөд олон component-уудын хооронд логик хуваалцах боломж олгодог. Энэ нь дахин ашиглах боломж (reusability) нь өөрийн hook үүсгэх бас нэг шалтгаан болдог.

Custom hook ашигласнаар та тухайн hook-ийг ашиглаж буй component-уудаас логикийг тусгаарлаж (extract) чадна, жишээлбэл өгөгдөл татах (data fetching), state management, toggle хийх, мөн хэрэглэгч online эсвэл offline байгаа эсэхийг шалгах зэрэг side effects.

Дараа нь та тухайн hook-ийг дурын component-д импортлон ашиглаж болно, ингэснээр та тухайн component дотор зөвхөн rendering болон presentation дээр анхаарах боломжтой болно. Энэ нь давталтыг багасгаж (fewer repetitions), код давхардал (duplication)-ыг бууруулж, шинэчлэлт хийх үед өөрчлөх шаардлагатай газруудын тоог багасгана.

Одоо өөрийн custom hook-ийг хэрхэн хийхийг харцгаая.

React дээр бүх built-in hooks нь use гэсэн үгээр эхэлдэг тул таны custom hook мөн адил энэ жишгийг (convention) дагах ёстой. Мөн custom hook-ийн нэр нь юу хийдгийг нь тодорхой илэрхийлэх ёстой.

Тиймээс, хэрэв таны custom hook…

```
өгөгдөл татдаг бол useFetch гэж нэрлэж болно

ямар нэг зүйлийг асаах/унтраах (toggle) бол useToggle гэж нэрлэж болно

эсвэл debouncing хэрэгжүүлж байвал useDebounce нь тохиромжтой нэр юм
```

Та апп дээрээ debouncing нэмэх custom hook хийхийг хүсэж байна гэж төсөөлье.

Debouncing нь функц хэр олон удаа ажиллахыг хязгаарладаг програмчлалын техник юм. Энэ нь хэрэглэгч тодорхой хугацаанд үйлдэл хийхээ зогсоосны дараа л функцийг ажиллуулдаг. Жишээлбэл, хайлтын талбар (search box)-д товч дарах бүрт API дуудахгүй, харин хэрэглэгч бичихээ, жишээлбэл, 500 миллисекунд зогсоосны дараа API дуудах байдлаар ажилладаг.

Debouncing custom hook үүсгэхийн тулд эхлээд useDebounce.jsx эсвэл useDebounce.js файл үүсгэх хэрэгтэй. Ерөнхийдөө (conventionally), custom hooks-ийн файлуудыг hooks гэсэн хавтсанд хадгалдаг.

Та өөрийн custom hook дотор зарим built-in hooks-уудыг ашиглаж болно. Debouncing-д useState болон useEffect hooks хэрэгтэй тул файлын дээд хэсэгт импортолно:

import { useState, useEffect } from "react";

Дараа нь value болон delay гэсэн параметрүүдийг авдаг useDebounce функц үүсгэнэ. value нь хүлээж буй утга, delay нь хүлээх хугацаа юм. Тодорхой хугацаанд хүлээх хэрэгтэй тул setTimeout болон clearTimeout функцууд хэрэг болно:

function useDebounce(value, delay) {
const [debouncedValue, setDebouncedValue] = useState(value);

useEffect(() => {
const handler = setTimeout(() => {
setDebouncedValue(value);
}, delay);

```
return () => {
  clearTimeout(handler);
};
```

}, [value, delay]);

return debouncedValue;
}

export { useDebounce };

debouncedValue state нь хугацааны дараа шинэчлэгддэг утгыг хадгалж, буцаадаг бөгөөд зөвхөн заасан timeout хугацаа өнгөрсний дараа шинэчлэгдэнэ.

[ useEffect бол жинхэнэ “ид шид” (magic) явагддаг хэсэг юм. Өмнөх хичээлээс санаж байвал, React-ийн rendering циклээс (rendering cycle) гадуур оршдог бүх зүйл, жишээлбэл timer тохируулах (set) болон цэвэрлэх (clear) зэрэг нь side effect бөгөөд эдгээрийг удирдахын тулд useEffect hook-ийг ашиглах ёстой.

Энд байгаа useEffect hook дотор та setTimeout ашиглан debouncedValue-ийг тохируулж байна. Дараа нь value эсвэл delay өөрчлөгдөх бүрд, эсвэл component unmount болох үед өмнөх timeout-ийг clearTimeout ашиглан цэвэрлэх cleanup функц буцааж байна.

Энэ hook-ийг ашиглахын тулд бид энгийн хайлтын талбараар (search bar) шүүхэд зориулсан footballers array бэлдсэн:

const footballers = [
'Lionel Messi', 'Cristiano Ronaldo', 'Neymar Jr',
'Kylian Mbappe', 'Mohamed Salah', 'Sadio Mane',
'Kevin De Bruyne', 'Robert Lewandowski', 'Harry Kane',
'Sergio Ramos', 'Virgil van Dijk', 'Alisson Becker',
'Joshua Kimmich', 'Manuel Neuer', 'Karim Benzema',
'Thibaut Courtois', 'Eden Hazard', 'Raheem Sterling',
'Bruno Fernandes', 'Trent Alexander-Arnold', 'Son Heung-min',
'Pierre-Emerick Aubameyang','Sergio Aguero', 'Luis Suarez',
'Luka Modric', 'Casemiro', 'Frenkie de Jong', 'Gerard Pique',
'Marc-Andre ter Stegen', 'Keylor Navas', 'Angel Di Maria',
"N'Golo Kante", 'Kai Havertz', 'Timo Werner', 'Hakim Ziyech',
'Christian Pulisic', 'Mason Mount', 'Olivier Giroud', 'Tammy Abraham',
'Kepa Arrizabalaga', 'Ben Chilwell', 'Thiago Silva', 'Kurt Zouma',
'John Terry', 'Didier Drogba', 'Frank Lampard', 'Ashley Cole', 'Petr Cech',
];

export default footballers;

Мөн доорх нь хэрэглэгч бичихээ зогсоосноос хойш 1 секундийн дараа хайлт хийхээр саатуулдаг (delay) useDebounce hook-ийг ашигласан FootballerSearch component юм:

import { useState, useEffect } from "react";
import { useDebounce } from "./hooks/useDebounce";
import footballers from "./footballers";

const FootballerSearch = () => {
const [query, setQuery] = useState("");
const debouncedQuery = useDebounce(query, 1000); // Хэрэглэгч бичихээ зогсоосноос хойш 1 секундийн дараа хайлт эхэлнэ

useEffect(() => {
if (debouncedQuery) {
const results = footballers.filter((footballer) =>
footballer.toLowerCase().includes(debouncedQuery.toLowerCase()),
);
console.log("Search results:", results);
} else {
console.log("Search results: []");
}
}, [debouncedQuery]);

return (
<>

<h1 style={{ textAlign: "center" }}>Footballer Search App</h1>
<div style={{ textAlign: "center" }}>
<input
style={{ padding: "0.5rem", width: "30%" }}
type="text"
value={query}
onChange={(e) => setQuery(e.target.value)}
placeholder="Search for a footballer..."
/> </div>
</>
);
};

export default FootballerSearch;

Таны харж байгаагаар debouncedQuery хувьсагч нь query state (хэрэглэгчийн бичсэн утга)-ийг болон 1,000 миллисекунд буюу 1 секундийн delay-тэйгээр useDebounce hook-ийг эхлүүлж (initialize) байна. Хайлт өөрөө useEffect hook дотор хийгдэж, хайлтын үр дүнг console дээр хэвлэж (log) байна. ]
