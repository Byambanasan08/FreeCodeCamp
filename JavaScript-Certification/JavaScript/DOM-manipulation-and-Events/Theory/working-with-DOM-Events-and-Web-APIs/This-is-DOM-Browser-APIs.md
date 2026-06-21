DOM гэж юу вэ, элементүүдэд хэрхэн ханддаг вэ?

DOM-ийн талаар болон энэ нь вэб хөгжүүлэлтэд яагаад тийм чухал болохыг суралцацгаая. **DOM** гэдэг нь **Document Object Model** (Баримт бичгийн объектын загвар) гэсэн үгний товчлол юм. Энэ нь бидэнд HTML баримт бичигтэй харилцах боломжийг олгодог програмчлалын интерфейс юм.

DOM-ийн тусламжтайгаар та вэб хуудас дээрх элементүүдийг нэмэх, өөрчлөх, эсвэл устгах боломжтой. Та бүр элементүүдийг "сонсож", үйл явдалд (events) хариу үйлдэл үзүүлэх замаар вэбсайтаа интерактив (амьд харилцаатай) болгож чадна.

DOM-д HTML баримт бичгийг зангилаануудын мод (tree of nodes) хэлбэрээр дүрсэлдэг. Зангилаа бүр нь HTML баримт бичгийн нэг HTML элементийг төлөөлнө:

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>DOM Example</title>
  </head>
  <body>
    <h1>What is the DOM?</h1>
    <h2>Let's learn about the DOM</h2>
  </body>
</html>
```

Энэ бол бидний жишээний үндсэн DOM бүтцийг харуулсан диаграмм юм:



**Document (Баримт бичиг)**
**========**

**HTML**
**-----**

* **Head**
    * **Title**
* **Body**
    * **H1**
    * **H2**

Мэдээж хэрэг, энэ нь вэб хуудасны HTML бүтцээс хамааран илүү нарийн төвөгтэй, дэлгэрэнгүй байж болно.

HTML баримт бичиг нь DOM-ийн шатлал дахь язгуур зангилаа (root node) юм. Энэ нь нэг хүүхэд зангилаатай бөгөөд тэр нь `html` элемент юм. Бусад бүх зангилаа түүнээс салбарладаг тул энэ нь HTML баримт бичгийн үндсэн (root) элемент болдог.

`html` элемент нь `head` болон `body` гэсэн хоёр хүүхэдтэй.

`head` элемент нь баримт бичгийн талаарх мета өгөгдлийг (metadata) агуулдаг. Энэ нь вэб хуудасны талаарх чухал мэдээллээр хангадаг.

`body` элемент нь вэб хуудасны харагдах контентыг агуулдаг.

Та эдгээр элементүүдэд JavaScript-ээр хандаж, кодондоо ашиглаж, бүр динамикаар өөрчилж чадна. Энэ бол DOM болон вэб API-уудын хүч юм.

JavaScript-д эдгээр элементүүдэд хандахын тулд та `getElementById()` болон `querySelector()` аргуудыг ашиглаж болно. Эдгээр аргууд нь JavaScript ашиглан DOM-той харилцах стандарт арга замаар хангадаг тул вэб API-ууд юм.

`getElementById()`-ийн тусламжтайгаар та заасан `id`-тай HTML элементийг төлөөлөх объектыг авч чадна. HTML баримт бичиг бүрт `id` нь дахин давтагдашгүй (unique) байх ёстой гэдгийг санаарай, тиймээс энэ арга нь зөвхөн нэг Элемент (Element) объектыг буцаана. Эндээс жишээг харна уу:

```javascript
const container = document.getElementById("container");
```

JavaScript-ийн энэ мөр код нь `container` гэсэн id утгатай элементийг авч, тэрхүү объектыг JavaScript-ийн тогтмолд (constant) оноож байна. Та `id`-г аргумент болгон дамжуулахдаа заавал хашилтанд (" ") бичих ёстой. Хэрэв та энэ объектыг консол дээр хэвлэвэл (log) дараах үр дүнг харах болно:

```html
<div id="container">
  <h1>Hello, World!</h1>
  <p>Welcome to learning about the DOM.</p>
</div>
<script src="index.js"></script>
```

```javascript
const container = document.getElementById("container");
console.log(container); 
```

`querySelector()` нь `getElementById()`-аас илүү өргөн хүрээтэй. `querySelector()`-ийн тусламжтайгаар та аргумент болгон дамжуулсан CSS селекторт тохирох HTML баримт бичиг дэх **хамгийн эхний** элементийг авч чадна.

Энэ жишээнд та `section` селекторт тохирох элементийг авах болно:

```html
<section>
  <h2>Section Title</h2>
  <p>This is a section of the webpage.</p>
</section>
<script src="index.js"></script>
```

```javascript
const sectionEl = document.querySelector("section");
console.log(sectionEl);
```

Хэрэв та `querySelector()` ашиглан элементийг класс (class) нэрээр нь сонгохыг хүсвэл класс нэрний өмнө цэг (.) тавих шаардлагатай. Жишээ нь:

```html
<link rel="stylesheet" href="styles.css">
<div class="highlight">
  <p>This content is highlighted.</p>
</div>
<script src="index.js"></script>
```

```css
body {
  background-color: lightgray;
}
.highlight {
  background-color: yellow;
}
```

```javascript
const highlightEl = document.querySelector(".highlight");
console.log(highlightEl);
```

Танд мөн `getElementsByClassName()` болон `querySelectorAll()` зэрэг олон элементийг нэгэн зэрэг сонгох өөр аргууд байдаг. Та тэдгээрийн талаар ирээдүйн хичээлүүдээс илүү ихийг сурах болно.

Вэб API-уудыг ашиглан DOM-ийг үр ашигтайгаар удирдаж сурснаар та хүчирхэг, интерактив вэб аппликейшнүүдийг бүтээж чадна.

---

**Энэ хичээлийн агуулга бүрэн ойлгомжтой байна уу? Эсвэл `querySelector()`-ийн өөр төрлийн селекторуудын (жишээ нь, нэг дор олон класс ашиглах) талаар дэлгэрүүлэх хэрэгтэй юу?**