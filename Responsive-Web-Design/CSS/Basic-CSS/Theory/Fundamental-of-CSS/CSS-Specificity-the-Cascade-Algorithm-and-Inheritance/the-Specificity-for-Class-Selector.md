**Class Selector-ын Specificity гэж юу вэ?**

Class selector нь CSS-ийн чухал хэсэг бөгөөд ижил `class` attribute-тэй **олон элементэд нэгэн ижил стиль хэрэгжүүлэх** боломжийг хөгжүүлэгчдэд олгодог.

Ийм учраас class selector нь вэбсайтын хэмжээнд стилийг **уян хатан, үр ашигтай** байдлаар хэрэгжүүлэхэд маш тохиромжтой.

Class selector нь **цэг (`.`)** тэмдэгийн дараа class нэрийг бичих хэлбэртэй байдаг. HTML баримт бичиг доторх **ямар ч элементэд** хэрэглэж болно.

Доорх нь class selector ашигласан жишээ юм:

```html
<link rel="stylesheet" href="styles.css">
<p class="highlight">Example paragraph</p>
```

```css
.highlight {
  color: green;
}
```

Энэ жишээнд `highlight` class-тэй ямар ч элемент байсан, түүний текстийн өнгө ногоон (`green`) болно.

---

### Class selector-ын specificity

Class selector нь **type selector-оос өндөр**, харин **ID selector болон inline style-оос бага specificity**-тэй.

Class selector-ын specificity утга нь:

```
(0, 0, 1, 0)
```

Энэ нь class selector нь:

* type selector-ыг дарж бичиж чадна
* харин ID selector болон inline style-аар дарж бичигдэнэ

гэсэн үг юм.

---

### Class selector-ыг бусад selector-уудтай хослуулах

Class selector-ыг бусад selector-уудтай хослуулснаар **илүү нарийвчилсан дүрэм** үүсгэж болно.

Доорх жишээнд `p` type selector болон class selector-ыг хослуулсан байна:

```html
<link rel="stylesheet" href="styles.css">

<p class="bold-text">Example paragraph</p>
<p class="bold-text">Example paragraph</p>
<p>Another paragraph</p>
<p>Yet another paragraph</p>
```

```css
p.bold-text {
  font-weight: bold;
}
```

Энэ дүрэм нь зөвхөн `bold-text` class-тэй `p` элементүүдэд үйлчилж, тэдгээрийн текстийг тод (`bold`) болгож байна.
