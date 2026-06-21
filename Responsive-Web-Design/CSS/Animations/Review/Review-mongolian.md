CSS Animation тойм

CSS Animation-ийн үндэс

```
Тодорхойлолт: CSS animation нь JavaScript эсвэл нарийн төвөгтэй програмчлал шаардалгүйгээр веб хуудсанд динамик, харагдахуйц сонирхолтой эффект үүсгэх боломжийг олгодог. Энэ нь элементүүдийг тодорхой хугацааны туршид өөр өөр стилүүдийн хооронд жигд шилжүүлэх арга юм.
@keyframes дүрэм: Энэ дүрэм нь animation-ийн үе шат болон стилүүдийг тодорхойлдог. Animation явагдах явцад элемент ямар стильтэй байхыг зааж өгдөг.
```

<link rel="stylesheet" href="styles.css">
<div class="box">Slide</div>

.box {
width: 120px;
padding: 10px;
background: #0077ff;
color: white;
animation: slide-in 1s ease-in-out;
}

@keyframes slide-in {
from {
transform: translateX(-100%);
}
to {
transform: translateX(0);
}
}

```
animation property: Энэ нь animation хэрэгжүүлэхэд ашиглагддаг товчилсон property юм.
animation-name: Ашиглах @keyframes дүрмийн нэрийг заана.
animation-duration: Animation дуусах хугацааг тодорхойлно.
animation-timing-function: Animation хугацааны явцад хэрхэн өөрчлөгдөхийг тодорхойлно (жишээ нь: ease, linear, ease-in-out).
animation-delay: Animation эхлэхээс өмнөх саатлыг заана.
animation-iteration-count: Animation хэдэн удаа давтагдахыг тодорхойлно.
animation-direction: Animation урагш, хойш эсвэл ээлжлэн тоглогдох эсэхийг тодорхойлно.
animation-fill-mode: Animation эхлэхийн өмнө болон дууссаны дараа элемент ямар стильтэй байхыг заана.
animation-play-state: Animation-ийг түр зогсоох, үргэлжлүүлэх боломжийг олгоно.
```

Accessibility ба prefers-reduced-motion Media Query

```
prefers-reduced-motion Media Query: Animation-тэй холбоотой accessibility-ийн гол асуудлын нэг нь зарим хэрэглэгчдэд таагүй мэдрэмж эсвэл бүр бие махбодын сөрөг нөлөө үзүүлэх явдал юм. Vestibular disorder эсвэл хөдөлгөөнд мэдрэг хүмүүс дэлгэц дээрх хөдөлгөөнөөс болж толгой эргэх, дотор муухайрах, толгой өвдөх зэрэг шинж тэмдэг мэдэрч болно. prefers-reduced-motion media query нь хэрэглэгч системийн түвшинд хөдөлгөөнийг багасгах тохиргоо хийсэн эсэхийг веб хөгжүүлэгчид илрүүлэх боломжийг олгодог.
```

<link rel="stylesheet" href="styles.css">
<button class="animated-element">Hover me</button>

.animated-element {
padding: 10px 16px;
transition: transform 0.3s ease-in-out;
}

.animated-element:hover {
transform: translateX(20px);
}

@media (prefers-reduced-motion: reduce) {
.animated-element {
transition: none;
}
}
