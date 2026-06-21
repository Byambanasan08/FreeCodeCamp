CSS Суурь ойлголтын тойм (CSS Fundamentals Review)
---

1. CSS Basics

* **CSS гэж юу вэ?**
  Cascading Style Sheets (CSS) нь HTML элементүүдэд загвар (style) хэрэгжүүлэхэд ашиглагддаг markup хэл юм. CSS-ийг өнгө, арын зураг, байршил (layout) болон бусад олон төрлийн загварчлалд ашигладаг.

* **CSS дүрмийн үндсэн бүтэц (Basic Anatomy of a CSS Rule):**
  CSS дүрэм нь хоёр үндсэн хэсгээс бүрдэнэ: **selector** болон **declaration block**.
  Selector нь ямар HTML элементэд стиль хэрэгжүүлэхийг тодорхойлдог загвар (pattern) юм.
  Declaration block нь тухайн selector-д хамаарах стильүүдийн цуглуулга юм.

CSS дүрмийн ерөнхий синтакс:

```css
selector {
    property: value;
}
```

* **`meta name="viewport"` элемент:**
  Энэ meta элемент нь браузерт хуудсын хэмжээс болон масштабыг өөр өөр төхөөрөмж дээр (ялангуяа гар утас, таблет) хэрхэн удирдах талаар заавар өгдөг.

* **Браузерийн анхдагч стиль (Default Browser Styles):**
  HTML элемент бүрт браузерээс анхнаасаа тодорхой стиль автоматаар өгөгдсөн байдаг. Үүнд ихэвчлэн анхдагч `margin`, `padding` зэрэг орно.

---

2. Inline, Internal, External CSS

2.1 Inline CSS:
  Inline CSS нь HTML элементийн дотор `style` attribute ашиглан шууд бичигддэг. Ихэнх тохиолдолд inline CSS-ийг ашиглахгүй байх нь зүйтэй, учир нь энэ нь responsibility-ийг салгах зарчмыг зөрчдөг.

Inline CSS-ийн жишээ:

```html
<link rel="stylesheet" href="styles.css">
<p style="color: red;">This is a red paragraph.</p>
```

2.2 Internal CSS:
  Internal CSS нь HTML баримт бичгийн `head` хэсэг доторх `<style>` тагийн дотор бичигддэг. Богино жишээ код хийхэд тохиромжтой боловч ихэнх тохиолдолд ашиглах шаардлагагүй.

2.3 External CSS:
  External CSS нь тусдаа `.css` файлд бичигдэж, HTML баримт бичигт `head` хэсэгт байрлах `link` элементээр холбогддог. Ихэнх төсөлд internal эсвэл inline CSS-ээс илүүтэйгээр external CSS ашигладаг.

---

3. `width` болон `height` property-уудтай ажиллах

* **`width` property:**
  Элементийн өргөнийг тодорхойлно. Хэрэв `width`-ийг зааж өгөөгүй бол анхдагчаар `auto` байна. Энэ нь браузер тухайн элементийн өргөнийг контент, эцэг элемент, `display` төрлөөс нь хамааруулан тодорхойлно гэсэн үг.

* **`min-width` property:**
  Элементийн хамгийн бага өргөнийг заана.

* **`max-width` property:**
  Элементийн хамгийн их өргөнийг заана.

* **`height` property:**
  Элементийн өндрийг тодорхойлно. Анхдагчаар мөн `auto` байдаг бөгөөд доторх контентодоо тааруулж өөрчлөгдөнө.

* **`min-height` property:**
  Элементийн хамгийн бага өндрийг заана.

* **`max-height` property:**
  Элементийн хамгийн их өндрийг заана.

---

4. CSS Combinator-уудын төрөл

4.1 Descendant Combinator:
  Тодорхой эцэг элементийн доторх бүх descendant элементүүдийг онилно. Доорх жишээнд `ul` доторх бүх `li` элементүүдийг онилж байна.

```html
<link rel="stylesheet" href="styles.css">
<ul>
    <li>Example item one</li>
    <li>Example item two</li>
    <li>Example item three</li>
</ul>
```

```css
ul li {
    background-color: yellow;
}
```

