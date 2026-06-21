## React дээр Effects гэж юу вэ, мөн useEffect Hook хэрхэн ажилладаг вэ?

`React` дээр `effect` гэдэг нь `component rendering` процессоос гадуур явагддаг аливаа үйлдлийг хэлнэ. Өөрөөр хэлбэл, хэрэглэгчийн интерфэйсийг (UI) render хийх явцад React шууд удирддаггүй бүх үйлдлүүд юм.

Нийтлэг жишээнүүдэд өгөгдөл татах (fetching data), браузерын tab-ийн гарчгийг шинэчлэх, браузерын local storage-оос унших эсвэл бичих, хэрэглэгчийн байршлыг авах зэрэг орно. Эдгээр үйлдлүүд нь гадаад орчинтой (outside world) харилцдаг бөгөөд `side effects` гэж нэрлэгддэг.

React нь эдгээр side effects-ийг удирдахад зориулж `useEffect hook`-ийг санал болгодог. `useEffect` нь component render хийгдсэний дараа эсвэл update хийгдсэний дараа функц ажиллуулах боломж олгодог.

`useEffect hook` хэрхэн ажилладгийг болон яагаад орчин үеийн React хөгжүүлэлтэд чухал болохыг харцгаая.

useEffect hook ашиглахын тулд эхлээд үүнийг импортлох хэрэгтэй:

```
import { useEffect } from "react";

Дараа нь үүнийг дараах байдлаар функц болгон ашиглана:

useEffect(() => {
// Таны side effect логик (ихэвчлэн функц) энд байна
}, [dependencies]);
```

`Effect` функц нь component render хийгдсэний дараа ажилладаг бол `optional dependencies` аргумент нь `effect` хэзээ ажиллахыг хянадаг.

`Dependencies` нь "reactive values" (state, props, функцууд, хувьсагчид гэх мэт)-ийн array, хоосон array, эсвэл огт өгөхгүй байж болно. Эдгээр бүх хувилбарууд `useEffect` хэрхэн ажиллахыг дараах байдлаар тодорхойлно:

1. Хэрэв dependencies нь нэг эсвэл хэд хэдэн `reactive value` агуулсан array бол, эдгээр утгууд өөрчлөгдөх бүрд effect ажиллана.

2. Хэрэв dependencies нь хоосон array бол, useEffect нь component анх render хийгдэх үед нэг удаа л ажиллана.

3. Хэрэв dependencies-ийг огт өгөөгүй бол, effect нь component render хийгдэх бүрд болон update хийгдэх бүрд ажиллана.

Жишээлбэл, энэ Counter апп дээр бид dependencies аргумент өгөөгүй тул effect нь component render хийгдэхэд болон update бүрд ажиллана:

```
import { useState, useEffect } from "react";

const Counter = () => {
const [count, setCount] = useState(0);

useEffect(() => {
console.log("Component renders");
});

return (

<div
style={{
display: "flex",
alignItems: "center",
flexDirection: "column",
}}
> <h2>{count}</h2> <div>
<button onClick={() => setCount(count + 1)}>Increase</button>
<button onClick={() => setCount(count - 1)}>Decrease</button> </div> </div>
);
};

export default Counter;
```

Харин хэрэв dependencies болгон хоосон array дамжуулбал, effect зөвхөн эхний render дээр л ажиллана:

useEffect(() => {
console.log('Component renders');
}, []);

Хэрэв та count state-ийг dependency болгон дамжуулбал, effect нь component анх render хийгдэх үед болон count өөрчлөгдөх үед ажиллана:

useEffect(() => {
document.title = `The current count is ${count}`;
console.log('component renders');
}, [count]);

Анхаарах зүйл нь, хэрэв таны effect функц component-ийн rendering lifecycle-аас цааш үргэлжилдэг бол, component render эсвэл update хийгдсэний дараа тухайн функцийг "clean up" хийх өөр функц хэрэгтэй байж болно.

Жишээлбэл, хэрэв таны effect функц setInterval() ашиглаж байвал, эсвэл window.addEventListener() ашиглан event listener нэмэж байвал, эсвэл сервертэй холбогдож байвал, та cleanup функц ашиглан тус тус clearInterval(), window.removeEventListener(), болон серверээс салгах (disconnect) үйлдлүүдийг хийх шаардлагатай.

useEffect hook-оос cleanup функц буцаах синтакс дараах байдалтай:

useEffect(() => {
// Таны side effect логик энд байна
return () => {
// Cleanup логик энд байна (optional)
};
}, [dependencies]);

Жишээлбэл, хэрэв та scroll event listener нэмбэл, cleanup функц дотор үүнийг устгах замаар цэвэрлэж болно:

useEffect(() => {
const handleScroll = () => {
// Scroll логик
};
window.addEventListener("scroll", handleScroll);

return () => {
window.removeEventListener("scroll", handleScroll);
};
}, []);
