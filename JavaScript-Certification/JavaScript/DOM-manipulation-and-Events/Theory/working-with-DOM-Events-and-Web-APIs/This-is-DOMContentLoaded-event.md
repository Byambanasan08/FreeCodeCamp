DOMContentLoaded үйл явдал гэж юу вэ, тэр нь хэрхэн ажилладаг вэ?

`DOMContentLoaded` үйл явдал (event) нь HTML баримт бичиг бүрэн ачаалагдаж, хөрвүүлэгдэж (parsed) дуусах үед өдөөгддөг. Хэрэв танд гаднаас дуудаж буй CSS загварын файлууд эсвэл зургууд байгаа бол `DOMContentLoaded` нь тэдгээрийг ачаалагдаж дуусахыг **хүлээхгүй**. Энэ нь зөвхөн HTML бүтэц бэлэн болохыг л хүлээдэг.

Энэ нь `load` үйл явдлаас ялгаатай юм. `load` үйл явдал нь гадаад CSS, зургууд болон бусад бүх нөөцүүд бүрэн ачаалагдаж дуусахыг хүлээдэг.



`DOMContentLoaded` үйл явдлыг ашиглах үндсэн синтакс:

```javascript
document.addEventListener("DOMContentLoaded", function () {
  console.log("DOM ачаалагдаж дууслаа.");
});
```

DOM бүрэн ачаалагдмагц уг функц ажиллаж, консол дээр "DOM ачаалагдаж дууслаа." гэсэн мессеж хэвлэгдэнэ.

#### Өөр нэгэн жишээ:

Одоо `DOMContentLoaded`-ийг ашиглан зураг солих жишээг авч үзье. Бидэнд HTML дотор нэг зураг байгаа бөгөөд бид түүний `src` болон `alt` атрибутыг өөрчлөх функц бичье:

```html
<h1>DOM ачаалагдахад зураг солих</h1>
<img
  id="example-img"
  src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg"
  alt="Cat relaxing"/>
<script src="index.js"></script>
```

```javascript
function changeImg() {
  const img = document.getElementById("example-img");
  img.src = "https://cdn.freecodecamp.org/curriculum/responsive-web-design-principles/FCCStickers-CamperBot200x200.jpg";
  img.alt = "CamperBot sticker";
  console.log("Зургийг сая солилоо");
}
```

Бид DOM ачаалагдаж байгаа эсэхийг шалгаж, хэрэв ачаалагдаж дуусаагүй байвал `DOMContentLoaded`-ийг сонсох event listener нэмж болно. Хэрэв үйл явдал аль хэдийн өдөөгдсөн байвал `changeImg` функцийг шууд дуудна:

```javascript
if (document.readyState === "loading") {
  // Хэрэв DOM ачаалагдаж байгаа бол хүлээнэ
  document.addEventListener("DOMContentLoaded", changeImg);
} else {
  // Хэрэв аль хэдийн ачаалагдсан бол шууд ажиллуулна
  console.log("DOMContentLoaded аль хэдийн өдөөгдсөн байна");
  changeImg();
}
```



Хэрэв та энэ кодыг ажиллуулаад хуудсаа сэргээвэл (refresh), DOM ачаалагдсаны дараа зураг шинэ зургаар солигдохыг харах болно. Энэ нь маш хурдан тохиолдох хэдий ч зураг солигдох үед бага зэрэг "анивчих" (flicker) мэдрэмж төрж магадгүй.

**Дүгнэлт:**
`DOMContentLoaded` үйл явдал нь зураг болон CSS гэх мэт гадаад нөөцүүд ачаалагдаж дуусахаас өмнө, зөвхөн DOM бүтэц бэлэн болмогц JavaScript кодыг ажиллуулах шаардлагатай үед маш хэрэгтэй байдаг.

---