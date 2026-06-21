# Lists, Links, Background болон Borders – Тойм

## List Styling

### line-height Property

**line-height** property нь текстийн мөрүүдийн хооронд зай үүсгэхэд ашиглагддаг.

line-height property-д дараах утгуудыг ашиглаж болно:

* **normal** түлхүүр үг
* **тоон утга**
* **percentage**
* **уртын нэгжүүд** (жишээ нь **em unit**)

---

### list-style-type Property

**list-style-type** property нь list item-ийн marker (жагсаалтын тэмдэг)-ийг тодорхойлоход ашиглагддаг.

Зөвшөөрөгдөх утгуудын жишээ:

* **circle**
* **disc**
* **decimal**

Доорх нь **list-style-type** ашиглан bullet style өөрчилсөн жишээ юм.

```html id="huq3xe"
<link rel="stylesheet" href="styles.css">
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css id="tk8bbh"
ul {
  list-style-type: square;
}
```

---

### list-style-position Property

**list-style-position** property нь list marker-ийн байрлалыг тохируулахад ашиглагддаг.

Зөвшөөрөгдөх хоёрхон утга байдаг:

* **inside**
* **outside**

Доорх жишээ нь **inside** болон **outside** утгуудын ялгааг харуулж байна.

```html id="v7h8kw"
<link rel="stylesheet" href="styles.css">
<ul class="inside-list">
  <li>Item with inside position</li>
  <li>Item with inside position</li>
</ul>
<ul class="outside-list">
  <li>Item with outside position</li>
  <li>Item with outside position</li>
</ul>
```

```css id="6s8vtp"
.inside-list {
  list-style-position: inside;
}

.outside-list {
  list-style-position: outside;
}
```

---

### list-style-image Property

**list-style-image** property нь list item marker болгон **зураг ашиглах** боломжийг олгодог.

Түгээмэл хэрэглээ нь **url function** ашиглан хүчинтэй зургийн байршлыг заах явдал юм.

---

# Margin ашиглан List Item-үүдийн хооронд зай үүсгэх

* **line-height**-оос гадна **margin** мөн list item-үүдийн хоорондох зайг сайжруулж, уншигдах чадварыг нэмэгдүүлэхэд ашиглагддаг.
* **Margins** нь **li элемент бүрийн гадна талд зай үүсгэдэг** бөгөөд list item-үүдийн хоорондох зайг хянах боломж олгодог.
* **margin-bottom** нь list item бүрийн доор зай үүсгэхэд ашиглагддаг.

Жишээлбэл:

```
margin-bottom: 10px;
```

энэ нь list item бүрийн доор **10 пикселийн зай** үүсгэнэ.

Доорх нь **margin-bottom** ашиглан list item-үүдийн хооронд зай үүсгэсэн жишээ юм.

