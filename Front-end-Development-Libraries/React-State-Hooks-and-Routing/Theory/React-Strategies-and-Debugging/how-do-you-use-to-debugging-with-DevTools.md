# React DevTools ашиглан React component-уудаа хэрхэн debug хийх вэ?

Browser-д HTML, CSS, болон JavaScript-ийг debug хийхэд ашиглаж болох built-in developer tools байдаг.

Гэхдээ эдгээр нь React аппликейшн доторх алдааг (bugs) олох, засахад тийм ч сайн биш. Тиймээс React баг "React Developer Tools" (AKA React DevTools) нэртэй хэрэгслийг бүтээсэн бөгөөд энэ нь React аппликейшнүүдийг inspect хийх, debug хийх, болон profile хийх боломжийг олгодог.

React DevTools нь Chrome, Edge, болон Firefox-д зориулсан browser extension хэлбэрээр байдаг. Хэрэв та Chrome эсвэл Edge ашигладаг бол Chrome Web Store руу орж, "React Developer Tools" гэж хайгаад browser дээрээ нэмнэ.

Хэрэв та Firefox ашигладаг бол Firefox Add-ons хуудас руу орж, уг хэрэгслийг хайгаад browser дээрээ нэмнэ.

Хэрэв та Safari ашигладаг бол React DevTools-ийг npm-оор дамжуулан суулгаж болно, npm install -g react-devtools эсвэл yarn global add react-devtools командыг ажиллуулна.

React DevTools-ийг суулгаж, идэвхжүүлсний дараа browser дээрээ React аппликейшн нээгээд developer tools-ийг нээвэл Components болон Profiler гэсэн хоёр нэмэлт tab харагдана.

Components tab нь component бүрийг tree view хэлбэрээр харуулдаг. Үүний тусламжтайгаар та:

```
Аппликейшний component hierarchy-г харах боломжтой.
Props, state, болон context утгуудыг real-time дээр шалгах болон өөрчлөх боломжтой.
Сонгосон component-ийн source code-ийг харах боломжтой.
Component-ийн өгөгдлийг console-д log хийх боломжтой.
Component-ийн DOM element-уудыг шалгах боломжтой.
```

Нөгөө талаас Profiler tab нь component-ийн гүйцэтгэлийг (performance) бичиж (record), анализ хийхэд тусалдаг бөгөөд ингэснээр шаардлагагүй re-render-үүдийг тодорхойлох, commit duration-уудыг харах, болон юуг optimize хийх боломжтойг олж мэдэх боломжтой.

Дараах нь component болон тэдгээрийн props, state-ийг хэрхэн inspect хийхийг харуулах энгийн апп юм. Энэ нь өмнөх prop drilling хичээл дээр ашигласан кодтой төстэй:

import { useState } from "react";

export default function App() {
const greeting = "Hello, Prop Drilling!";
const response = "I'm not here to play!";

return <Parent greeting={greeting} response={response} />;
}

const Parent = ({ greeting, response }) => {
return <Child greeting={greeting} response={response} />;
};

const Child = ({ greeting, response }) => {
return <Grandchild greeting={greeting} response={response} />;
};

const Grandchild = ({ greeting, response }) => {
const [count, setCount] = useState(0);

return (
<> <h1>{greeting}</h1> <h2>{response}</h2>

```
  <button onClick={() => setCount(count + 1)}>Increase Count</button>
  <h2>Count: {count}</h2>
  <button onClick={() => setCount(count - 1)}>Decrease Count</button>
</>
```

);
};

Хэрэв та React DevTools-ийн Components tab-ийг харвал component-ууд tree view хэлбэрээр харагдана. App component хамгийн дээр байрлаж, дараа нь Parent, Child, болон Grandchild component-ууд байна.

Хэрэв та эдгээр component-уудаас аль нэгийг сонговол, тэдгээрийн props болон state-ийг харж болно. Жишээ нь, Parent component-ийг сонговол greeting болон response props-уудыг харж болно, эдгээр нь тус тусдаа Hello, Prop Drilling! болон I'm not here to play! юм.

Та props болон state-ийг real-time дээр харах, шинэчлэх, шаардлагатай бол өөрчлөх боломжтой. Жишээ нь, Grandchild component-ийг сонгоод greeting prop-ийг Hello, Prop Drilling! байснаас Hello, Welcome to Prop Drilling! болгон өөрчилбөл, энэ нь шууд хуудсан дээр харагдана.

Component доторх өгөгдлийг console-д log хийхийн тулд та тохирох DOM element-ийг inspect хийж, component-ийн source code-ийг харах боломжтой. Баруун дээд буланд байгаа icon-ууд үүнийг хийх боломж олгодог. Хэрэв та Grandchild component-ийг сонгоод Log the component data to the console товчийг дарвал props, state, hooks, nodes, болон бусад өгөгдлүүд console дээр гарна.

React дээр танд тулгарч болох нийтлэг алдаа бол props mismatch юм.

Жишээ нь, Child component-д response prop дамжуулах ёстой байхад та андуурч reply гэж дамжуулсан гэж бодъё:

const Child = ({ greeting, response }) => {
return <Grandchild greeting={greeting} reply={response} />;
};

Grandchild component нь response prop хүлээж байгааг санаарай. Component өөр prop хүлээн авч байгаа тул энэ текстийг хуудсан дээр харуулж чадахгүй бөгөөд DOM-д хоосон h2 элемент нэмнэ. Үүний оронд та зөвхөн Hello, Prop Drilling! гэсэн тексттэй h1 элемент болон хуудсан дээрх бусад товч, текстүүдийг л харах болно. Хоосон h2 элемент DOM-д байгаа ч, хоосон тул inspect хийхгүйгээр харагдахгүй.

Үүнийг засахын тулд та Parent component-оос Child хүртэлх prop дамжуулалтыг (progression) шалгаж, prop-ийн нэрийг шууд засах боломжтой. Хэрэв та Components tab руу орж Child component-ийг сонгоод reply prop-ийг response болгож өөрчилбөл, хуудсан дээр I'm not here to play! гэсэн тексттэй h2 элемент харагдана.