4.2 Child Combinator (`>`):
  Зөвхөн тухайн эцэг элементийн **шууд хүүхэд** элементүүдийг сонгоно.

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <p>This will get styled.</p>

  <div>
    <p>This will not get styled.</p>
  </div>
</div>
```

```css
.container > p {
  background-color: black;
  color: white;
}
```

4.3 Next-sibling Combinator (`+`):
  Тодорхой элементийн **дараах шууд sibling** элементийг сонгоно.

```html
<link rel="stylesheet" href="styles.css">
<h2>I am a sub heading</h2>

<p>This paragraph element will get a red background.</p>
```

```css
h2 + p {
  background-color: red;
}
```

4.4 Subsequent-sibling Combinator (`~`):
  Тухайн элементийн дараа байрлах **бүх sibling** элементүүдийг сонгоно.

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <p>This will not get styled.</p>
  <ul>
    <li>Example item one</li>
    <li>Example item two</li>
    <li>Example item three</li>
  </ul>
  <p>This will get styled.</p>
</div>
<p>This will not get styled.</p>
```

```css
ul ~ p {
  background-color: green;
}
```

---

5. Inline, Block, Inline-Block түвшний элементүүд

5.1 Inline элементүүд:
  Зөвхөн өөрт хэрэгтэй хэмжээний өргөнийг эзэлж, шинэ мөрөөс эхэлдэггүй. Контентийн урсгал дотор оршдог.
  Түгээмэл inline элементүүд: `span`, `a`, `img`.

5.2 Block элементүүд:
  Шинэ мөрөөс эхэлж, анхдагчаар боломжит бүх өргөнийг эзэлдэг.
  Түгээмэл block элементүүд: `div`, `p`, `section`.

5.3 Inline-block элементүүд:
  `display: inline-block` тохируулснаар inline шиг байрлах боловч block элемент шиг `width`, `height` and hybrid тохируулах боломжтой.

---

6. Margin ба Padding

6.1 `margin` property:
  Элементийн гаднах зайг (border-оос гадна) тодорхойлно.

6.2 `padding` property:
  Элементийн доторх зайг (контент ба border-ын хооронд) тодорхойлно.

6.3 `margin` shorthand:
  1–4 утга авч болно:

  1 утга: бүх тал  (auto)
  2 утга: дээд/доод, баруун/зүүн (margin: 20px 20px;)
  3 утга: дээд, хөндлөн (баруун/зүүн), доод (margin: 20px 30px 20px;)
  4 утга: дээд, баруун, доод, зүүн  (margin: 10px 20px 30px 40px; )

* **`padding` shorthand:**
  `margin`-тай ижил зарчмаар ажиллана.

---

7. CSS Specificity

7.1 Inline CSS Specificity:
  Inline CSS нь хамгийн өндөр specificity-тэй.
  Утга: (1, 0, 0, 0)

7.2 Internal CSS Specificity:
  Inline-аас бага боловч external CSS-ийг дарж чадна.

7.3 External CSS Specificity:
  Байршлын хувьд хамгийн бага давуу эрхтэй ч засвар үйлчилгээний хувьд хамгийн тохиромжтой.

7.4 Universal Selector (`*`):
  Баримт бичиг доторх бүх элементийг онилно.
  Specificity: (0, 0, 0, 0)(a,b,c,d)

7.5 Type Selector:
  Таг нэрээр нь онилно.
  Specificity: (0, 0, 0, 1)

7.6 Class Selector:
  Цэг (`.`) + class нэр.
  Specificity: (0, 0, 1, 0)

7.7 ID Selector:
  `#` + ID нэр.
  Specificity: (0, 1, 0, 0)

7.8 `!important` keyword:  
	Тухайн property-д хамгийн өндөр давуу эрх өгнө. Ашиглахдаа болгоомжтой байх хэрэгтэй.

7.9 Cascade Algorithm:
  Нэг элементэд олон стиль өгөгдөх үед аль нь хэрэгжихийг шийддэг алгоритм.

7.10 CSS Inheritance:
  Эцэг элемент дээр тодорхойлсон стиль хүүхэд элементүүдэд дамжих процесс. Ингэснээр стилийг нэг дор тодорхойлж, олон элементэд хэрэгжүүлэх боломжтой.
