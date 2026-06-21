**Responsive Web Design тойм**

1.  Responsive Web Design

1.1 Тодорхойлолт: Responsive дизайн нь вэб сайтыг хэрэглэгчийн ашиглаж буй төхөөрөмжийн **дэлгэцийн хэмжээ болон боломжид** тохируулан layout болон контентоо өөрчлөх чадвартай болгох арга юм. Үндсэн зарчим нь **adaptability** буюу дасан зохицох чадвар юм.

1.2  Fluid Grids
Fluid grid нь пиксел зэрэг тогтмол хэмжээсийн оронд **percentage** зэрэг харьцангуй хэмжээс ашигладаг. Ингэснээр контент дэлгэцийн хэмжээнээс хамааран өөрчлөгдөж, дахин байрлана.

1.3  Flexible Images
Flexible image нь өөрийн container-ийн хэмжээнд тохируулан **автоматаар resize** хийгддэг. Ингэснээр жижиг дэлгэц дээр зураг container-оосоо хальж гарахгүй.

---

2.  Media Queries

2.1 Тодорхойлолт: Media query нь төхөөрөмжийн шинж чанарт үндэслэн өөр CSS style хэрэглэх боломж олгодог. Ихэвчлэн **viewport width** дээр үндэслэн ашиглагддаг.

```html
<link rel="stylesheet" href="styles.css">
<p class="mq-example">
The background of this paragraph will change when the viewport is at least 768px wide.
</p>
```

```css
.mq-example {
  padding: 10px;
  border: 1px solid #ccc;
  background-color: lightyellow;
}

@media screen and (min-width: 768px) {
  .mq-example {
    background-color: lightblue;
  }
}
```

---

2.2  Media Types

2.2.1  all

Бүх төхөөрөмжид тохиромжтой. Media type заагаагүй үед default нь **all** байдаг.

2.2.2 print

Хэвлэх материал болон print preview-д зориулсан.

2.2.3 screen

Дэлгэцтэй төхөөрөмжүүдэд зориулсан.

---

2.3 Media Features

2.3.1 aspect-ratio

Viewport-ийн **өргөн ба өндрийн харьцаа**.

```css
@media screen and (aspect-ratio: 16/9) {
  /* 16:9 харьцаатай дэлгэцүүдэд зориулсан style */
}
```

---

2.3.2 orientation

Төхөөрөмж **portrait** эсвэл **landscape** байрлалтай эсэхийг шалгана.

```html
<link rel="stylesheet" href="styles.css">
<p class="orientation-example">
This paragraph's background will change in landscape orientation.
</p>
```

```css
.orientation-example {
  padding: 10px;
  border: 1px solid #ccc;
  background-color: lightyellow;
}

@media screen and (orientation: landscape) {
  .orientation-example {
    background-color: lightgreen;
  }
}
```

---

2.3.3 resolution

Төхөөрөмжийн дэлгэцийн нягтралыг илэрхийлнэ.

```css
@media screen and (min-resolution: 300dpi) {
  /* High resolution дэлгэцүүдэд зориулсан style */
}
```

---

2.3.4 hover

Төхөөрөмж element дээр **hover** хийх боломжтой эсэхийг шалгана.

```html
<link rel="stylesheet" href="styles.css">
<button>Hover over me</button>
```

```css
button {
  padding: 10px 20px;
  font-size: 1rem;
  background-color: lightgray;
  border: 1px solid #999;
  cursor: pointer;
}

@media (hover: hover) {
  button:hover {
    background-color: yellow;
  }
}
```

---
2.3.5 prefers-color-scheme

Хэрэглэгч **light mode** эсвэл **dark mode** сонгосон эсэхийг илрүүлнэ.

---

2.4 Media Queries болон Logical Operators

Media query-д олон нөхцөлийг хослуулж болно.

2.4.1 and – олон feature хослуулах
2.4.2 not – нөхцөлийг үгүйсгэх
2.4.3 only – тодорхой media type-ийг тусгаарлах

```html
<link rel="stylesheet" href="styles.css">
<p class="logical-example">
This paragraph's background will change when the screen is at least 768px wide AND in landscape orientation.
</p>
```

```css
.logical-example {
  padding: 10px;
  border: 1px solid #ccc;
  background-color: lightyellow;
}

@media screen and (min-width: 768px) and (orientation: landscape) {
  .logical-example {
    background-color: lightcoral;
  }
}
```

---

2.5 Common Media Breakpoints

2.5.1 Тодорхойлолт:
Media breakpoints нь layout болон контент өөрчлөгдөх **дизайны тодорхой цэгүүд** юм. Гэхдээ бүх төхөөрөмжийн дэлгэцийн хэмжээг яг тааруулах шаардлагагүй.

```html
<link rel="stylesheet" href="styles.css">
<p class="breakpoint-example">
This text will change size when the viewport width is at least 768px.
</p>
```

```css
.breakpoint-example {
  font-size: 1rem;
  padding: 10px;
  border: 1px solid #ccc;
}

@media screen and (min-width: 768px) {
  .breakpoint-example {
    font-size: 1.125rem;
    background-color: lightblue;
  }
}
```

2.5.2 Түгээмэл breakpoint-ууд

     1. Small devices (smartphones) – 640px хүртэл
     2. Medium devices (tablets) – 641px – 1024px
     3. Large devices (desktops)– 1025px болон түүнээс дээш

---

2.6  Mobile First Approach

2.6.1 Тодорхойлолт: Mobile-first approach нь responsive web design дахь стратеги бөгөөд вэб сайтыг **эхлээд mobile төхөөрөмжид зориулж** бүтээж, дараа нь том дэлгэцүүдэд зориулж сайжруулах арга юм.

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <p>The width of this container changes based on the viewport size.</p>
</div>
```

```css
/* Mobile base style */
.container {
  width: 100%;
  padding: 10px;
  background-color: lightblue;
}

/* Tablet */
@media screen and (min-width: 768px) {
  .container {
    width: 750px;
    margin: 0 auto;
    padding: 20px;
  }
}

/* Desktop */
@media screen and (min-width: 1024px) {
  .container {
    width: 960px;
  }
}
```

Mobile-first арга нь эхлээд **жижиг дэлгэцэд тохирсон үндсэн style** тодорхойлж, дараа нь **media query ашиглан том дэлгэцүүдэд layout-ийг өргөжүүлэх** зарчим дээр суурилдаг.
