**Pseudo-elements гэж юу вэ, мөн хэрхэн ажилладаг вэ?**

CSS-ийн хамгийн сонирхолтой боломжуудын нэг нь **pseudo-element** ашиглах явдал юм. Энд **“pseudo”** гэдэг нь **“жинхэнэ биш”** гэсэн утгатай. Тиймээс pseudo-element-ууд нь **HTML дотор бодитоор байхгүй**, харин **виртуал(virtual) буюу синтетик(synthetic) элементүүд** юм. Эдгээр нь элементийн тодорхой хэсгийг стильдэх эсвэл нэмэлт HTML бичихгүйгээр контент оруулах боломжийг олгодог.

Pseudo-element ашиглахын тулд түүнийг эх элементийн selector-т **хоёр цэг (::)** ашиглан холбодог. Selector нь **class, ID, эсвэл бусад төрлийн selector** байж болно. Pseudo-element-ийн үндсэн синтакс дараах байдалтай байна:

```id="rrh1p2"
selector::pseudo-element {
  property: value;
}
```

Энэ **давхар цэг (::)** нь pseudo-element-ийг **pseudo-class-аас ялгаж** өгдөг. Pseudo-class нь **нэг цэг (:)** ашигладаг.

Pseudo-element-ууд нь элементийн **контентийн тодорхой хэсгийг стильдэх** эсвэл **контентын өмнө болон дараа шинэ контент оруулах** боломжийг олгодог. Гэхдээ pseudo-element нь **бие даан орших боломжгүй**. Түүнийг холбосон үндсэн элементийг **originating element** гэж нэрлэдэг.

Одоо **::before** болон **::after** pseudo-element-уудын жишээг авч үзье. Нэрнээсээ харахад:

* **::before** нь элементийн контентийн **өмнө контент оруулах** боломжийг олгодог
* **::after** нь элементийн контентийн **дараа контент оруулах** боломжийг олгодог

Доорх нь **button элементтэй жишээ** юм. CSS хэсэгт бид **absolute positioning** болон **::before pseudo-element** ашиглан **button дээрх "Learn More" текстийн өмнө од тэмдэг (star)** нэмнэ. Та **absolute positioning**-ийн талаар дараагийн хичээлүүдэд илүү дэлгэрэнгүй судлах болно.

<link rel="stylesheet" href="styles.css" />
<button class="cta-button">Learn More</button>

--css---

.cta-button {
  background-color: lightseagreen;
  color: white;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
  position: relative;
}

.cta-button::before {
  content: "⭐";
  position: absolute;
  left: 3px;
  top: 8px;
  font-size: 0.75rem;
}

**content property** нь button-ийн текстийн өмнө нэмэхийг хүсэж буй контентыг тодорхойлоход ашиглагддаг. Энэ жишээнд бид **од (star)** тэмдэг нэмэж байна. Та зөвхөн контент нэмэхээс гадна түүнийг **стильдэх** боломжтойг анзаарах болно. Доорх нь **ижил button** дээр **::after pseudo-element** ашигласан жишээ юм.

<link rel="stylesheet" href="styles.css" />
<button class="cta-button">Learn More</button>

--css---
.cta-button {
  background-color: orange;
  border: none;
  padding: 10px 30px;
  cursor: pointer;
  position: relative;
}

.cta-button::after {
  content: '➡️';
  position: absolute;
  right: 5px;
  bottom: 6px;
  font-size: 1.125rem;
  transition: transform 0.3s ease;
}

**::after pseudo-element** доторх **transition property** нь өөрчлөлтийг **0.3 секундийн хугацаанд easing эффекттэйгээр анимэйшн хийхэд** ашиглагддаг. Ингэснээр өөрчлөлт нь **гэнэт биш, харин жигд бөгөөд аажмаар** явагдана. Та **transition property**-ийн талаар дараагийн хичээлүүдэд илүү дэлгэрэнгүй судлах болно.

Мөн **::before** болон **::after pseudo-element** ашиглан нэмсэн контент дээр **pseudo-class** холбож ашиглах боломжтой. Жишээлбэл, нэмсэн контент дээр **hover төлөв** хэрэгжүүлэх боломжтой.

Доорх нь үүний жишээ юм.

<link rel="stylesheet" href="styles.css" />
<button class="cta-button">Learn More</button>

---css---

.cta-button {
  background-color: orange;
  border: none;
  padding: 10px 30px;
  cursor: pointer;
  position: relative;
}

.cta-button::after {
  content: "➡️";
  position: absolute;
  right: 5px;
  bottom: 6px;
  font-size: 1.125rem;
  transition: transform 0.3s ease;
}

.cta-button:hover::after {
  transform: translateX(2px);
}

**Hover төлөвт transform: translateX(2px)** ашигласнаар хэрэглэгч button дээр курсороо аваачих бүрт контент **баруун тийш 2px-ээр шилжинэ**. **::after pseudo-element** доторх **transition property** нь энэ үйл явцыг **0.3 секундийн хугацаанд** гүйцэтгэгдэхийг хангана.

**transform property** нь элементийг **эргүүлэх (rotate), хэлбэрийг гажуулах (skew), хэмжээг өөрчлөх (scale), эсвэл тодорхой чиглэлд шилжүүлэх (translate)** боломжийг олгодог. Та энэ property-ийн талаар дараагийн хичээлүүдэд илүү дэлгэрэнгүй судлах болно.

Дараагийн жишээнд бид **::first-letter pseudo-element**-ийг авч үзнэ. **::first-letter pseudo-element** нь элементийн контентийн **эхний үсгийг** сонгож, түүнийг **тусгайлан стильдэх** боломжийг олгодог.

Доорх нь **paragraph текстийн жишээ** юм. Хэрэв бид **эхний үсгийг стильдэхийг** хүсвэл **::first-letter pseudo-element**-ийг дараах байдлаар ашиглаж болно.

<link rel="stylesheet" href="styles.css" />
<p>freeCodeCamp lets you learn to code without having to pay.</p>

----css---
p::first-letter {
  font-size: 4rem;
}

Сүүлийн жишээнд бид **::marker pseudo-element**-ийг авч үзнэ. Энэ нь **list item-уудын marker**, өөрөөр хэлбэл **bullet эсвэл дугаарлалт**-ыг сонгож стильдэх боломжийг олгодог.

**::marker pseudo-element** нь list marker-уудыг өөрийн **өнгөний схемтэй** тааруулан өөрчлөх замаар вэбсайтын **брэндийн өнгө төрхийг сайжруулах** боломжийг олгодог.

Доорх нь **unordered list** болон **ordered list**-ийн жишээ юм. List item-ийн **marker-ийн өнгө болон хэмжээг өөрчлөхийн** тулд **::marker pseudo-element**-ийг дараах байдлаар ашиглаж болно.


<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Unordered list item 1</li>
  <li>Unordered list item 2</li>
  <li>Unordered list item 3</li>
  <li>Unordered list item 4</li>
</ul>

<ol>
  <li>Ordered list item 1</li>
  <li>Ordered list item 2</li>
  <li>Ordered list item 3</li>
  <li>Ordered list item 4</li>
</ol>

---css---
li::marker {
  color: crimson;
  font-size: 1.5em;
  font-weight: bold;
}

Энэ хичээлд бид **цөөн хэдэн pseudo-element**-ийг л авч үзсэн. Гэвч үүнээс гадна **::placeholder**, **::spelling-error**, **::selection** зэрэг олон pseudo-element байдаг бөгөөд та эдгээрийг **өөрөө бие даан судлахыг** зөвлөж байна.

