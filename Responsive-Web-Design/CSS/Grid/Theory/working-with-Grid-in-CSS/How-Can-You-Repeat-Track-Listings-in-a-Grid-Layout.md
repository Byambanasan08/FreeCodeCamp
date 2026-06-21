### Grid Layout дээр Track жагсаалтыг хэрхэн давтаж (repeat) бичих вэ?

Өмнөх хичээлүүдэд бид **`grid-template-columns`** property-г ашиглаж, багануудын хэмжээг **fractional unit (`fr`)** ашиглан тодорхойлж байсан.

Жишээ нь:

```html
<link rel="stylesheet" href="styles.css">
<div class="grid-container">
  <div class="box"></div>
  <div class="box"></div>
  <div class="box"></div>
  <div class="box"></div>
</div>
```

```css
.grid-container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  column-gap: 10px;
}

.box {
  width: 100px;
  height: 100px;
  background-color: darkblue;
}
```

Энэ код **бүрэн зөв** боловч track жагсаалтыг бичих **илүү хялбар арга** байдаг.

---

### `repeat()` функц

**`repeat()` функц** нь багана эсвэл мөрийн track-ийг **давтаж бичих** боломж олгодог.

Энэ функц хоёр үндсэн параметр авна:

1. **repeat count** – хэдэн удаа давтах
2. **track value** – давтах track-ийн утга

---

### `repeat()` ашигласан жишээ

Өмнөх кодыг **`repeat()` функц ашиглан** дараах байдлаар бичиж болно.

```css
.grid-container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  column-gap: 10px;
}

.box {
  width: 100px;
  height: 100px;
  background-color: darkblue;
}
```

Browser дээрх харагдах байдал **өөрчлөгдөхгүй**, гэхдээ код нь:

* **илүү товч**
* **илүү ойлгомжтой**

болно.

---

### `repeat()` функцээр pattern давтах

`repeat()` функц нь зөвхөн нэг утга биш, **олон track-ийн pattern** давтах боломжтой.

Жишээ нь:

```css
.grid-container {
  display: grid;
  grid-template-columns: repeat(2, 20px 1fr);
  column-gap: 10px;
}

.grid-container div {
  height: 100px;
  background-color: darkblue;
}
```

Энэ код дараах бүтэцтэй болно:

```
20px | 1fr | 20px | 1fr
```

Өөрөөр хэлбэл:

* 1-р багана → `20px`
* 2-р багана → `1fr`
* 3-р багана → `20px`
* 4-р багана → `1fr`

Учир нь **`(20px 1fr)` pattern 2 удаа давтагдсан**.

---

### Хэзээ `repeat()` хэрэглэх вэ?

Заримдаа та track бүрийн утгыг **гараар бичих** боломжтой. Гэхдээ `repeat()` функц нь дараах үед маш хэрэгтэй:

* олон **адилхан багана эсвэл мөр** үүсгэх үед
* **давтагдах pattern** ашиглах үед
* кодыг **илүү товч, цэвэр** болгох үед

---

### Дүгнэлт

`repeat()` функц нь CSS Grid дээр:

* track-уудыг **давтаж бичих**
* **pattern үүсгэх**
* кодыг **илүү цэвэр, товч** болгох

маш хэрэгтэй хэрэгсэл юм.
