# Prop Drilling гэж юу вэ?

Prop drilling нь React аппликейшн доторх state management-ийн хамгийн суурь (basic) арга юм. Энэ нь энгийн харагддаг ч маш хурдан замбараагүй (messy) болж, масштаблах (scale) маш хэцүү болдог.

Prop drilling гэж юу болох, яагаад асуудал үүсгэдэг, мөн аппликейшн томрох үед үүнийг орлох илүү сайн аргыг харцгаая.

Prop drilling гэдэг нь parent component-оос гүн nested child component-ууд руу props-ийг дамжуулах процесс бөгөөд зарим child component-ууд тухайн props-ийг хэрэглэхгүй байсан ч дамжуулдаг.

Жишээ нь, Parent, Child, болон Grandchild гэсэн гурван component байна гэж бодъё. Хэрэв та Grandchild component дээр зарим өгөгдлийг ашиглахыг хүсвэл, харин тэр өгөгдөл Parent component дээр байгаа бол, та Parent-оос Child руу, дараа нь Child-оос Grandchild руу дамжуулах шаардлагатай.

Эсвэл өгөгдөл үүнээс ч дээр (up the chain) байвал, Parent component руу ч дамжуулах шаардлагатай болж магадгүй.

Энд миний харуулахыг хүсэж буй өгөгдөл бол Hello, Prop Drilling! гэсэн string юм. Энэ нь root App component дотор greeting хувьсагчид оноогдсон:

import "./App.css";
import Parent from "./Parent";

function App() {
const greeting = "Hello, Prop Drilling!";

return <Parent greeting={greeting} />;
}

export default App;

Та Parent component мөн greeting хувьсагчийг greeting prop-ийн утга болгон авч байгааг харж болно. Дараах нь Parent component энэ утгыг Child component руу дахин greeting prop болгон дамжуулж байна:

import Child from "./Child";

const Parent = ({ greeting }) => {
return <Child greeting={greeting} />;
};

export default Parent;

Мөн дараах нь Child component энэ утгыг Grandchild component руу дамжуулж байна:

import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
return <Grandchild greeting={greeting} />;
};

export default Child;

Эцэст нь Grandchild component greeting-ийг авч, үүнийг h1 элементийн контент болгон ашиглаж байна:

const Grandchild = ({ greeting }) => {
return <h1>{greeting}</h1>;
};

export default Grandchild;

Browser дээр та Hello, Prop Drilling! гэсэн тексттэй ганц h1 элемент бүхий хуудас харах болно.

Эхэндээ prop drilling тийм ч том асуудал биш мэт санагдаж магадгүй. Гэхдээ аппликейшн томрох тусам үүнийг ойлгох, debug хийх, болон засварлах (maintain) улам хэцүү болдог.

Хэрэв та props дамжуулах шаардлагатай бол, тэдгээрийг аль болох нэг parent component дотор байлгахыг хичээгээрэй. Шаардлагатай бүх өгөгдлийг нэг газар төвлөрүүлэх (centralize) энэ аргыг "single source of truth" гэж нэрлэдэг.

Жишээ нь, та greeting-тэй хамт шинэ response нэмэхийг хүсэж, хоёуланг нь Grandchild component дээр ашиглахыг хүсэж байна гэж бодъё. greeting аль хэдийн App component дотор байгаа тул response-ийг мөн тэнд байрлуулаад, хоёуланг нь доош дамжуулах нь зөв:

function App() {
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
return (
<> <h1>{greeting}</h1> <h2>{response}</h2>
</>
);
};

export default App;

Browser дээр та Hello, Prop Drilling! гэсэн тексттэй h1 элемент болон I'm not here to play! гэсэн тексттэй h2 элемент бүхий хуудас харах болно.

Prop drilling-ээс зайлсхийхийн тулд, ялангуяа том, төвөгтэй аппликейшнүүдэд, Context API эсвэл Redux болон Redux Toolkit, Zustand, Recoil зэрэг state management сангуудыг ашиглахыг зөвлөж байна.

Та эдгээрийн талаар дараагийн хичээлүүдэд илүү дэлгэрэнгүй сурах болно.
