# React дээр Routing хэрхэн ажилладаг вэ?

Өмнөх хичээлүүдэд та React нь `single page application` (SPA) гэдгийг сурсан. `Single page application` гэдэг нь нэг HTML файл агуулдаг бөгөөд JavaScript ашиглан хуудсан дээрх бүх контентыг динамикаар шинэчилдэг аппликейшн юм.

Тэгвэл та React аппликейшндоо олон "page" нэмэх шаардлагатай бол яах вэ? Та тэдгээр өөр өөр `view`-үүд рүү хэрхэн шилжих вэ?

Энэ үед `React Router` хэрэг болдог.

`React Router` нь гуравдагч талын сан (third party library) бөгөөд React аппликейшнд `routing` нэмэх боломжийг олгодог. Эхлэхийн тулд та байгаа (existing) React төсөлдөө React Router-ийг дараах байдлаар суулгах хэрэгтэй:

`npm i react-router`

Хэрэв та package.json файлыг шалгавал react-router dependency-уудын жагсаалтад нэмэгдсэн байхыг харах болно:

"dependencies": {
"react": "^18.3.1",
"react-dom": "^18.3.1",
"react-router": "^7.2.0"
}

Дараа нь main.jsx эсвэл index.jsx файл дотор та `BrowserRouter`-ийг import хийж, App component-оо `BrowserRouter`-оор хүрээлэн (wrap) render хийх хэрэгтэй:

import { StrictMode } from "react";
import { createRoot } from "react-dom/client";
import { BrowserRouter } from "react-router";
import App from "./App.jsx";

import "./index.css";

createRoot(document.getElementById("root")).render( <StrictMode> <BrowserRouter> <App /> </BrowserRouter> </StrictMode>
);

Аппликейшнд routing идэвхжүүлэхийн тулд та import statement-аа шинэчилж Routes болон Route component-уудыг нэмэх хэрэгтэй:

import { BrowserRouter, Routes, Route } from "react-router";

Дараа нь BrowserRouter дотор Routes болон Route component-уудыг нэмнэ:

createRoot(document.getElementById("root")).render( <StrictMode> <BrowserRouter> <Routes>
<Route path="/" element={<App />} /> </Routes> </BrowserRouter> </StrictMode>
);

path болон element нь URL болон UI component-уудыг хооронд нь холбох (couple) үүрэгтэй. Энэ жишээнд бид homepage-д зориулсан route үүсгэж, App component руу зааж өгсөн байна.

Томоохон аппликейшнүүдэд олон view болон route-уудыг дараах байдлаар тохируулах нь түгээмэл байдаг:

<Routes>
   <Route index element={<Home />} />
   <Route path="about" element={<About />} />

  <Route path="products">
    <Route index element={<ProductsHome />} />
    <Route path=":category" element={<Category />} />
    <Route path=":category/:productId" element={<ProductDetail />} />
    <Route path="trending" element={<Trending />} />
  </Route>
</Routes>

Эдгээр жишээнүүд дэх index prop нь тухайн path сегментийн default route-ийг илэрхийлдэг. Тиймээс Home component нь root path (/) дээр харагдах бол ProductsHome component нь products path дээр харагдана.

Та мөн зарим route-уудыг өөр route дотор nested байдлаар байрлуулж байгааг анзаарсан байж магадгүй:

<Route path="products">
  <Route path="trending" element={<Trending />} />
</Route>

Энэ нь child route-ийн path нь parent route-ийн path дээр нэмэгдэж (append) үүснэ гэсэн үг. Тиймээс энэ жишээнд trending products-ийн path нь products/trending болно.

Хэрэв path нь colon (:) тэмдгээр эхэлбэл энэ нь route доторх dynamic segment-ийг илэрхийлнэ:

<Route path=":category" element={<Category />} />

Энэ жишээнд бид category гэж нэрлэгдэх dynamic segment-тэй байна. Хэрэглэгч products/brass-instruments гэх мэт URL руу шилжихэд view нь Category component болж өөрчлөгдөх бөгөөд та тухайн segment дээр тулгуурлан өгөгдлийг динамикаар татаж болно.

Та dynamic segment-ийн утгыг child component дотор useParams hook ашиглан дараах байдлаар авч болно:

import { useParams } from "react-router";

export default function Category() {
let params = useParams();
{/_ category param-д хандах: params.category _/}
{/_ кодын үлдсэн хэсэг энд орно _/}
}

Dynamic route-ууд нь уян хатан (flexible) бөгөөд дахин ашиглах боломжтой (reusable) component-ууд үүсгэхэд тусалдаг, учир нь URL дахь параметрүүд дээр тулгуурлан өөр өөр контентыг render хийх боломж олгодог. Та боломжит бүх route-уудыг тус бүрээр нь тодорхойлохын оронд dynamic segment-уудыг ашиглан хэрэглэгчийн хүсэлтэд үндэслэн төрөл бүрийн контентыг харуулж болно.
