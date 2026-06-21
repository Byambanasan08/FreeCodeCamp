CSS Animation гэж юу вэ, хэрхэн ажилладаг вэ?

CSS animation нь JavaScript эсвэл нарийн төвөгтэй програмчлал шаардалгүйгээр веб хуудсанд динамик, харагдахуйц сонирхолтой эффект үүсгэх боломжийг олгодог. Энэ нь элементүүдийг тодорхой хугацааны туршид нэг стильээс нөгөөд жигд шилжүүлэх арга юм.

CSS animation-ийн үндсэндээ хоёр гол бүрэлдэхүүн хэсэг байдаг: @keyframes дүрэм болон animation property.

@keyframes дүрэм нь animation-ийн үе шат болон стилүүдийг тодорхойлдог. Энэ нь animation явагдах явцад тухайн элемент ямар стильтэй байхыг зааж өгдөг.

Жишээ нь:

@keyframes slide-in {
0% {
transform: translateX(-100%);
}
100% {
transform: translateX(0);
}
}

Энэ slide-in нэртэй @keyframes дүрэм нь элементийг зүүнээс баруун тийш шилжүүлэх animation-ийг тодорхойлж байна. Хувиар илэрхийлсэн утгууд нь animation-ийн явцыг илэрхийлэх бөгөөд 0% нь эхлэл, 100% нь төгсгөл юм.

@keyframes animation доторх translateX функц нь элемент дэлгэц дээр гарч ирэх үед түүний хэвтээ байрлалыг удирдаж байна.

Энэ animation-ийг элементэд хэрэгжүүлэхийн тулд animation property-г ашиглана. Доорх жишээнд animation-ийг тасралтгүй давтагдахаар тохируулсан (үр дүнг харахын тулд interactive editor идэвхжүүлэх шаардлагатай):

<link rel="stylesheet" href="styles.css">
<div class="sliding-element">Hello, I slide in!</div>

@keyframes slide-in {
0% {
transform: translateX(-100%);
}
100% {
transform: translateX(0);
}
}

.sliding-element {
animation: slide-in 2s ease-out infinite;
}

Энэ нь slide-in animation-ийг тухайн элементэд 2 секундын хугацаатай, ease-out timing function-оор хэрэглэж байна.

animation property нь үнэндээ хэд хэдэн тусдаа property-гийн товчилсон хэлбэр юм:

animation-name — аль @keyframes дүрмийг ашиглахыг заана.

animation-duration — animation хэдий хугацаанд дуусахыг тодорхойлно.

animation-timing-function — animation цаг хугацааны явцад хэрхэн өөрчлөгдөхийг тодорхойлно (жишээ нь: ease, linear, ease-in-out).

animation-delay — animation эхлэхээс өмнөх саатлыг заана.

animation-iteration-count — animation хэдэн удаа давтагдахыг тогтооно.

animation-direction — animation урагш, хойш эсвэл ээлжлэн тоглогдох эсэхийг тодорхойлно.

animation-fill-mode — animation эхлэхийн өмнө болон дууссаны дараа элемент ямар стильтэй байхыг заана.

animation-play-state — animation-ийг түр зогсоох, үргэлжлүүлэх боломжийг олгоно.

Та илүү нарийн хяналт хийхийн тулд эдгээр property-уудыг тус тусад нь ашиглаж болно:

<link rel="stylesheet" href="styles.css">
<div class="complex-animation">Watch my colors change!</div>

.complex-animation {
animation-name: color-change;
animation-duration: 3s;
animation-timing-function: linear;
animation-delay: 1s;
animation-iteration-count: infinite;
animation-direction: alternate;
}

@keyframes color-change {
0% {
background-color: red;
}
50% {
background-color: blue;
}
100% {
background-color: green;
}
}

Энэ нь элементийн background өнгийг улаан, цэнхэр, ногоон хооронд тасралтгүй өөрчилдөг animation үүсгэнэ.

CSS animation нь элемент дээр hover хийх зэрэг янз бүрийн үйлдлээр идэвхжиж болно:

<link rel="stylesheet" href="styles.css">
<button class="button">Hover over me!</button>

.button {
background-color: blue;
transition: background-color 0.3s;
}

.button:hover {
background-color: red;
}

Энэ жишээ нь transition property ашиглаж байгаа (энэ нь энгийн эффектэд илүү тохиромжтой) боловч CSS ашиглан хэрхэн интерактив, animation бүхий элемент үүсгэж болохыг харуулж байна.

Анхаарах зүйл нь CSS animation хүчирхэг боловч хэтрүүлэн ашиглахгүй байх хэрэгтэй. Хэт их animation нь гүйцэтгэлд сөргөөр нөлөөлөхөөс гадна зарим хэрэглэгчдэд (ялангуяа accessibility шаардлагатай хүмүүс) төвөгтэй байж болно. Иймээс animation-ийг багасгах эсвэл унтраах сонголтыг хэрэглэгчдэд өгөхийг үргэлж бодолцох хэрэгтэй.

CSS animation нь JavaScript-д найдахгүйгээр сонирхолтой, интерактив веб туршлага бүтээх боломжийг олгодог. @keyframes болон animation property-гийн зарчмыг ойлгосноор та веб дизайнаа илүү амьд, гүйцэтгэл сайтай, хүртээмжтэй болгож чадна.
