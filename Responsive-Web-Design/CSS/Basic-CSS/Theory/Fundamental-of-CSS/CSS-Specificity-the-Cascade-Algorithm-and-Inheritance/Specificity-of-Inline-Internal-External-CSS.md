**CSS Specificity гэж юу вэ? Мөн Inline, Internal, External CSS-ийн Specificity**

CSS specificity гэдэг нь **нэг элементэд хэд хэдэн CSS дүрэм зэрэг үйлчлэх боломжтой үед, аль стиль нь хэрэгжихийг шийддэг үндсэн ойлголт** юм.

Specificity-г ойлгосноор хөгжүүлэгчид өөр өөр CSS дүрмүүдийн хооронд үүсэх зөрчлийг зөв шийдэж, хүссэн загварчлал тогтвортой хэрэгжих нөхцөлийг бүрдүүлдэг.

CSS specificity нь **ямар төрлийн selector ашигласнаас** хамаарч тооцоологдоно.

---

1. Inline style – хамгийн өндөр specificity

Хамгийн өндөр specificity-тэй нь **inline style** юм. Энэ нь `style` attribute ашиглан элементийн дээр шууд өгсөн стиль юм.

Дараах жишээнд эхний `p` элемент улаан, бусад `p` элементүүд цэнхэр байна. Учир нь inline style нь `styles.css` файл доторх `p` type selector-оос илүү өндөр specificity-тэй.

```html
<link rel="stylesheet" href="styles.css">

<p style="color: red;">Red paragraph</p>
<p>Other paragraph</p>
<p>Another paragraph</p>
<p>Yet another paragraph</p>
```

```css
p {
  color: blue;
}
```

---

2. ID selector – өндөр specificity

Inline style-ийн дараа **ID selector** хамгийн өндөр specificity-тэй.

```html
<link rel="stylesheet" href="styles.css">

<p id="para">Red paragraph</p>
<p>Other paragraph</p>
<p>Another paragraph</p>
<p>Yet another paragraph</p>
```

```css
#para {
  color: red; 
}

p {
  color: blue;
}
```

---

3. Class, attribute selector, pseudo-class – дунд зэргийн specificity

Дараагийн түвшинд **class selector**, **attribute selector**, болон **pseudo-class** орно.

Жишээ:

* Class selector: `.container`, `.button`
* Attribute selector: `[type="text"]`
* Pseudo-class: `:hover`

Эдгээр нь **дунд зэргийн specificity**-тэй.

> **ТАЙЛБАР:** Pseudo-class-ийн талаар дараагийн хичээлүүдэд дэлгэрэнгүй үзнэ.

Доорх жишээнд:

* Эхний `p` элемент улаан (ID selector хамгийн өндөр)
* `.example-para` класстай элементүүд ногоон
* Үлдсэн `p` элементүүд цэнхэр байна

```html
<link rel="stylesheet" href="styles.css">

<p id="para">Example paragraph</p>
<p class="example-para">Other paragraph</p>
<p class="example-para">Another paragraph</p>
<p>Yet another paragraph</p>
```

```css
#para {
  color: red; 
}

.example-para {
  color: green;
}

p {
  color: blue;
}
```

---

4. Type selector ба pseudo-element – бага specificity

`div`, `h1` зэрэг **type selector** болон `::before`, `::after` зэрэг **pseudo-element**-үүд нь өмнөх бүлгүүдээс **бага specificity**-тэй.

> **ТАЙЛБАР:** Pseudo-element-ийн талаар дараагийн хичээлүүдэд үзнэ.

```html
<link rel="stylesheet" href="styles.css">

<p id="para">Example paragraph</p>
<p>Other paragraph</p>
<p>Yet another paragraph</p>
```

```css
#para {
  color: red; 
}

p {
  color: blue;
}
```

---

5. Universal selector (*) – хамгийн бага specificity

`*` гэж тэмдэглэгддэг **universal selector** нь specificity-ийн хувьд **хамгийн бага**.

Дараах жишээнд бүх элементэд улаан өнгө өгч байгаа мэт харагдавч, ID болон type selector-ууд түүнийг дарж (override) байна. Энэ нь `*` selector specificity маш бага болохыг харуулж байна.

```html
<link rel="stylesheet" href="styles.css">

<p id="para">Example paragraph</p>
<p>Other paragraph</p>
<p>Yet another paragraph</p>
```

```css
* {
  color: red;
}

#para {
  color: green; 
}

p {
  color: blue;
}
```

---
6. Specificity тооцоолох дүрэм

Specificity нь **дөрвөн хэсэгтэй утга** `(a, b, c, d)` хэлбэрээр тооцоологдоно.

* **a**: Inline style (1 эсвэл 0)
* **b**: ID selector-ын тоо
* **c**: Class selector, attribute selector, pseudo-class-ийн тоо
* **d**: Type selector, pseudo-element, universal selector

Жинлэлт:

* Inline style (`a`) – хамгийн өндөр жинтэй
* ID selector (`b`) – дараагийн өндөр жин
* Class / attribute / pseudo-class (`c`) – дунд жин
* Type selector / pseudo-element (`d`) – хамгийн бага жин
* Universal selector (`*`) – **0 оноо**, specificity-д нөлөөлөхгүй

---

7. Inline CSS

Inline CSS нь элементийн дээр шууд өгөгддөг тул **хамгийн өндөр specificity**-тэй.

Specificity утга: **(1, 0, 0, 0)**

```html
<p style="color: red;">This text is red.</p>
```

---

8. Internal CSS

Internal CSS нь HTML-ийн `head` хэсэгт байрлах `<style>` таг дотор бичигддэг.

Inline-аас бага боловч external CSS-ийг дарж чадна.

Доорх жишээнд ID selector ашигласан тул specificity нь **(0, 1, 0, 0)** байна.

```html
<head>
  <style>
    #text {
      color: blue;
    }
  </style>
</head>
<body>
  <div id="text">This text is blue.</div>
</body>
```

Энд inline style эсвэл илүү нарийвчилсан external стиль байхгүй бол текст цэнхэр байна.

---

9. External CSS

External CSS нь `link` элемент ашиглан тусдаа `.css` файлд бичигддэг.

Энэ нь **засвар үйлчилгээ, бүтэц зохион байгуулалтын хувьд хамгийн тохиромжтой** бөгөөд specificity-ийн хувьд байршлаасаа хамаарахгүй, **selector-оосоо хамаарна**.

Жишээ нь class selector ашиглавал specificity нь **(0, 0, 1, 0)** байна.

```html
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div class="text">This text's color is defined in an external CSS file.</div>
</body>
```

```css
.text {
  color: purple;
}
```

Энэ тохиолдолд текстийн өнгө `styles.css` файлаас тодорхойлогдож, internal эсвэл inline style-аар дарж бичээгүй л бол хэрэгжинэ.
