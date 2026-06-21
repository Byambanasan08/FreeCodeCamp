**`!important` keyword гэж юу вэ? Мөн түүнийг ашиглах шилдэг практик юу вэ?**

CSS дэх `!important` keyword нь тухайн стильд **хамгийн өндөр давуу эрх** олгож, ижил property-д өгөгдсөн бусад бүх зарлалуудыг (declaration) дарж хэрэгжихэд ашиглагддаг.

`!important` ашиглагдсан үед selector-ын specificity ямар байх нь хамаагүй болж, браузер заавал тухайн стилийг хэрэгжүүлнэ.

Жишээ нь, дараах HTML `p` элемент inline style-тэй байна гэж үзье:

```html
<p class="para" style="background-color: lightblue; color: black;">
  This is a paragraph.
</p>
```

Энэ жишээнд `p` элемент:

* `background-color`: `lightblue`
* `color`: `black`

гэсэн inline style-тэй байна.

CSS файлд дараах стиль бичигдсэн гэж үзье:

```html
<link rel="stylesheet" href="styles.css">

<p class="para" style="background-color: lightblue; color: black;">
  This is a paragraph.
</p>
```

```css
.para {
  background-color: black;
  color: white;
}
```

Inline style нь class, ID, type selector-оос **өндөр давуу эрхтэй** тул энд `black` дэвсгэр өнгө болон `white` текстийн өнгө **хэрэгжихгүй**.

---

### `!important` ашиглан inline style-ийг дарж бичих

Inline style-ийг ч гэсэн дарж бичихийн тулд `!important` keyword-ыг дараах байдлаар ашиглаж болно:

```html
<link rel="stylesheet" href="styles.css">

<p class="para" style="background-color: lightblue; color: black;">
  This is a paragraph.
</p>
```

```css
.para {
  background-color: black !important;
  color: white !important;
}
```

`!important` keyword нь **CSS утгын дараа**, **`;`-ийн өмнө** бичигддэг.

Ингэснээр тухайн `p` элемент нь:

* хар (`black`) дэвсгэртэй
* цагаан (`white`) тексттэй

болно. Учир нь `!important` ашигласнаар inline style дарж бичигдэж байна.

---

### `!important` ба specificity

`!important` keyword нь **тухайн selector-ын specificity-г өөрчилдөггүй**.

Өөрөөр хэлбэл:

* selector өөрөө илүү нарийвчилсан болдоггүй
* харин `!important`-тай declaration нь **ямар ч specificity-тэй бусад declaration-уудаас давж хэрэгжинэ**

Тиймээс `!important` нь:

* inline style
* ID selector
* class selector
* type selector

гэх мэт бүх зүйлийг дарж чадна.

---

### `!important` ашиглах зөв тохиолдлууд

`!important` keyword-ыг ашиглах **зөв нэг жишээ** нь гуравдагч этгээдийн (third-party) library эсвэл framework-ээс ирсэн CSS-ийг дарж бичих шаардлагатай үед юм. Энэ тохиолдолд та эх CSS кодыг засах боломжгүй байдаг.

---

### Анхаарах зүйл (Best practices)

`!important`-ыг **хэт их ашиглах** нь:

* CSS кодыг ойлгоход хэцүү болгоно
* debugging хийхэд төвөгтэй болгоно
* CSS-ийн байгалийн cascade логикийг эвдэнэ
* санаандгүй, гэнэтийн үр дагавар үүсгэж болзошгүй

Иймээс `!important` keyword-ыг **зөвхөн зайлшгүй шаардлагатай үед**, **боломжит хамгийн бага хэмжээнд** ашиглах нь хамгийн зөв дадал юм.
