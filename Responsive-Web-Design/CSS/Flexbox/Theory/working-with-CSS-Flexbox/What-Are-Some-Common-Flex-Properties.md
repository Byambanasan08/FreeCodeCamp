### Түгээмэл Flex Properties юу вэ, тэд хэрхэн ажилладаг вэ?

**Flex properties** гэдэг нь flex container дээр хэрэглэгддэг property-ууд бөгөөд container доторх **child элементүүд (flex items)** хэрхэн байрлах, зай хэрхэн хуваарилагдахыг тодорхойлдог.

Энд хамгийн түгээмэл хэрэглэгддэг property-уудыг авч үзнэ:

* `flex-wrap`
* `justify-content`
* `align-items`

---

# flex-wrap

`flex-wrap` property нь flex container доторх элементүүд **боломжит зайд багтахын тулд хэрхэн шинэ мөр рүү шилжихийг** тодорхойлдог.

`flex-wrap` дараах гурван утгатай байж болно:

* `nowrap`
* `wrap`
* `wrap-reverse`

`nowrap` нь **анхдагч утга** бөгөөд элементүүд шинэ мөр рүү шилжихгүй. Контейнерийн өргөнөөс хэтэрсэн ч элементүүд **агшиж багтана**.

Доорх кодонд гурван `div` элемент байна. Контейнерийн өргөн **200px**, харин гурван `div` элемент нийлээд **240px** (80px × 3) болно.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
main {
  width: 200px;
  display: flex;
  border: 2px solid red;
}

div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

Энд `div` элементүүдийн нийт өргөн контейнерээс их боловч тэд **агшиж багтана**.

Хэрэв контейнерийн өргөнөөс хэтэрсэн үед элементүүдийг **шинэ мөр рүү шилжүүлэх** шаардлагатай бол `flex-wrap: wrap` ашиглана.

```css
main {
  width: 200px;
  display: flex;
  flex-wrap: wrap;
  border: 2px solid red;
}
```

Энэ тохиргоогоор `div` элементүүд контейнерийн өргөнөөс хэтэрвэл **дараагийн мөрөнд шилжин байрлана**.

`wrap-reverse` ашиглавал элементүүд **эсрэг чиглэлд мөр үүсгэнэ**.

---

# flex-flow

`flex-flow` нь дараах хоёр property-ийн **shorthand property** юм.

* `flex-direction`
* `flex-wrap`

Доорх жишээнд `flex-direction`-ийг `column`, `flex-wrap`-ийг `wrap-reverse` болгосон байна.

```css
main {
  width: 200px;
  display: flex;
  flex-flow: column wrap-reverse;
  border: 2px solid red;
}
```

---

# justify-content

`justify-content` property нь flex item-уудыг **main axis дагуу** хэрхэн байрлуулахыг тодорхойлдог.

Хэрэв `justify-content: flex-start` ашиглавал элементүүд **main axis-ийн эхлэл хэсэгт** байрлана.

```css
main {
  display: flex;
  justify-content: flex-start;
  border: 2px solid red;
}
```

Энэ байрлал нь main axis-ийн чиглэлээс хамааран:

* хэвтээ
* босоо

байж болно.

---

# justify-content: flex-end

Хэрэв `justify-content: flex-end` ашиглавал flex item-ууд **main axis-ийн төгсгөлд** байрлана.

```css
main {
  display: flex;
  justify-content: flex-end;
  border: 2px solid red;
}
```

Энэ нь элементүүдийг контейнерийн:

* баруун талд (row үед)
* доод талд (column үед)

байрлуулна.

---

Хамгийн түгээмэл `justify-content` утгууд:

* `flex-start`
* `flex-end`
* `center`
* `space-between`
* `space-around`
* `space-evenly`

---

# align-items

`align-items` property нь flex item-уудыг **cross axis дагуу** хэрхэн тэгшлэхийг тодорхойлдог.

Жишээлбэл:

