**Media Queries хэрхэн ажилладаг вэ, мөн түгээмэл Media Type болон Feature-үүд юу вэ?**

**Media queries** нь responsive web design-ийн үндсэн хэсэг бөгөөд хөгжүүлэгчдэд хэрэглэгчийн төхөөрөмж эсвэл browser-ийн шинж чанарт үндэслэн өөр өөр style хэрэглэх боломж олгодог. Энэ нь контентыг өөрчлөхгүйгээр, харин **харагдах байдал (presentation)**-ыг төхөөрөмжөөс хамааран өөрчлөх боломжийг олгодог.

Media query нь үндсэндээ **media type** болон тодорхой нөхцөл шалгах **expression**-оос бүрддэг. Хэрэв тухайн нөхцөл үнэн байвал, түүнд хамаарах CSS style-ууд хэрэгжинэ. Энэ механизм нь дэлгэцийн хэмжээ, нягтрал, төхөөрөмжийн боломж зэргээс хамааран өөрчлөгдөх responsive дизайн бүтээх боломжийг олгодог.

CSS дахь media query-ийн үндсэн бүтэц дараах байдалтай байдаг:

```css
@media mediatype and (feature: value) {
  /* CSS rules go here */
}
```

Энд:

* **mediatype** нь query ямар төрлийн төхөөрөмжид үйлчлэхийг заана
* **feature: value** нь style хэрэгжих нөхцөлийг тодорхойлно

---

# Media Types

**Media type** нь төхөөрөмжийн ерөнхий ангиллыг илэрхийлдэг. Хамгийн түгээмэл media type-ууд:

* **all** – бүх төрлийн төхөөрөмжид тохиромжтой. Хэрэв media type заагаагүй бол default нь энэ байдаг.
* **print** – хэвлэх материал болон print preview дээр ашиглагддаг.
* **screen** – дэлгэцтэй төхөөрөмжүүдэд зориулагдсан.

Өмнө нь **handheld**, **tv** зэрэг media type байсан боловч одоо ихэнх нь **deprecated** болсон. Одоо төхөөрөмжийг илүү нарийн тодорхойлохын тулд **media feature** ашигладаг.

---

# Media Features

**Media feature** нь төхөөрөмжийн тодорхой шинж чанарыг илэрхийлдэг. Хамгийн түгээмэл feature-үүд:

### width болон height

Энэ нь viewport-ийн өргөн болон өндрийг илэрхийлдэг. Ихэвчлэн **min-** болон **max-** prefix ашиглан range query хийдэг.

```css
@media screen and (min-width: 768px) {
  /* Styles for screens at least 768px wide */
}
```

---

### aspect-ratio

Viewport-ийн өргөн ба өндрийн харьцааг илэрхийлдэг.

```css
@media screen and (aspect-ratio: 16/9) {
  /* Styles for screens with a 16:9 aspect ratio */
}
```

---

### orientation

Төхөөрөмж **landscape** эсвэл **portrait** байрлалтай эсэхийг шалгана.

```css
@media screen and (orientation: landscape) {
  /* Styles for landscape orientation */
}
```

---

### resolution

Төхөөрөмжийн дэлгэцийн нягтралыг илэрхийлнэ. Үүнийг **dpi** эсвэл **dpcm** нэгжээр хэмждэг.

```css
@media screen and (min-resolution: 300dpi) {
  /* Styles for high-resolution screens */
}
```

---

### hover

Үндсэн input төхөөрөмж element дээр hover хийх боломжтой эсэхийг шалгана.

```css
@media (hover: hover) {
  /* Styles for devices that support hover */
}
```

---

### prefers-color-scheme

Хэрэглэгч **light** эсвэл **dark theme** сонгосон эсэхийг илрүүлнэ.

```css
@media (prefers-color-scheme: dark) {
  /* Styles for dark mode */
}
```

---

# Нөхцлүүдийг хослуулах

Media query-д олон нөхцөлийг **logical operator** ашиглан хослуулж болно.

**and** operator:

```css
@media screen and (min-width: 768px) and (orientation: landscape) {
  /* Styles for landscape screens at least 768px wide */
}
```

**Comma ашиглах (OR operator шиг ажиллана):**

```css
@media screen and (min-width: 768px), print {
  /* Styles for screens ≥768px OR print */
}
```

---

# Cascade болон Media Queries

Media query нь CSS-ийн **specificity**-г нэмэгдүүлдэггүй. Энэ нь зөвхөн нөхцөлт style-уудыг **group** хэлбэрээр зохион байгуулдаг. Тиймээс CSS-ийн **cascade дүрэм** хэвийн ажилласаар байдаг.

---

# Media Queries ашиглан Responsive Layout хийх

Практикт media query-г ихэвчлэн responsive layout бүтээхэд ашигладаг.

Түгээмэл арга нь **mobile-first** design юм. Энэ нь эхлээд mobile төхөөрөмжид зориулсан style тодорхойлж, дараа нь том дэлгэцүүдэд зориулж style нэмдэг.

```html
<link rel="stylesheet" href="styles.css">

<div class="container">
  <p>Lorem ipsum dolor sit amet...</p>
  <p>Sed nisi. Nulla quis sem...</p>
  <p>Mauris massa. Vestibulum...</p>
</div>
```

```css
/* Mobile base styles */
.container {
  width: 100%;
  padding: 15px;
}

/* Tablet */
@media screen and (min-width: 768px) {
  .container {
    width: 750px;
    margin: 0 auto;
  }
}

/* Desktop */
@media screen and (min-width: 1024px) {
  .container {
    width: 960px;
  }
}
```

Энэ аргаар mobile төхөөрөмжид тохирсон үндсэн style тодорхойлж, дараа нь илүү том дэлгэцүүдэд layout-ийг өргөжүүлдэг.

---

# Дүгнэлт

Media queries нь CSS-ийн хүчирхэг хэрэгсэл бөгөөд responsive, дасан зохицох веб дизайн бүтээх боломж олгодог. Media type болон media feature-үүдийг зөв ашигласнаар хөгжүүлэгчид олон төрлийн төхөөрөмж болон хэрэглэгчийн тохиргоонд нийцсэн вэб сайт бүтээж чадна.

Веб технологи хөгжихийн хэрээр шинэ media feature-үүд нэмэгдэж байдаг тул эдгээрийг судалж, ашиглаж байх нь илүү **ухаалаг, хэрэглэгчид ээлтэй responsive дизайн** бүтээхэд чухал юм.
