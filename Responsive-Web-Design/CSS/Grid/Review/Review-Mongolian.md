### CSS Grid тойм

## CSS Grid үндэс

**Тодорхойлолт:**
**CSS Grid** нь вэб хуудсан дээр **комплекс layout** хийхэд ашиглагддаг **хоёр хэмжээст (2D) layout систем** юм. Grid нь **мөр (rows)** болон **багана (columns)**-аас бүрдэх бөгөөд тэдгээрийн хооронд **зай (gaps)** байдаг.

Grid layout тодорхойлохын тулд `display` property-г **grid** болгоно.

```css
.container {
  display: grid;
}
```

---

## `fr` (Fractional) нэгж

`fr` нэгж нь grid container доторх **сул зайны тодорхой хэсгийг** илэрхийлдэг. Үүнийг **уян хатан grid layout** үүсгэхэд ашиглана.

---

## Grid track-уудын хооронд зай үүсгэх

CSS Grid дээр зай үүсгэх **3 арга** байдаг:

* `column-gap` → багануудын хооронд зай
* `row-gap` → мөрүүдийн хооронд зай
* `gap` → мөр ба баганын зайг нэг дор тохируулна

---

## `grid-template-columns`

Энэ property нь **багануудын хэмжээ болон line нэрийг** тодорхойлдог.

```css
.container {
  display: grid;
  width: 100%;
  grid-template-columns: 30px 1fr;
}
```

---

## `grid-template-rows`

Энэ property нь **мөрүүдийн хэмжээ болон line нэрийг** тодорхойлдог.

---

## `grid-auto-flow`

Энэ property нь **автоматаар байрлах элементүүд grid дээр хэрхэн байрлахыг** тодорхойлдог.

```css
.container {
  display: grid;
  width: 100%;
  grid-auto-flow: column;
}
```

---

## `grid-auto-columns`

Implicit grid-ээр үүссэн багануудын хэмжээг тохируулна.

```css
.container {
  display: grid;
  width: 100%;
  grid-auto-columns: auto;
}
```

---

## `place-items`

Grid container доторх item-уудыг **block болон inline чиглэлд зэрэгцүүлэх** property.

---

## `align-items`

Grid container доторх item-уудын **босоо alignment**-ийг тохируулна.

---

## `repeat()` функц

Track жагсаалтыг **давтаж бичих** боломж олгодог.

Жишээ нь:

```css
.container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
}
```

Энэ нь:

```
1fr 1fr 1fr
```

гэж бичсэнтэй адил.

---

## Explicit Grid

`grid-template-columns` болон `grid-template-rows` ашиглан **developer өөрөө тодорхойлсон grid бүтэц**.

---

## Implicit Grid

Grid-ийн гадна item байрлах үед **browser автоматаар үүсгэдэг мөр болон баганууд**.

---

## `minmax()` функц

Track-ийн **хамгийн бага ба хамгийн их хэмжээг** тохируулдаг.

```css
.container {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-auto-rows: minmax(150px, auto);
}
```

---

## Line-based Placement

Grid бүр **line**-уудтай байдаг.

Item хаана эхлэх, хаана дуусахыг дараах property-уудаар тодорхойлно:

* `grid-column-start`
* `grid-column-end`
* `grid-row-start`
* `grid-row-end`

Мөн shorthand property ашиглаж болно:

* `grid-column`
* `grid-row`

Жишээ:

```css
.element {
  grid-column: 1 / -1;
}
```

Энэ нь элемент **бүх багануудыг дамнан байрлана** гэсэн үг.

---

## `grid-template-areas`

Grid дээр байрлуулах item-уудад **нэр өгч layout үүсгэх** property.

### HTML

```html
<link rel="stylesheet" href="styles.css">

<div class="container">
  <div class="header">Header</div>
  <div class="sidebar">Sidebar</div>
  <div class="main">Main Content</div>
  <div class="footer">Footer</div>
</div>
```

---

### CSS

```css
.container {
  display: grid;
  grid-template-columns: 200px 1fr; 
  grid-template-rows: auto 1fr auto; 
  grid-template-areas:
    "header header"
    "sidebar main"
    "footer footer"; 
  gap: 20px; 
}
```

---

### Header

```css
.header {
  grid-area: header; 
  background-color: #4CAF50;
  padding: 10px;
  color: white;
}
```

### Sidebar

```css
.sidebar {
  grid-area: sidebar;
  background-color: #f4f4f4;
  padding: 10px;
}
```

### Main Content

```css
.main {
  grid-area: main; 
  background-color: #e0e0e0;
  padding: 10px;
}
```

### Footer

```css
.footer {
  grid-area: footer; 
  background-color: #4CAF50;
  padding: 10px;
  color: white;
}
```

---

# CSS Debugging

## DevTools (Developer Tools)

DevTools нь **CSS-ийг бодит цаг дээр шалгах болон өөрчлөх** боломж олгодог.

**Styles pane** дээр:

* тухайн элементэд ашиглагдсан бүх CSS rule
* inherited style
* property-г асаах / унтраах
* утгыг өөрчлөх
* шинэ rule нэмэх

зэргийг хийж болно.

Энэ нь **source code өөрчлөхгүйгээр style туршихад маш хэрэгтэй**.

---

## CSS Validator

Validator нь CSS кодыг **албан ёсны стандарттай харьцуулж алдаа шалгадаг**.

Түгээмэл ашиглагддаг validator:

* **W3C CSS Validator**

---

## Responsive дизайн debug хийх

DevTools дотор **device simulation** байдаг.

Үүнийг ашиглан:

* янз бүрийн **дэлгэцийн хэмжээ**
* **mobile / tablet / desktop**

дээр сайт хэрхэн харагдахыг шалгаж болно.

Энэ нь:

* **breakpoint алдаа**
* **responsive style асуудал**

олох боломжийг олгодог.