* `flex-start`
* `flex-end`
* `center`
* `stretch`
* `baseline`

Энэ property нь элементүүдийн **босоо тэгшлэл** (row үед) эсвэл **хэвтээ тэгшлэл** (column үед)-ийг хянадаг.

---

Flexbox property-уудыг ойлгосноор flex container доторх элементүүдийг **зай, чиглэл, байрлалын хувьд уян хатан удирдах** боломжтой болно. Энэ нь responsive веб дизайн бүтээхэд маш чухал хэрэгсэл юм.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
main {
  display: flex;
  justify-content: flex-end;
  border: 2px solid red;
}

div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

Flex item-уудыг **main axis-ийн дагуу төвд байрлуулахын** тулд `justify-content: center` ашиглаж болно.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
main {
  display: flex;
  justify-content: center;
  border: 2px solid red;
}

div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

Элементүүдийг **main axis дагуу жигд зайгаар хуваарилах** шаардлагатай бол `justify-content: space-between` ашиглаж болно. Энэ нь шаардлагатай бол flex item-уудын **хооронд зай нэмнэ**.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
main {
  display: flex;
  justify-content: space-between;
  border: 2px solid red;
}

div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

`justify-content: space-around` нь flex item-уудыг main axis дагуу **жигд байрлуулж**, эхний элементээс өмнө болон сүүлийн элементээс хойш **нэмэлт зай** нэмдэг. Энэ нэмэлт зай нь зэргэлдээ элементүүдийн хоорондох зайны **тал хувьтай тэнцүү** байдаг. Хэрэв зөвхөн нэг элемент байвал тэр элемент **төвд байрлана**.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
main {
  display: flex;
  justify-content: space-around;
  border: 2px solid red;
}

div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

Мөн `justify-content: space-evenly` байдаг. Энэ нь элементүүдийг main axis дагуу **бүрэн жигд** хуваарилна. Элементүүдийн хоорондох зай, мөн эхний болон сүүлийн элементээс өмнө болон дараах зай **яг ижил хэмжээтэй** байна.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
main {
  display: flex;
  justify-content: space-evenly;
  border: 2px solid red;
}

div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

Ингэснээр flex item-уудыг **main axis дагуу жигд хуваарилах** аргыг мэдэж авлаа. Гэхдээ заримдаа элементүүдийг **cross axis дагуу** байрлуулах шаардлагатай болдог. Cross axis нь **main axis-т перпендикуляр** байдаг гэдгийг санаарай.

Үүнийг `align-items` property ашиглан хийж болно. Flex item-уудыг cross axis дагуу **төвд байрлуулахын** тулд flex container дээр `align-items: center` нэмэхэд хангалттай.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
main {
  height: 300px;
  display: flex;
  align-items: center;
  border: 2px solid red;
}

div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

Энэ жишээнд flex item-ууд **cross axis дагуу төвд** байрласан байна. Анхдагчаар cross axis нь **босоо** байдаг. Хэрэв cross axis хэвтээ байвал элементүүд **хэвтээ чиглэлд төвд** байрлана.

Харин `align-items: flex-start` ашиглавал элементүүд **cross axis-ийн эхлэл хэсэгт** байрлана.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
main {
  height: 300px;
  display: flex;
  align-items: flex-start;
  border: 2px solid red;
}

div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

Үүний эсрэг тохиргоо нь `align-items: flex-end` юм. Энэ нь flex item-уудыг **cross axis-ийн төгсгөл хэсэгт** байрлуулна. Энэ нь cross axis босоо эсвэл хэвтээ байхаас хамааран элементүүдийг **доод талд эсвэл баруун талд** байрлуулна.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
main {
  height: 300px;
  display: flex;
  align-items: flex-end;
  border: 2px solid red;
}

div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