```html id="0bf29m"
<link rel="stylesheet" href="styles.css">
<ul class="list">
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

```css id="8h3x3a"
.list li {
  margin-bottom: 20px;
}
```

---

# Links Styling

### pseudo-class

**pseudo-class** нь selector дээр нэмэгддэг түлхүүр үг бөгөөд тодорхой **төлөв (state)**-тэй элементүүдийг сонгон style хийх боломж олгодог.

Түгээмэл төлөвүүд:

* **:hover**
* **:visited**
* **:focus**

---

### :link pseudo-class

**:link pseudo-class** нь хэрэглэгч тухайн холбоосыг хараахан нээгээгүй үед ашиглагддаг link-үүдийг style хийхэд хэрэглэгддэг.

Доорх нь **:link pseudo-class** ашигласан жишээ юм.

```html id="rkjl1s"
<link rel="stylesheet" href="styles.css">
<a href="/">Example link</a>
```

```css id="gqvghb"
a:link {
  color: red;
}
```

---

### :visited pseudo-class

**:visited pseudo-class** нь хэрэглэгч өмнө нь нээж байсан link-үүдийг style хийхэд ашиглагддаг.

---

### :hover pseudo-class

**:hover pseudo-class** нь хэрэглэгч элемент дээр **хулганаа байрлуулж байх үед** style хийхэд ашиглагддаг.

Доорх нь **:hover pseudo-class** ашигласан жишээ юм.

```html id="9a32go"
<link rel="stylesheet" href="styles.css">
<a href="/">Hover over me!</a>
```

```css id="vup3yg"
a:hover {
  color: green;
  text-decoration: underline;
}
```

---

### :focus pseudo-class

**:focus pseudo-class** нь элемент **focus авсан үед** style хийхэд ашиглагддаг.

Жишээлбэл:

* **input**
* **select**

зэрэг элементүүд дээр хэрэглэгч **click хийх эсвэл tab ашиглан focus өгөх** үед энэ төлөв идэвхждэг.

Доорх нь **:focus pseudo-class** ашигласан жишээ юм.

```html id="4tzzq0"
<link rel="stylesheet" href="styles.css">
<a href="/">Example link</a>
```

```css id="yshwhn"
a:focus {
  outline: 2px solid orange;
}
```

---

### :active pseudo-class

**:active pseudo-class** нь хэрэглэгч элемент дээр **идэвхжүүлэх үйлдэл хийсэн үед** style хийхэд ашиглагддаг.

Түгээмэл жишээ нь хэрэглэгч **button дээр дарах үед** юм.

Доорх нь **:active pseudo-class** ашигласан жишээ юм.

```html id="ep21aa"
<link rel="stylesheet" href="styles.css">
<a href="/">Click me!</a>
```

```css id="u3kjqi"
a:active {
  color: pink;
}
```
# Background болон Borders-тэй ажиллах

### background-size Property

**background-size** property нь элементэд ашиглагдах background-ийн хэмжээг тохируулахад ашиглагддаг. Түгээмэл утгууд нь:

* **cover** — background зураг элементийг бүхэлд нь дүүргэнэ
* **contain** — background зураг элементийн дотор багтах хэмжээнд таарна

**background-size: contain** ашигласан жишээ:

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    background-size: cover;
    background-repeat: no-repeat;
    min-height: 100px;
  }
</style>
```

---

### background-repeat Property

**background-repeat** property нь background зургуудыг хэвтээ болон босоо тэнхлэгийн дагуу хэрхэн давтахыг тодорхойлоход ашиглагддаг.

background-repeat-ийн default утга нь **repeat** бөгөөд зураг **хэвтээ болон босоо чиглэлд хоёуланд нь давтагдана**.

Мөн **no-repeat** утгыг ашиглан зураг **давтагдахгүй** байхаар тохируулж болно.

**background-repeat: no-repeat** ашигласан жишээ:

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    background-size: contain;
    background-repeat: no-repeat;
    min-height: 100px;
  }
</style>
```

---

### background-position Property

**background-position** property нь background зураг **хаана байрлахыг** тодорхойлоход ашиглагддаг.

Энэ property-г дараах утгуудтай ашиглаж болно:

* тодорхой **length**
* **percentage**
* түлхүүр үгс: **top, bottom, left, right, center**

**background-position** ашигласан жишээ:

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center top;
    min-height: 100px;
  }
</style>
```

---

### background-attachment Property

**background-attachment** property нь background зураг **контенттой хамт гүйлгэх эсэх** эсвэл **нэг байрлалд тогтмол байх эсэхийг** тодорхойлдог.

Гол утгууд нь:

* **scroll (default)** — background зураг контенттой хамт гүйлгэнэ
* **fixed** — background зураг дэлгэц дээр тогтмол байрлана

---

### background-image Property

**background-image** property нь элементийн background зураг тохируулахад ашиглагддаг.

Та нэгэн зэрэг **олон background зураг** тохируулж болох бөгөөд дараах функцуудыг утга болгон ашиглаж болно.

* **url**
* **radial-gradient**
* **linear-gradient**

**background-image** ашигласан жишээ:

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    min-height: 100px;
  }
</style>
```

---

### background Property

**background** property нь бүх background property-үүдийг **нэг declaration дотор тохируулах shorthand property** юм.

Жишээ:

```
background: no-repeat url("example-url-goes-here");
```

**background shorthand property** ашигласан жишээ:

```html
<style>
  body {
    background: center top no-repeat url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    min-height: 100px;
  }
