## Refs ашиглан утгуудыг хэрхэн заах (reference хийх) вэ?

React дээр DOM элементэд шууд хандах шаардлагатай нөхцөлүүд гарч болно. Тэр үед "refs" маш хэрэгтэй болдог. Refs нь мөн mutable утгуудыг хадгалж чаддаг боловч ийм зорилгод state ашиглах нь илүү зөв сонголт байдаг.

Vanilla JavaScript дээр та DOM элементэд хандахын тулд getElementById() болон querySelector() method-уудыг ашигладаг байсан. Харин React дээр DOM элементэд хандахын тулд refs ашигладаг.

Гол ялгаануудын нэг нь refs ашиглах үед та элементэд хандахад ID эсвэл class зэрэг identifier-ууд хэрэггүй болдог.

Тэгвэл refs-ийг хэрхэн үүсгэж, ашиглах вэ? React нь үүнд зориулсан useRef() hook-ийг санал болгодог.

Эхний алхам нь hook-ийг React-оос импортлох:

import { useRef } from "react";

Дараагийн алхам бол useRef hook дотор анхны утгыг (initial value) өгч, ref-ийг хадгалах хувьсагч үүсгэх явдал юм. Жишээлбэл, sectionRef гэдэг ref-ийг null утгаар эхлүүлж болно:

const sectionRef = useRef(null);

Сүүлийн алхам бол ref хувьсагчийг JSX доторх элементэд ref attribute ашиглан холбох (attach) явдал юм:

<section ref={sectionRef}>
  {/* Section content */}
</section>

Хэрэв та ref-ийг console дээр хэвлэвэл (log), энэ нь current утгатай object байдлаар харагдана, энэ тохиолдолд null байна:

console.log(sectionRef); // { current: null }

Та мөн current property-ийг ашиглан утгыг шууд console дээр харж болно:

console.log(sectionRef.current); // null

Ref-ийн дараагийн утгууд нь component lifecycle-аас хамаардаг.

Жишээлбэл, sectionRef-ийн анхны утга үргэлж null байна, учир нь эхэнд тийм утгаар тохируулсан. Component mount болсны дараа ref-ийн утга нь тухайн ref холбогдсон section элемент болно.

Хэрэв component unmount бол ref-ийн утга дахин анхны null утга руу буцна.

Ref-ийн нэг нийтлэг жишээ нь render хийх үед эсвэл товч дарахад input элемент дээр focus өгөх явдал юм.

Доорх нь товч дарахад focus өгөх жишээ юм:

import { useRef } from "react";

const Focus = () => {
const inputRef = useRef(null);

const handleFocus = () => {
if (inputRef.current) {
inputRef.current.focus();
}
};

return ( <div> <input ref={inputRef} type="text" placeholder="Enter text" /> <button onClick={handleFocus}>Focus Input</button> </div>
);
};

export default Focus;

Дээрх кодонд inputRef үүсгэгдэж, input элементэд холбогдсон. Мөн onClick event-тэй button байгаа бөгөөд энэ нь handleFocus функцийг дууддаг.

handleFocus функцийн хийж буй зүйл нь input элемент дээр focus() method-ийг дуудах явдал юм. input нь React-д багтсан built-in component тул бодит input DOM элемент нь ref-ийн current property-д хадгалагддаг гэдгийг анхаарна уу. Тиймээс focus() method-ийг input.current.focus() байдлаар дуудаж байна.

Refs-тэй ажиллахдаа анхаарах зарим сайн практикууд:

```
Refs-ийг голчлон DOM-той харилцахад ашигла. Та mutable өгөгдөлд ашиглаж болох ч state илүү зөв сонголт байдаг.

Энгийн state management-д refs бүү ашигла – энэ зорилгод useState зориулагдсан.

ref.current байгаа эсэхийг шалгаж байж property-ууд руу нь ханд. Дахин жишээ:
```

const handleFocus = () => {
if (inputRef.current) {
inputRef.current.focus();
}
};

Энэ нь ref DOM-д холбогдоогүй байх үед эсвэл DOM-оос устгагдсаны дараа хандах үед гарах алдаанаас сэргийлдэг.
