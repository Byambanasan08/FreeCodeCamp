### Grid дотор Track-уудын хооронд хэрхэн зай (gap) үүсгэх вэ?

Өмнөх хичээлүүдэд бид **grid item-уудын хооронд зай үүсгэх** талаар бага зэрэг ярьсан. Энэ хичээлээр **`row-gap`**, **`column-gap`**, болон **`gap`** property-уудыг grid layout дээр хэрхэн ашиглахыг илүү дэлгэрэнгүй үзнэ.

---

### CSS Grid дээрх Track гэж юу вэ?

CSS Grid дээр **track** гэдэг нь **хоёр хөрш grid line-ийн хоорондох зай** юм. Эдгээр grid line-ууд нь CSS Grid ашиглах үед автоматаар үүсдэг.

Энэ тохиолдолд track нь ихэвчлэн **grid layout-ийг бүрдүүлдэг мөр (rows) болон баганууд (columns)**-ыг хэлдэг.

---

### `column-gap` ашиглан багануудын хооронд зай үүсгэх

CSS Grid дээр багануудын хооронд зай үүсгэхийн тулд **`column-gap`** property-г ашиглана.

Энэ property-д дараах утгуудыг ашиглаж болно:

* `px`
* `em`
* `%`
* `normal`

Хэрэв `column-gap` дээр **`normal`** утга ашиглавал:

* **grid layout** дээр → `0`
* **multi-column layout** дээр → `1em`

---

### 4 баганатай grid жишээ

```html id="0wdfe0"
<div class="grid-container">
  <div></div>
  <div></div>
  <div></div>
  <div></div>
</div>
```

CSS:

```html id="jstxd7"
<link rel="stylesheet" href="styles.css">
<div class="grid-container">
  <div></div>
  <div></div>
  <div></div>
  <div></div>
</div>
```

```css id="4seoqm"
.grid-container {
  display: grid;
  height: 100px;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  column-gap: 10px;
}

.grid-container div {
  background-color: darkblue;
}
```

Энд:

* **4 багана** (`1fr 1fr 1fr 1fr`)
* багануудын хооронд **10px зай**

---

### `row-gap` ашиглан мөрүүдийн хооронд зай үүсгэх

Хэрэв мөрүүдийн хооронд илүү зай үүсгэхийг хүсвэл **`row-gap`** property-г ашиглана.

```html id="fr24v3"
<link rel="stylesheet" href="styles.css">
<div class="grid-container">
  <div></div>
  <div></div>
  <div></div>
  <div></div>
</div>
```

```css id="2lbf3i"
.grid-container {
  display: grid;
  grid-template-columns: 1fr 1fr;
  column-gap: 10px;
  row-gap: 30px;
}

.grid-container div {
  height: 100px;
  background-color: darkblue;
}
```

Энэ жишээнд:

* `row-gap: 30px`
* `grid-template-columns: 1fr 1fr`

гэж тохируулсан тул **2 багана × 2 мөртэй grid** үүснэ.

---

### `gap` shorthand property

Мөр болон баганын зайг нэг property-оор бичихийн тулд **`gap`** shorthand ашиглаж болно.

Үндсэн синтакс:

```css
gap: row-value optional-column-value;
```

* **Нэг утга** → мөр ба баганад адилхан хэрэглэнэ
* **Хоёр утга** →

  * эхний утга → мөр
  * хоёр дахь утга → багана

Жишээ:

```html id="9im1o7"
<link rel="stylesheet" href="styles.css">
<div class="grid-container">
  <div></div>
  <div></div>
  <div></div>
  <div></div>
</div>
```

```css id="oscl1a"
.grid-container {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 30px 10px;
}

.grid-container div {
  height: 100px;
  background-color: darkblue;
}
```

Энд:

* **row-gap = 30px**
* **column-gap = 10px**

---

### `gap` property-д ашиглаж болох утгууд

`gap` shorthand property-д дараах утгуудыг ашиглаж болно:

* `%`
* `px`
* `em`
* `calc()`

Гэхдээ **`fr` нэгжийг ашиглах боломжгүй**.

---

### Дүгнэлт

**`row-gap`**, **`column-gap`**, болон **`gap`** property-ууд нь CSS Grid layout дахь элементүүдийн хооронд зайг хянах **уян хатан арга** юм.

Эдгээр property-уудыг ашигласнаар:

* grid layout илүү **цэгцтэй**
* **харагдах байдал сайтай**
* мөр болон баганын хооронд **жигд, тохируулж болох зайтай** болно.
