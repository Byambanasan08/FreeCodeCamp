## CSS Layouts and Effects тойм

### CSS Overflow Property

**Definition:** Overflow гэдэг нь элемент доторх агуулга тухайн контейнерийн хэмжээнээс **хэтэрч (“overflow”) гарсан үед** түүнийг хэрхэн боловсруулахыг тодорхойлдог ойлголт юм. Overflow нь **хоёр хэмжээст (two-dimensional)** байдаг.

* **overflow-x:** x тэнхлэг нь **хэвтээ overflow**-ийг тодорхойлно.
* **overflow-y:** y тэнхлэг нь **босоо overflow**-ийг тодорхойлно.
* **overflow:** `overflow-x` болон `overflow-y`-ийн **shorthand property**.

  * Хэрэв **нэг утга** өгвөл хоёр тэнхлэг хоёул ижил утгыг ашиглана.
  * Хэрэв **хоёр утга** өгвөл эхнийх нь `overflow-x`, хоёр дахь нь `overflow-y` дээр хэрэглэгдэнэ.

```html
<link rel="stylesheet" href="styles.css">
<div class="overflow-box">
  This is very long content that will overflow horizontally and vertically.
  <br />
  This is very long content that will overflow horizontally and vertically.
  <br />
  This is very long content that will overflow horizontally and vertically.
  <br />
  This is very long content that will overflow horizontally and vertically.
  <br />
  This is very long content that will overflow horizontally and vertically.
  <br />
  This is very long content that will overflow horizontally and vertically.
</div>
```

```css
.overflow-box {
  width: 140px;
  height: 70px;
  border: 2px solid black;
  overflow-x: auto;
  overflow-y: auto;
  white-space: nowrap;
}
```

---

# CSS Transform Property

**Definition:** Энэ property нь элементүүдэд **2D эсвэл 3D орон зайд** төрөл бүрийн хувиргалт хийх боломжийг олгодог. Жишээлбэл:

* rotate
* scale
* skew
* translate

### translate() Function

Энэ функц нь элементийг **одоогийн байрлалаас нь шилжүүлэхэд** ашиглагдана.

### scale() Function

Энэ функц нь элементийн **хэмжээг өөрчлөх** боломжийг олгодог.

### rotate() Function

Энэ функц нь элементийг **эргүүлэх** боломжийг олгодог.

### skew() Function

Энэ функц нь элементийг **хазайлгах** боломжийг олгодог.

### Transforms and Accessibility

Хэрэв `transform` ашиглан контентыг **нуух эсвэл ил гаргах** бол тухайн контент **screen reader болон keyboard navigation-д хүртээмжтэй** хэвээр байгаа эсэхийг шалгах хэрэгтэй. Нуугдсан контентыг үнэхээр нуухын тулд `display: none` эсвэл `visibility: hidden` ашиглах хэрэгтэй. Зөвхөн дэлгэцээс хол зөөх нь хангалтгүй.

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <div class="transform-box translate">Translate</div>
  <div class="transform-box scale">Scale</div>
  <div class="transform-box rotate">Rotate</div>
  <div class="transform-box skew">Skew</div>
</div>
```

```css
.container {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 16px;
  flex-wrap: wrap;
}

.transform-box {
  width: 100px;
  height: 100px;
  background: coral;
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
}

/* translate() */
.translate {
  transform: translateX(20px);
}

/* scale() */
.scale {
  transform: scale(1.2);
}

/* rotate() */
.rotate {
  transform: rotate(15deg);
}

/* skew() */
.skew {
  transform: skew(10deg, 5deg);
}
```

---

# The Box Model

**Definition:** CSS box model-д HTML элемент бүр **box**-оор хүрээлэгдсэн байдаг. Энэ box нь дөрвөн бүрэлдэхүүн хэсгээс бүрдэнэ.

* content area
* padding
* border
* margin

### Content Area

Box-ийн **хамгийн дотоод хэсэг** бөгөөд текст эсвэл зураг зэрэг контент байрладаг.

### Padding

Content area болон border хоорондох зай.

### Border

Элементийн **гадаад хүрээ**.

### Margin

Border-ийн гаднах зай бөгөөд бусад элементүүдээс зайг тодорхойлдог.

```html
<link rel="stylesheet" href="styles.css">
<div class="box-model">Content</div>
```

```css
.box-model {
  width: 120px;
  background: lightblue;
  padding: 16px;
  border: 4px solid teal;
  margin: 20px;
  text-align: center;
}
```

---

# Margin Collapse

**Definition:** Зэргэлдээ элементүүдийн **босоо margin** давхцах үед нэг margin болж collapse болдог. Энэ үед **их утгатай margin** ашиглагдана.

Энэ үзэгдэл нь зөвхөн:

* top margin
* bottom margin

дээр үйлчилнэ.

Харин:

* left margin
* right margin

дээр үйлчлэхгүй.

---

# content-box ба border-box

### box-sizing Property

`box-sizing` property нь HTML элементийн **өргөн болон өндөр хэрхэн тооцоологдохыг** тодорхойлдог.

### content-box

Энэ загварт:

* width
* height

нь зөвхөн **content area**-г тодорхойлдог.

Padding, border, margin энэ хэмжээнд багтахгүй.

### border-box

`border-box` ашиглах үед:

* content
* padding
* border

нь width болон height дотор багтдаг.

Margin энэ хэмжээнд багтахгүй.

```html
<link rel="stylesheet" href="styles.css">
<div class="sizing-box content-box">Content-box</div>
<div class="sizing-box border-box">Border-box</div>
```

```css
.sizing-box {
  width: 150px;
  padding: 10px;
  border: 4px solid teal;
  margin-bottom: 10px;
  background: peachpuff;
  text-align: center;
}

.content-box {
  box-sizing: content-box;
}

.border-box {
  box-sizing: border-box;
  background: lightgreen;
}
```

---

# CSS Reset

**Definition:** CSS reset гэдэг нь браузерууд HTML элементүүдэд автоматаар хэрэглэдэг **анхдагч форматчлалыг устгах stylesheet** юм.

Түгээмэл third-party CSS reset:

* sanitize.css
* Normalize.css

---

# CSS Filter Property

**Definition:** Энэ property нь элементүүдэд **график эффектүүд** хэрэглэхэд ашиглагддаг. Жишээлбэл:

* blur
* color shift
* contrast adjustment

### blur()

Элемент дээр **Gaussian blur** хэрэглэнэ.

### brightness()

Элементийн **гэрэлтэлтийг** өөрчилнө.

### contrast()

Элементийн **contrast**-ийг өөрчилнө.

### grayscale()

Зургийг **саарал өнгөтэй** болгоно.

### sepia()

Зургийг **sepia өнгөтэй** болгоно.

### hue-rotate()

Өнгөний тойрог дээр **hue rotation** хийдэг.

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <img class="filter blur" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="Blur" />
  <img class="filter brightness" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="Brightness" />
  <img class="filter contrast" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="Contrast" />
  <img class="filter grayscale" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="Grayscale" />
  <img class="filter sepia" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="Sepia" />
  <img class="filter hue" src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="Hue Rotate" />
</div>
```

```css
.container {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
}

.filter {
  width: 120px;
}

/* blur() */
.blur {
  filter: blur(3px);
}

/* brightness() */
.brightness {
  filter: brightness(130%);
}

/* contrast() */
.contrast {
  filter: contrast(150%);
}

/* grayscale() */
.grayscale {
  filter: grayscale(100%);
}

/* sepia() */
.sepia {
  filter: sepia(100%);
}

/* hue-rotate() */
.hue {
  filter: hue-rotate(90deg);
}
```
