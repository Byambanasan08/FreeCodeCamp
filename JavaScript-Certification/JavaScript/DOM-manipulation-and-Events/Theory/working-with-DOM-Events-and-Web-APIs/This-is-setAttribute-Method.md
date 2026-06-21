setAttribute() ашиглан атрибутыг хэрхэн нэмэх вэ?

Та HTML болон CSS төслүүд дээрээ атрибутуудтай ажиллаж байсан байх. Гэхдээ та JavaScript файл дотроо HTML элементүүдэд атрибут нэмж болдог гэдгийг мэдэх үү?

Энэ хичээлээр та `setAttribute()` аргыг ашиглан HTML элементүүдэд хэрхэн атрибут нэмэх талаар сурах болно.

Үндсэн синтакс нь:

```javascript
setAttribute(attribute, value);
```

`setAttribute()` аргыг хэрхэн ашиглахыг илүү сайн ойлгохын тулд хэдэн жишээ авч үзье.



Эхний жишээнд бидэнд HTML дотор `p` элемент байна:

```html
<p id="para">I am a paragraph</p>
```

Класс (class) атрибут нэмэхийн тулд бид эхлээд `getElementById()` аргыг ашиглан тухайн `p` элементэд хандах хэрэгтэй. Дараа нь `setAttribute()` аргыг ашиглан `class` атрибутыг нэмж, утгыг нь `my-class` болгон тохируулж болно.
Бид тухайн HTML элементийг бүх атрибутуудынх нь хамт консол дээр харахын тулд `outerHTML`-ийг ашиглаж байна.

```html
<p id="para">I am a paragraph</p>
<script src="index.js"></script>
```

```javascript
const para = document.getElementById("para");
// "class" нэртэй атрибут нэмж, "my-class" утга оноож байна
para.setAttribute("class", "my-class");

console.log(`${para.outerHTML}`);
```

Хэрэв HTML элемент дээр аль хэдийн атрибут байгаа бол та `setAttribute()` аргыг ашиглан түүний утгыг шинэчилж болно.
Энэ жишээнд бидэнд `my-class` гэсэн класстай `div` элемент байна:

```html
<div class="my-class"></div>
```

Класс атрибутын утгыг `example` болгон шинэчлэхийн тулд бид `setAttribute()` аргыг дахин ашиглаж болно:

```html
<div class="my-class"></div>
<script src="index.js"></script>
```

```javascript
const divEl = document.querySelector(".my-class");
// Одоо байгаа классыг "example" болгон өөрчилж байна
divEl.setAttribute("class", "example");

console.log(`${divEl.outerHTML}`);
```



#### Бодит амьдрал дээрх жишээ:

`setAttribute()` аргыг хэзээ ашиглах вэ?
* Хэрэв та **динамик зургийн цомог (dynamic image gallery)** бүтээж байгаа бол хэрэглэгч жижиг зураг (thumbnail) дээр дарах үед үндсэн зургийн `src` атрибутыг шинэчлэх шаардлага гарч болно.
* Өөр нэг жишээ бол **форм шалгах (form validation)** юм. Оруулах талбарт (input) `required` (заавал бөглөх) эсвэл `minlength` (хамгийн бага урт) зэрэг атрибутуудыг динамикаар нэмэх үед ашиглана.

---

