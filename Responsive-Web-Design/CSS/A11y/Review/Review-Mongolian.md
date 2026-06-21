**CSS Accessibility тойм**

---

# Өнгөний контраст шалгах хэрэгслүүд

**WebAIM-ийн Color Contrast Checker:**
Энэ онлайн хэрэгсэл нь таны дизайны foreground болон background өнгийг оруулж, тэдгээр нь **Web Content Accessibility Guidelines (WCAG)** стандартыг хангаж байгаа эсэхийг шууд шалгах боломж олгодог.

**TPGi Colour Contrast Analyzer:**
Энэ нь үнэгүй өнгөний контраст шалгах хэрэгсэл бөгөөд вэбсайт болон аппликэйшнүүд WCAG стандартыг хангаж байгаа эсэхийг шалгах боломж олгодог. Мөн **Color Blindness Simulator** функцтэй бөгөөд өнгө ялгах чадварын асуудалтай хүмүүс таны вэбсайт эсвэл аппликэйшнийг хэрхэн харж байгааг харах боломжийг олгодог.

---

# Accessibility Tree

**Accessibility tree** нь screen reader зэрэг туслах технологиуд вэб хуудсан дахь агуулгыг тайлбарлаж, түүнтэй харилцахад ашигладаг бүтэц юм.

---

# max() Function

**max() function** нь таслалаар тусгаарлагдсан утгуудын дундаас хамгийн их утгыг буцаадаг.

```html id="ojy5g3"
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <img src="https://cdn.freecodecamp.org/curriculum/css-photo-gallery/9.jpg" alt="A cat sitting on a table">
</body>
```

```css id="fjfq3j"
img {
  width: max(250px, 25vw);
}
```

Дээрх жишээнд viewport-ийн өргөн **1000 пикселээс бага** бол зурагны өргөн **250px** байна. Хэрэв viewport-ийн өргөн **1000 пикселээс их** бол зурагны өргөн **25vw** болно. Учир нь **25vw** нь viewport-ийн өргөний **25%**-тай тэнцүү.

---

# CSS болон Accessibility-ийн шилдэг практикууд

**display: none;**
display: none ашиглах үед screen reader болон бусад туслах технологиуд тухайн агуулгад хандаж чадахгүй. Учир нь энэ нь accessibility tree-д орохгүй. Тиймээс энэ аргыг агуулгыг **харагдах байдлаас болон хүртээмжээс бүрэн устгах** шаардлагатай үед л ашиглах хэрэгтэй.

**visibility: hidden;**
Энэ property нь агуулгыг харагдах байдлаар нуудаг боловч document flow-д үлдээдэг, өөрөөр хэлбэл тухайн элемент хуудсан дээр зай эзэлсэн хэвээр байдаг. Гэхдээ эдгээр элементүүд мөн accessibility tree-ээс хасагддаг тул screen reader тэдгээрийг уншихгүй.

**.sr-only CSS class**
Энэ нь агуулгыг харагдах байдлаар нууж, screen reader-д хүртээмжтэй хэвээр үлдээхэд ашиглагддаг түгээмэл техник юм.

```html id="z7n9e2"
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <span>This span element can be read</span>
  <span class="sr-only">This span element can only be read by screen readers</span>
  <p style="display: none">
    This text is hidden with display: none and is NOT accessible to screen readers.
  </p>
  <p style="visibility: hidden">
    This text is hidden with visibility: hidden and is NOT read by screen readers,
    but it still takes up space.
  </p>
</body>
```

```css id="mcd3z3"
.sr-only {
  position: absolute;
  width: 1px;
  height: 1px;
  padding: 0;
  margin: -1px;
  overflow: hidden;
  clip: rect(0, 0, 0, 0);
  white-space: nowrap;
  border: 0;
}
```

---

# scroll-behavior болон хөдөлгөөний тохиргоо

**scroll-behavior: smooth;**
Энэ property нь smooth scrolling буюу жигд гүйлгэх хөдөлгөөнийг идэвхжүүлдэг.

**prefers-reduced-motion feature**
Энэ нь хэрэглэгчийн animation-той холбоотой тохиргоог илрүүлэхэд ашиглагддаг media feature юм.

```html id="fgn2ck"
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <!-- Clicking these links should result in smooth scrolling 
 if the user has not set a preference for reduced motion -->
  <nav>
    <a href="#section1">Section 1</a>
    <a href="#section2">Section 2</a>
    <a href="#section3">Section 3</a>
  </nav>

  <section id="section1">
    <h2>Section 1</h2>
    <p>...</p>
  </section>

  <section id="section2">
    <h2>Section 2</h2>
    <p>...</p>
  </section>

  <section id="section3">
    <h2>Section 3</h2>
    <p>...</p>
  </section>
</body>
```

```css id="s5r8o4"
@media (prefers-reduced-motion: no-preference) {
  * {
    scroll-behavior: smooth;
  }
}
```

Дээрх жишээнд хэрэглэгчийн төхөөрөмж дээр animation-ийг багасгах тохиргоо байхгүй бол smooth scrolling идэвхждэг.

---

# HTML attribute ашиглан агуулгыг нуух

**aria-hidden attribute**
Энэ attribute нь screen reader зэрэг туслах технологи ашигладаг хүмүүст элементийг нуухад ашиглагддаг. Жишээлбэл, утга агуулгагүй гоёлын зурагнуудыг нуухад ашиглаж болно.

**hidden attribute**
Энэ attribute нь орчин үеийн ихэнх browser дээр дэмжигддэг бөгөөд агуулгыг **харагдах байдлаас болон accessibility tree-ээс** хоёулангаас нь нууж өгдөг. Үүнийг JavaScript ашиглан амархан toggle хийж болно.

```html id="c0og2q"
<p aria-hidden>This paragraph is visible for sighted users, but is hidden from assistive technology.</p>
<p hidden>This paragraph is hidden from both sighted users and assistive technology.</p>
<p>This is a normal paragraph</p>
```

---

# placeholder Attribute-ийн Accessibility асуудал

placeholder текст ашиглах нь accessibility-ийн хувьд тийм сайн биш. Ихэнх тохиолдолд хэрэглэгчид placeholder текстийг input талбарт аль хэдийн утга байгаа гэж андуурдаг.