</style>
```

---

### Background болон Foreground өнгийн сайн Contrast

Background болон foreground өнгүүдийн хооронд **сайн contrast** байх нь текстийг **уншихад ойлгомжтой** байлгахад маш чухал.

**Web Content Accessibility Guidelines (WCAG)** дараах хамгийн бага contrast ratio-г зөвлөдөг:

* **Ердийн текст: 4.5:1**
* **Том текст: 3:1**

---

# Borders

### border-top Property

**border-top** property нь элементийн **дээд талын border**-ийг тохируулахад ашиглагддаг.

```
border-top: 3px solid blue;
```

Энэ нь элементийн дээд талд **3 пиксел өргөнтэй, тасралтгүй хөх border** тавина.

---

### border-right Property

**border-right** property нь элементийн **баруун талын border**-ийг тохируулахад ашиглагддаг.

```
border-right: 2px solid red;
```

Энэ нь баруун талд **2 пиксел өргөнтэй улаан border** үүсгэнэ.

---

### border-bottom Property

**border-bottom** property нь элементийн **доод талын border**-ийг тохируулахад ашиглагддаг.

```
border-bottom: 1px dashed green;
```

Энэ нь доод талд **1 пиксел өргөнтэй тасалдсан ногоон border** үүсгэнэ.

---

### border-left Property

**border-left** property нь элементийн **зүүн талын border**-ийг тохируулахад ашиглагддаг.

```
border-left: 4px dotted orange;
```

Энэ нь зүүн талд **4 пиксел өргөнтэй цэгэн улбар шар border** үүсгэнэ.

---

### Individual border property ашигласан жишээ

```html
<link rel="stylesheet" href="styles.css">
<div class="bordered-box">Box with different borders</div>
```

```css
.bordered-box {
  border-top: 3px solid blue;
  border-right: 2px solid red;
  border-bottom: 1px dashed green;
  border-left: 4px dotted orange;
  padding: 20px;
}
```

---

### border Property

**border** property нь border-ийн **өргөн, стиль, өнгө**-ийг нэг дор тохируулах shorthand property юм.

```
border: 1px solid black;
```

Энэ нь **1 пиксел өргөнтэй хар border** үүсгэнэ.

**border shorthand property** ашигласан жишээ:

```html
<link rel="stylesheet" href="styles.css">
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute cat lying on its back.">
```

```css
img {
  border: 2px solid red;
}
```

---

### border-radius Property

**border-radius** property нь border-д **дугуй булан** үүсгэхэд ашиглагддаг.

**border-radius** ашигласан жишээ:

```html
<link rel="stylesheet" href="styles.css">
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute cat lying on its back.">
```

```css
img {
  border: 2px solid black;
  border-radius: 10px;
}
```

---

### border-style Property

**border-style** property нь border-ийн **стилийг** тохируулахад ашиглагддаг.

Зөвшөөрөгдөх зарим утгууд:

* **solid**
* **dashed**
* **dotted**
* **double**

Өөр өөр **border-style** ашигласан жишээ:

```html
<link rel="stylesheet" href="styles.css">
<div class="solid-border">Solid border</div>
<div class="dashed-border">Dashed border</div>
<div class="dotted-border">Dotted border</div>
```

```css
.solid-border {
  border: 3px solid blue;
  margin-bottom: 10px;
  padding: 10px;
}

.dashed-border {
  border: 3px dashed red;
  margin-bottom: 10px;
  padding: 10px;
}

.dotted-border {
  border: 3px dotted green;
  padding: 10px;
}
```

---

# Gradients

### linear-gradient() Function

**linear-gradient()** CSS функц нь **шулуун шугам дагуу олон өнгийн хооронд шилжилт** үүсгэхэд ашиглагддаг.

**linear-gradient()** ашигласан жишээ:

```html
<link rel="stylesheet" href="styles.css">
<div class="linear-gradient"></div>
```

```css
.linear-gradient {
  background: linear-gradient(to right, red, blue);
  height: 40vh;
}
```

---

### radial-gradient() Function

**radial-gradient()** CSS функц нь **тодорхой нэг цэгээс гадагш тархах** (жишээ нь дугуй эсвэл эллипс хэлбэрээр) өнгийн шилжилттэй зураг үүсгэдэг.

**radial-gradient()** ашигласан жишээ:

```html
<link rel="stylesheet" href="styles.css">
<div class="radial-gradient"></div>
```

```css
.radial-gradient {
  background: radial-gradient(circle, red, blue);
  height: 40vh;
}
```
