**Universal Selector гэж юу вэ? Мөн түүний Specificity ямар вэ?**

Universal selector (`*`) нь баримт бичиг доторх **ямар ч элементийг онилдог** CSS selector-ын тусгай төрөл юм.

Энэ selector-ыг ихэвчлэн хуудсан дээрх **бүх элементэд нэгэн ижил стиль хэрэгжүүлэх** зорилгоор ашигладаг бөгөөд өөр өөр браузеруудын анхдагч (default) стилийг тэгшитгэх, дахин тохируулах (reset, normalize) үед нэн түгээмэл хэрэглэгддэг.

Universal selector-ыг тодорхой нэг хүрээнд (context) доторх бүх элементүүдийг эсвэл бүхэл баримт бичгийн хэмжээнд бүх элементүүдийг сонгоход ашиглаж болно.

Доорх нь HTML баримт бичгийн бүх элементэд margin болон padding-ийг тохируулж буй universal selector-ын жишээ юм:

```html
<link rel="stylesheet" href="styles.css">

<h1>Heading element</h1>
<p>example paragraph element</p>
```

```css
* {
  margin: 0;
  padding: 0;
}
```

Энэ жишээнд `*` selector нь бүх элементүүдийн margin болон padding-ийг 0 болгож тохируулж байна. Энэ нь CSS reset хийхэд түгээмэл хэрэглэгддэг арга юм.

---

### Universal selector-ын specificity

Universal selector нь бүх selector-ууд дундаас **хамгийн бага specificity**-тэй.

Түүний specificity утга нь:

```
(0, 0, 0, 0)
```

Өөрөөр хэлбэл specificity тооцоололд ямар ч оноо нэмдэггүй.

Иймээс type selector, class selector, ID selector, мөн inline style зэрэг **ямар ч өөр selector** universal selector-оор өгсөн стилийг дарж (override) чадна.

---

### Жишээ

Дараах HTML болон CSS кодыг авч үзье:

```html
<head>
  <style>
    * {
      color: blue;
    }
    p {
      color: red;
    }
    .highlight {
      color: green;
    }
    #unique {
      color: purple;
    }
  </style>
</head>
<body>
  <p id="unique" class="highlight">This text has multiple styles applied.</p>
</body>
```

Энд:

* Universal selector (`*`) бүх элементүүдийн текстийн өнгийг цэнхэр (`blue`) болгож байна.
* `p` type selector нь `p` элементүүдэд улаан (`red`) өнгө өгч, universal selector-ыг дарна.
* `.highlight` class selector нь class-тэй элементүүдийн өнгийг ногоон (`green`) болгож, type selector-оос давна.
* Эцэст нь `#unique` ID selector нь хамгийн өндөр specificity-тэй тул бусад бүх стилийг дарж, текстийн өнгийг ягаан (`purple`) болгож байна.

Энэ жишээ нь universal selector specificity хамгийн бага тул бараг бүх тохиолдолд бусад selector-уудаар дарж бичигддэгийг тодорхой харуулж байна.
