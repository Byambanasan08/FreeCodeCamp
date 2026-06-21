Element.style болон Element.classList ашиглан загварыг хэрхэн өөрчлөх вэ?

Вэб хөгжүүлэлтийн явцад JavaScript файл дотроо HTML элементийн загварыг өөрчлөх шаардлага байнга гардаг. Жишээ нь, хэрэглэгч товчлуур дээр дарах үед цэсийг (menu) нуух эсвэл ил гаргах гэх мэт.

Энэ хичээлээр та `Element.style` болон `Element.classList` шинж чанаруудыг ашиглан загварыг хэрхэн удирдах талаар сурах болно.

#### 1. Element.style шинж чанар

`Element.style` нь тухайн элементийн **inline style**-ийг (HTML таг дотор шууд бичигдсэн загвар) илэрхийлдэг бөгөөд зөвхөн унших боломжтой (read-only) шинж чанар юм. Гэхдээ та үүнийг ашиглан элементийн загварыг авч эсвэл шинээр тохируулж болно.



Жишээ нь, `para` гэсэн ID-тай параграф элемент байна гэж үзье:

```html
<p id="para">This is a paragraph</p>
```

Та `style` шинж чанарыг ашиглан параграфын өнгийг улаан болгож өөрчилж болно:

```javascript
const paraEl = document.getElementById("para");
paraEl.style.color = "red";
```

`style` шинж чанарыг ашиглан `color`, `background-color`, `font-size`, `font-weight` гэх мэт маш олон CSS шинж чанаруудыг тохируулж болно. (Санамж: JavaScript-д `background-color` гэхийн оронд `backgroundColor` гэх мэт camelCase хэлбэрээр бичдэг).

---

#### 2. Element.classList шинж чанар

Загварыг удирдах өөр нэг хүчирхэг арга бол `Element.classList`-ийг ашиглах явдал юм. Энэ нь элементийн классуудыг нэмэх, хасах эсвэл сэлгэх (toggle) боломжийг олгодог.



**Класс нэмэх (add):**
Бид параграф элементэд `highlight` гэсэн класс нэмье. CSS дээр уг класс нь арын дэвсгэрийг шар болгодог:

```css
.highlight {
  background-color: yellow;
}
```

JavaScript дээр `classList.add()` аргыг ашиглан классыг нэмнэ:

```javascript
const paraEl = document.getElementById("para");
paraEl.classList.add("highlight");
```

Мөн та олон классыг нэг дор нэмж болно:
`classList.add("class1", "class2", "class3");`

**Класс устгах (remove):**
Хэрэв та элементийн классыг устгахыг хүсвэл `classList.remove()` аргыг ашиглана:
`classList.remove("highlight");`

**Класс сэлгэх (toggle):**
`classList.toggle()` арга нь тухайн класс байгаа бол устгаж, байхгүй бол нэмдэг. Энэ нь "Toggle Menu" хийхэд хамгийн тохиромжтой арга юм.

Жишээ нь, товчлуур дарах үед цэсийг харуулж, нуух кодыг харцгаая:

```html
<button id="toggle-btn">Toggle Menu</button>
<nav id="menu" class="menu">
  <ul>
    <li>Home</li>
    <li>About</li>
  </ul>
</nav>
```

```css
.menu {
  display: none; /* Эхлээд нууц байна */
  background-color: lightgray;
}

.menu.show {
  display: block; /* .show класс нэмэгдэхэд ил гарна */
}
```

```javascript
const menu = document.getElementById("menu");
const toggleBtn = document.getElementById("toggle-btn");

toggleBtn.addEventListener("click", () => menu.classList.toggle("show"));
```



Хэрэглэгч товчлуур дээр дарахад `.show` класс нэмэгдэж цэс харагдана. Дахин дарахад класс устаж цэс нуугдана.

### Дүгнэлт

`style`, `add()`, `remove()`, болон `toggle()` зэрэг аргуудыг ашигласнаар та JavaScript-ээр элементийн загварыг хялбархан удирдаж, динамик болон интерактив вэб хуудсуудыг бүтээх боломжтой.

---
