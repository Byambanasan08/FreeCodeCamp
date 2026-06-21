`list-style` холбоотой property-ууд хэрхэн ажилладаг вэ?

CSS-д `list-style` property нь вэб хуудсан дээрх жагсаалтын харагдах байдлыг удирдахад ашиглагддаг.

Та ordered list (`ol`) эсвэл unordered list (`ul`) ашиглаж байгаа эсэхээс үл хамааран, `list-style` property нь жагсаалтын элементүүд хэрхэн харагдахыг өөрчлөх боломжийг олгодог.

`list-style` нь дараах **гурван property-ийн shorthand** хэлбэр юм:

* `list-style-type`
* `list-style-position`
* `list-style-image`

Эдгээр нь тус бүрдээ жагсаалтын харагдах байдалд өөр өөр үүрэг гүйцэтгэдэг.

---

1. `list-style-type`

`list-style-type` property нь жагсаалтад ашиглагдах **тэмдэг (bullet)** эсвэл **дугаарлалтын хэлбэрийг** тодорхойлдог.

* Unordered list (`ul`) дээр:

  * `disc`
  * `circle`
  * `square`
    гэх мэт тэмдэг ашиглаж болно.

* Ordered list (`ol`) дээр:

  * `decimal`
  * Roman тоо
  * үсгэн тэмдэглэгээ
    зэрэг өөр өөр дугаарлалтын хэлбэр ашиглаж болно.

`list-style-type` ашигласан жишээ:

```html
<ul style="list-style-type: square;">
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

Энэ жишээнд unordered list-ийн bullet тэмдэг **дөрвөлжин (square)** болж өөрчлөгдсөн байна.

`list-style-type` нь эдгээр гурван property дундаас **хамгийн түгээмэл хэрэглэгддэг**, учир нь жагсаалтын тэмдэг эсвэл дугаарлалтын харагдах байдалд шууд нөлөөлдөг.

---

2. `list-style-position`

`list-style-position` property нь bullet эсвэл дугаар нь жагсаалтын контенттой харьцуулахад **хаана байрлахыг** удирдана.

Дараах хоёр утгатай:

* `outside` — анхдагч утга. Bullet эсвэл дугаар нь контентын гадна талд байрлана.
* `inside` — bullet эсвэл дугаар нь контентын дотор байрлаж, текст нь түүнтэй зэрэгцэн ороогдоно.

`list-style-position` ашигласан жишээ:

```html
<ul style="list-style-position: inside;">
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>

<ul style="list-style-position: outside;">
  <li>Item 4</li>
  <li>Item 5</li>
  <li>Item 6</li>
</ul>
```

Энэ жишээнд хоёр өөр unordered list дээр `inside` болон `outside` утгуудыг ашигласан байна.

`list-style-position` нь нэг `li` элемент **олон мөр тексттэй** үед контентын байрлалыг илүү нарийн удирдахад хэрэгтэй байдаг.

---
3.  `list-style-image`

`list-style-image` property нь жагсаалтын bullet тэмдгийн оронд **зураг ашиглах** боломжийг олгодог.

Энэ нь жагсаалтад өвөрмөц, харагдах байдлын хувьд онцгой шийдэл өгөхөд тохиромжтой.

`list-style-image` ашигласан жишээ:

```html
<head>
  <style>
    ul {
      list-style-image: url('https://cdn.freecodecamp.org/platform/universal/freecodecamp-org-gravatar.jpeg');
      list-style-position: inside;
    }
  </style>
</head>
<body>
  <ul>
    <li>Item 1</li>
    <li>Item 2</li>
    <li>Item 3</li>
  </ul>
</body>
```

Энэ жишээнд bullet тэмдгүүдийг freeCodeCamp логогоор сольж, жагсаалтад илүү хувийн өнгө төрх нэмж өгч байна.

`list-style-image` ашиглах үед:

* зураг **жижиг**
* загварт **нийцтэй**

байх ёстой. Хэт том эсвэл нарийн зураг ашиглавал жагсаалт уншихад төвөгтэй болдог.

---

4. `list-style` shorthand

`list-style-type`, `list-style-position`, `list-style-image` гэсэн гурван property-г **нэг `list-style` shorthand property**-д нэгтгэж бичиж болно.

Утгуудын дараалал чухал биш бөгөөд гурвыг нь хамтад нь зааж өгч болно.

Shorthand ашигласан жишээ:

```html
<ul style="list-style: square inside url('https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg');">
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```

Энэ жишээнд:

* bullet нь **дөрвөлжин**
* контентын **дотор байрласан**
* мөн **зураг ашигласан** байна

Хэрэв зураг ачаалагдахгүй эсвэл харагдахгүй бол **fallback** байдлаар `square` bullet ашиглагдана.
