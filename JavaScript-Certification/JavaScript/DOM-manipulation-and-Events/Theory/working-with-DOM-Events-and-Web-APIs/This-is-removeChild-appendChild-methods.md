# appendChild() болон removeChild() ашиглан DOM-оос зангилааг хэрхэн нэмэх, устгах вэ?

Танд DOM-оос зангилааг нэмэх эсвэл устгах шаардлага гарах үе бишгүй байдаг бөгөөд үүнд зориулсан хэд хэдэн Вэб API-ууд байдаг.
Энэ хичээлээр бид `appendChild()` болон `removeChild()` аргуудыг үзэх болно.

#### 1. appendChild() арга

`appendChild()` арга нь заасан эцэг зангилааны (parent node) хүүхдүүдийн жагсаалтын **хамгийн төгсгөлд** шинэ зангилаа нэмэхэд ашиглагддаг.

`appendChild()` аргын үндсэн синтакс:

```javascript
parentNode.appendChild(newNode);
```

`appendChild()` аргыг хэрхэн ашиглахыг илүү сайн ойлгохын тулд нэгэн жишээ авч үзье.
Энэ жишээнд бидэнд HTML дотор `desserts` гэсэн ID-тай эрэмбэгүй жагсаалт байна. Энэхүү жагсаалтад "Cake" болон "Pie" гэсэн хоёр жагсаалтын элемент (list item) байна:

```html
<ul id="desserts">
  <li>Cake</li>
  <li>Pie</li>
</ul>
```

JavaScript файл дотроос уг жагсаалтад хандахын тулд бид `getElementById()` аргыг ашиглаж болно:

```javascript
const dessertsList = document.getElementById("desserts");
```

Бид `dessertsList` гэсэн хувьсагчид `desserts` ID-тай `ul` элементийн холбоосыг хадгаллаа.
Дараа нь бид `createElement()` аргыг ашиглан шинэ жагсаалтын элемент үүсгэх шаардлагатай:

```javascript
const dessertsList = document.getElementById("desserts");
const listItem = document.createElement("li");
```

Дээрх код нь шинэ жагсаалтын элемент үүсгэж, түүнийг `listItem` гэсэн хувьсагчид хадгална.
Уг зангилааг `ul` элементийн хүүхдүүдийн жагсаалтын төгсгөлд нэмэхийн тулд бид `appendChild()` аргыг ашиглана:



```javascript
const dessertsList = document.getElementById("desserts");
const listItem = document.createElement("li");

dessertsList.appendChild(listItem);
```

Хэрэв та энэ кодыг ажиллуулбал `ul` элементийн хүүхдүүдийн жагсаалтын төгсгөлд шинэ жагсаалтын элемент нэмэгдсэнийг харах болно.

Гэвч нэг асуудал байна: шинэ жагсаалтын элемент маань хоосон байна. Шинэ элементэд текст агуулга нэмэхийн тулд та `textContent` шинж чанарыг ашиглаж болно:

```html
<ul id="desserts">
  <li>Cake</li>
  <li>Pie</li>
</ul>
<script src="index.js"></script>
```

```javascript
const dessertsList = document.getElementById("desserts");
const listItem = document.createElement("li");

listItem.textContent = "Cookies"; // Текст агуулга нэмж байна
dessertsList.appendChild(listItem);
```

Одоо жагсаалт "Cake", "Pie", болон "Cookies" гэж харагдах болно.

---

#### 2. removeChild() арга

DOM-оос зангилааг устгахын тулд `removeChild()` аргыг ашиглаж болно.
`removeChild()` аргын үндсэн синтакс:

```javascript
parentNode.removeChild(childNode);
```

Одоо нэгэн `section` элементээс хамгийн сүүлийн параграф элементийг устгахыг хүссэн жишээг авч үзье:

```html
<section id="example-section">
  <h2>Example sub heading</h2>
  <p>first paragraph</p>
  <p>second paragraph</p>
</section>
```

Бид JavaScript файл дотроос `section` элементэд `getElementById()` ашиглан хандаж болно:

```javascript
const sectionEl = document.getElementById("example-section");
```

`section` элементийн холбоосыг авмагц бид `querySelector()` аргыг ашиглан хамгийн сүүлийн параграф руу хандаж чадна:

```javascript
const sectionEl = document.getElementById("example-section");
const lastParagraph = document.querySelector("#example-section p:last-of-type");
```

Бид `section` доторх хамгийн сүүлийн параграф элементийг сонгохын тулд `:last-of-type` псевдо-классыг ашиглаж байна.
Одоо бидэнд эцэг болон хүүхэд зангилаанууд байгаа тул `removeChild()` аргыг ашиглан сүүлийн параграф элементийг `section`-оос устгаж болно:



```html
<section id="example-section">
  <h2>Example sub heading</h2>
  <p>first paragraph</p>
  <p>second paragraph</p>
</section>
<script src="index.js"></script>
```

```javascript
const sectionEl = document.getElementById("example-section");
const lastParagraph = document.querySelector("#example-section p:last-of-type");

sectionEl.removeChild(lastParagraph);
```

#### Та хэзээ DOM-оос зангилаа нэмэх эсвэл устгах шаардлагатай вэ?

Хэрэв та динамик агуулгатай ажиллаж байгаа бол DOM-оос зангилаа нэмэх, устгах шаардлага гарна. Бодит амьдрал дээрх жишээнүүд гэвэл: **сагсанд бараа нэмэх (shopping carts)**, **хийх ажлын жагсаалт (to-do lists)**, болон **сошиал медиагийн мэдээллийн урсгал (feeds)** зэрэг юм.

---
