### `grid-template-areas` ашиглан Grid дээр item-уудыг хэрхэн байрлуулах вэ?

**`grid-template-areas`** property нь **нэртэй label ашиглан grid layout-ийг визуал байдлаар тодорхойлох** боломж олгодог.

Дараа нь эдгээр label-уудыг **`grid-area`** property ашиглан тодорхой grid item-д холбодог. Эдгээр label-уудыг **grid area names** гэж нэрлэдэг.

---

## `grid-template-areas` үндсэн синтакс

```css
grid-template-areas:
 'header header header'
 'left-sidebar main right-sidebar'
 'footer footer footer';
```

Эндээс ойлгох гол зүйлс:

* **`header`, `main` гэх мэт утгууд** → grid area-ийн нэр
* **string дотор space-ээр тусгаарлагдсан утгууд** → баганууд
* **string бүр** → нэг мөр (row)

Энэ жишээнд **3 × 3 grid** үүссэн байна.

---

## `grid-area` property

Grid template тодорхойлсны дараа **`grid-area`** property ашиглан элементүүдийг тухайн нэртэй хэсэгт байрлуулна.

```css
grid-area: header;
```

Энэ нь тухайн элемент **header хэсэгт байрлана** гэсэн үг.

`grid-area` нь:

* grid item-ийг
* `grid-template-areas` дээр тодорхойлсон хэсэгтэй

**холбодог**.

---

# Holy Grail Layout жишээ

`grid-template-areas` property-ийн чадварыг харуулах хамгийн түгээмэл жишээ бол **Holy Grail layout** юм.

Энэ layout нь дараах бүтэцтэй:

* Header
* Footer
* 2 Sidebar
* Main content

Main content нь **хамгийн чухал хэсэг** бөгөөд sidebar-ууд responsive байдлаар зохицдог.

---

## HTML

```html
<link rel="stylesheet" href="styles.css">
<div class="grid-container">
  <div class="header">
    <h2>Header</h2>
  </div>
  <div class="sidebar-left">
    <h2>Left Sidebar</h2>
  </div>
  <div class="main"><h2>Main Content</h2></div>
  <div class="sidebar-right">
    <h2>Right Sidebar</h2>
  </div>
  <div class="footer">
    <h2>Footer</h2>
  </div>
</div>
```

---

## CSS

```css
.grid-container {
  display: grid;
  grid-template-areas:
    'header header header'
    'sidebar-left main sidebar-right'
    'footer footer footer';
  grid-gap: 10px;
  background-color: #2196F3;
  padding: 10px;
}
```

---

### Header

```css
.header {
  grid-area: header;
  background-color: rgba(255, 255, 255, 0.8);
  padding: 20px;
  text-align: center;
}
```

### Left Sidebar

```css
.sidebar-left {
  grid-area: sidebar-left;
  background-color: rgba(255, 255, 255, 0.8);
  padding: 20px;
  text-align: center;
}
```

### Main Content

```css
.main {
  grid-area: main;
  background-color: rgba(255, 255, 255, 0.8);
  padding: 20px;
  text-align: center;
}
```

### Right Sidebar

```css
.sidebar-right {
  grid-area: sidebar-right;
  background-color: rgba(255, 255, 255, 0.8);
  padding: 20px;
  text-align: center;
}
```

### Footer

```css
.footer {
  grid-area: footer;
  background-color: rgba(255, 255, 255, 0.8);
  padding: 20px;
  text-align: center;
}
```

---

# Чухал анхаарах зүйл

`grid-template-areas` ба `grid-area` property-уудыг **тус тусад нь ашиглах боломжтой**.

* **`grid-template-areas`**

  * grid layout-ийн **визуал бүтэц** тодорхойлно

* **`grid-area`**

  * grid item-ийн **байрлалыг** тодорхойлно
  * эсвэл **row / column байрлал** зааж болно
  * эсвэл **grid-template-areas дээрх нэртэй хэсгийг ашиглаж** болно

---

# Дүгнэлт

`grid-template-areas` ашигласнаар:

* layout **илүү ойлгомжтой**
* код **визуал байдлаар уншихад амар**
* complex layout хийх **маш хялбар**

болдог.
