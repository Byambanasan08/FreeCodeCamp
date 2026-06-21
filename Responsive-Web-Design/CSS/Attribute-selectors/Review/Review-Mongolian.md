**CSS Attribute Selectors тойм**

# Янз бүрийн Attribute Selector болон Link-тэй ажиллах

**Тодорхойлолт:**
Attribute selector нь HTML элементүүдийг **href**, **title** зэрэг attribute дээр нь үндэслэн сонгох боломж олгодог.

```html
<link rel="stylesheet" href="styles.css">
<a href="https://www.freecodecamp.org">Link with href</a>
<a>No href</a>
```

```css
a[href] {
  color: blue;
  text-decoration: underline;
}
```

---

### title Attribute

**title attribute** нь элементтэй холбоотой нэмэлт мэдээллийг өгдөг. Доорх жишээнд title attribute-тэй link-үүдийг сонгож байна.

```html
<link rel="stylesheet" href="styles.css">
<a href="#" title="Tooltip">Link with title</a>
<a href="#">Normal link</a>
```

```css
a[title] {
  font-weight: bold;
  text-decoration: none;
}
```

---

### href болон title attribute хоёуланг нь агуулсан link-үүдийг сонгох

Олон attribute selector-ийг хослуулж ашиглаж болно.

```html
<link rel="stylesheet" href="styles.css">
<a href="#" title="Info">Href + Title</a>
<a href="#">Only href</a>
```

```css
a[href][title] {
  color: green;
}
```

---

### Space-ээр тусгаарлагдсан жагсаалт доторх нэг үгийг сонгох

Тодорхой class үг агуулсан link-үүдийг сонгоно.

```html
<link rel="stylesheet" href="styles.css">
<a class="link primary">Primary link</a>
<a class="link secondary">Secondary link</a>
```

```css
a[class~="primary"] {
  color: red;
  font-weight: bold;
}
```

---

### Тодорхой prefix-ээр эхэлсэн утгуудыг сонгох

**https://**-ээр эхэлсэн link-үүдийг сонгоно.

```html
<link rel="stylesheet" href="styles.css">
<a href="https://www.freecodecamp.org">HTTPS link</a>
<a href="http://www.freecodecamp.org">HTTP link</a>
```

```css
a[href^="https://"] {
  color: green;
  text-decoration: underline;
}
```

---

### Тодорхой suffix-ээр төгссөн утгуудыг сонгох

**.jpg**-ээр төгссөн link-үүдийг сонгоно.

```html
<link rel="stylesheet" href="styles.css">
<a href="photo.jpg">Image link</a>
<a href="index.html">HTML link</a>
```

```css
a[href$=".jpg"] {
  color: darkgreen;
  text-decoration: underline dotted;
}
```

---

### Attribute утганд тодорхой substring агуулсан элементүүдийг сонгох

Утга дотор **https** агуулсан link-үүдийг сонгоно.

```html
<link rel="stylesheet" href="styles.css">
<a href="https://www.freecodecamp.org">Secure link</a>
<a href="page.html">Local link</a>
```

```css
a[href*="https"] {
  color: teal;
}
```

---

### Дүгнэлт

Эдгээр pattern-ууд нь link-үүдийг attribute болон тэдгээрийн утга дээр үндэслэн **нэгэн жигд style хийхэд** тусалдаг.

---

# lang болон data-lang Attribute-тэй элементүүдийг сонгох

### lang Attribute

**lang attribute** нь HTML-д элемент доторх контентийн хэлийг заахад ашиглагддаг. Ялангуяа олон хэлтэй вэб сайт дээр хэл бүрийг өөр өөрөөр style хийх боломж олгодог.

```html
<link rel="stylesheet" href="styles.css">
<p lang="en">English text</p>
<p lang="fr">French text</p>
```

```css
p[lang="en"] {
  font-style: italic;
}
```

---

### data-lang Attribute

**data-lang** зэрэг custom data attribute-ууд нь элемент дотор нэмэлт мэдээлэл хадгалахад ашиглагддаг. Жишээлбэл текстийн хэл.

```html
<link rel="stylesheet" href="styles.css">
<div data-lang="fr">French content</div>
<div data-lang="en">English content</div>
```

```css
div[data-lang="fr"] {
  color: blue;
}
```

---

# Ordered List болон type Attribute ашиглах

### type Attribute

HTML дахь **ordered list** дээр **type attribute** ашиглан дугаарлалтын хэлбэрийг тодорхойлж болно. Жишээлбэл тоон, үсгэн, эсвэл Roman numeral.

```html
<link rel="stylesheet" href="styles.css">
<ol type="A">
  <li>Alpha</li>
  <li>Beta</li>
</ol>

<ol type="i">
  <li>One</li>
  <li>Two</li>
</ol>
```

```css
/* Том үсгийн цагаан толгойн дугаарлалт */
ol[type="A"] {
  color: purple;
  font-weight: bold;
}

/* Жижиг Roman numeral дугаарлалт */
ol[type="i"] {
  color: green;
}
```