Flex item-уудыг **cross axis дагуу сунгахын** тулд `align-items: stretch` ашиглаж болно. Энэ нь автоматаар хэмжээ авдаг элементүүд дээр мөн ажилладаг. Жишээлбэл, тодорхой `width` эсвэл `height` заагаагүй элементүүд, эсвэл зөвхөн minimum хэмжээтэй элементүүд дээр. Flex item-ууд контейнерийн cross axis чиглэлд **контейнерийг дүүргэж сунана**.

```html
<link rel="stylesheet" href="styles.css">

<div class="container">
  <div class="box">One</div>
  <div class="box">Two</div>
  <div class="box">Three</div>
</div>
```

```css
.container {
  display: flex;
  align-items: stretch; 
  border: 2px solid #444;
  height: 200px; 
}

.box {
  width: 100px;           
  border: 1px solid #888;
  background-color: lightblue;
}
```

Эцэст нь, `align-self` property ашиглан **тусгай нэг flex item-д өөр alignment** өгч болно. Энэ нь тухайн элементэд cross axis дагуу өөр байрлал онооно. Жишээлбэл, `align-self: stretch` ашиглан элементийг сунгаж болно.

```html
<link rel="stylesheet" href="styles.css">

<div class="container">
  <div class="box">One</div>
  <div class="box">Two</div>
  <div class="box special">Three</div>
</div>
```

```css
.container {
  display: flex;
  align-items: flex-start; 
  border: 2px solid #444;
  height: 200px; 
}

.box {
  width: 100px;
  border: 1px solid #888;
  background-color: lightblue;
  margin: 4px;
}

.special {
  align-self: stretch; 
  background-color: lightcoral;
}
```

Мөн `align-self: center` ашиглан тухайн элементийг **cross axis дагуу төвд** байрлуулж болно.

```html
<link rel="stylesheet" href="styles.css">

<div class="container">
  <div class="box">One</div>
  <div class="box">Two</div>
  <div class="box special">Three</div>
</div>
```

```css
.container {
  display: flex;
  align-items: flex-start; 
  border: 2px solid #444;
  height: 200px; 
}

.box {
  width: 100px;
  border: 1px solid #888;
  background-color: lightblue;
  margin: 4px;
}

.special {
  align-self: center; 
  background-color: lightcoral;
}
```

`align-self: flex-start` ашиглавал тухайн элементийг **cross axis-ийн эхлэл хэсэгт** байрлуулна.

```html
<link rel="stylesheet" href="styles.css">

<div class="container">
  <div class="box">One</div>
  <div class="box">Two</div>
  <div class="box special">Three</div>
</div>
```

```css
.container {
  display: flex;
  align-items: flex-start; 
  border: 2px solid #444;
  height: 200px; 
}

.box {
  width: 100px;
  border: 1px solid #888;
  background-color: lightblue;
  margin: 4px;
}

.special {
  align-self: flex-start; 
  background-color: lightcoral;
}
```

Эсвэл `align-self: flex-end` ашиглан тухайн элементийг **cross axis-ийн төгсгөлд** байрлуулж болно.

```html
<link rel="stylesheet" href="styles.css">

<div class="container">
  <div class="box">One</div>
  <div class="box">Two</div>
  <div class="box special">Three</div>
</div>
```

```css
.container {
  display: flex;
  align-items: flex-start; 
  border: 2px solid #444;
  height: 200px; 
}

.box {
  width: 100px;
  border: 1px solid #888;
  background-color: lightblue;
  margin: 4px;
}

.special {
  align-self: flex-end; 
  background-color: lightcoral;
}
```

Responsive layout үүсгэхэд ашиглаж болох өөр олон flex property болон утгууд байдаг. Гэхдээ эдгээр нь хамгийн түгээмэл хэрэглэгддэг property-ууд юм. Эдгээр CSS flex property-ууд болон CSS flex model-ийн талаарх мэдлэгийг ашигласнаар та **янз бүрийн төхөөрөмж дээр жигд ажиллах responsive layout** бүтээж чадна.
