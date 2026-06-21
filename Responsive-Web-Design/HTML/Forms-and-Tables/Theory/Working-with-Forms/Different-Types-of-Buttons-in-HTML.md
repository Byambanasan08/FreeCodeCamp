HTML-д өөр өөр төрлийн button-ууд ямар байдаг вэ, мөн тэдгээрийг хэзээ ашиглах вэ?

**Button элемент** нь идэвхжих үед тодорхой нэг үйлдэл гүйцэтгэхэд ашиглагддаг. Доорх нь `Start Game` гэсэн тексттэй button элементийн жишээ юм:

```html
<button>Start Game</button>
```

Button элементийг ашиглах бусад жишээнд form илгээх, modal харуулах, эсвэл side menu-г нээх/хаах зэрэг орно. Button элемент нь **type атрибут**-тай бөгөөд энэ нь товчлуур идэвхжих үед ямар зан төлөвтэй байхыг удирддаг. Type атрибутын эхний боломжит утга нь **button** юм. Доорх нь `Show Alert` гэсэн тексттэй, button type ашигласан жишээ юм:

```html
<button type="button">Show Alert</button>
```

Анхдагч байдлаар энэ товчлуур дарагдсан ч ямар нэг үйлдэл хийхгүй. Харин JavaScript код нэмж өгснөөр, жишээ нь alert харуулах зэрэг интерактив үйлдэл хийлгэж болно.

Preview цонхон дээр **Show Alert** товчийг дарж alert гарч ирэхийг харна уу. Үүнийг туршихын тулд interactive editor-ийг идэвхжүүлэх шаардлагатай.

**Тэмдэглэл:** Энэхүү интерактив жишээ нь JavaScript ашиглаж байгаа боловч JavaScript кодыг ойлгох шаардлагагүй. Та JavaScript-ийг дараагийн модулиудад сурах болно.

```html
<button type="button">Show Alert</button>
<script src="index.js"></script>
```

```js
const btn = document.querySelector("button");
btn.addEventListener("click", () => alert("You clicked on the alert button"));
```

Type атрибутын дараагийн боломжит утга нь **submit** юм. Доорх нь submit type ашигласан button элементийн жишээ юм:

```html
<form action="">
  <label for="email">Email address:</label>
  <input type="email" id="email" name="email" />
  <button type="submit">Submit form</button>
</form>
```

Энэ form элемент дотор хэрэглэгчийн имэйл хаягийг авах label болон input элементүүд байна. Хэрэглэгч submit товчийг дарахад тэдний өгөгдөл сервер рүү илгээгдэж, цааш боловсруулагдана.

Type атрибутын гурав дахь боломжит утга нь **reset** юм. Доорх нь reset болон submit товчтой form элементийн жишээ юм.

Interactive editor-ийг идэвхжүүлээд preview цонхон дээрх имэйл input талбарт хуурамч имэйл бичнэ үү. Дараа нь reset товчийг дарж талбар дахь өгөгдөл арилж байгааг харна уу.

```html
<form action="">
  <label for="email">Email address:</label>
  <input type="email" id="email" name="email" />
  <button type="reset">Reset form</button>
  <button type="submit">Submit form</button>
</form>
```

Энэ өөрчилсөн жишээнд label болон input элементүүдийг ашиглан хэрэглэгчийн имэйл хаягийг цуглуулж байна. Хэрэглэгч reset товчийг дарахад оруулсан бүх өгөгдөл арилна. Reset товчийг ашиглах нь ихэнхдээ тохиромжгүйд тооцогддог. Учир нь хэрэглэгчид санамсаргүйгээр өгөгдлөө устгах эрсдэлтэй. Мөн form дотор олон товч байрлуулах нь хэрэглэгчийн интерфэйсийг замбараагүй харагдуулах магадлалтай.

HTML-д товч үүсгэх өөр нэг арга нь **input элемент** ашиглах явдал юм. Input элемент нь мөн **type атрибут**-тай бөгөөд боломжит утгууд нь submit, reset, button юм. Доорх нь type-г button болгосон input элементийн жишээ юм:

```html
<input class="start-btn" type="button" value="Start Game" />
<script src="index.js"></script>
```

```js
document.addEventListener("DOMContentLoaded", () => {
  const btn = document.querySelector(".start-btn");
  btn.addEventListener("click", () => {
    const paraEl = document.createElement("p");
    const bodyEl = document.querySelector("body");

    bodyEl.appendChild(paraEl);
    paraEl.textContent = "The game has started!!!";
  });
});
```

**Value атрибут** нь товч дээр харагдах текстийг зааж өгдөг. Тэгвэл input болон button элементүүдийг ашиглахын ялгаа юу вэ? **Input элементүүд** нь void элементүүд тул дотор нь текст зэрэг child node байрлуулах боломжгүй, зөвхөн эхлэх тагтай байдаг. Харин **button элемент** нь илүү уян хатан бөгөөд дотор нь текст, зураг, icon зэрэг олон төрлийн контент оруулах боломжтой.
