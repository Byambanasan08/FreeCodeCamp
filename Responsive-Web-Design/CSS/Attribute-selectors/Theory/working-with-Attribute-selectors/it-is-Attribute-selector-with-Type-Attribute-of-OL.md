**type Attribute-тэй Ordered List элементүүдийг Attribute Selector ашиглан хэрхэн сонгох вэ?**

HTML дахь **ordered list** дээр **type attribute** ашиглан дугаарлалтын хэлбэрийг тодорхойлж болно. Жишээлбэл тоон, үсгэн, эсвэл Roman numeral дугаарлалт.

**type attribute** нь **ol (ordered list)** элемент дээр тохируулагддаг бөгөөд дугаарлалтын форматыг удирдана:

* **1** – тоон жагсаалт (1, 2, 3, ...)
* **A** – том үсгээр тэмдэглэсэн жагсаалт (A, B, C, ...)
* **a** – жижиг үсгээр тэмдэглэсэн жагсаалт (a, b, c, ...)
* **I** – том Roman numeral (I, II, III, ...)
* **i** – жижиг Roman numeral (i, ii, iii, ...)

Доорх нь тодорхой **type attribute**-тэй ordered list-ийг **attribute selector** ашиглан сонгох жишээ юм:

```html
<link rel="stylesheet" href="styles.css">
<ol type="A">
  <li>Item 1</li>
  <li>Item 2</li>
</ol>
```

```css
ol[type="A"] {
  color: purple;
  font-weight: bold;
}
```

Энэ жишээнд CSS дүрэм нь **type="A"** буюу **том үсгийн цагаан толгойн дугаарлалт** ашигласан бүх ordered list-д **purple өнгө** болон **bold font weight** хэрэгжүүлнэ.

Үүнтэй адил **жижиг Roman numeral** ашигласан жагсаалтыг сонгож болно. Энэ тохиолдолд **type="i"** ашиглана:

```html
<link rel="stylesheet" href="styles.css">
<ol type="i">
  <li>Item 1</li>
  <li>Item 2</li>
</ol>
```

```css
ol[type="i"] {
  color: green;
}
```

Энэ дүрэм нь **жижиг Roman numeral** ашигласан бүх ordered list-ийн текстийн өнгийг **green** болгоно.

Ordered list-ийг **type attribute** дээр үндэслэн style хийх боломж нь документ доторх жагсаалтын харагдах байдлыг илүү нарийн удирдах боломж олгодог. Ингэснээр контентийн бүтэц болон дугаарлалтын хэлбэрээс хамааран жагсаалтыг өөр өөрөөр тохируулах боломжтой.
