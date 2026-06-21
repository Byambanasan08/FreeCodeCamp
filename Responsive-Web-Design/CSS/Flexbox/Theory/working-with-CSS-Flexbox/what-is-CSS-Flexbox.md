### CSS Flexbox гэж юу вэ, хэзээ ашиглах вэ?

**CSS Flexbox** нь нэг хэмжээст (one-dimensional) layout загвар бөгөөд контейнер доторх элементүүдийг **мөр (row)** болон **багана (column)** хэлбэрээр байрлуулах боломжийг олгодог. Мөн эдгээр элементүүдийн **дараалал (order)** болон **чиглэлийг (orientation)** хянах боломжтой.

Веб хөгжүүлэгчид Flexbox-ийг **responsive веб сайт болон веб аппликейшн** бүтээхэд ашигладаг. Энэ нь янз бүрийн **дэлгэцийн хэмжээ болон чиглэлд** автоматаар зохицох layout үүсгэхэд тусалдаг.

Flexbox-ийг **нэг хэмжээст layout загвар** гэж нэрлэдэг. Учир нь энэ нь элементүүдийг **нэг тэнхлэгийн дагуу** (axis) байрлуулахад төвлөрдөг. Энэ тэнхлэг нь:

* хэвтээ (horizontal)
* босоо (vertical)

байж болно.

---

# Flexbox-ийн хоёр үндсэн ойлголт

Flexbox ашиглаж эхлэхээс өмнө хоёр чухал ойлголтыг мэдэх хэрэгтэй.

### Flex Container

**Flex container** гэдэг нь flex layout ашиглаж байгаа HTML элемент юм. Энэ контейнер дотор элементүүдийг янз бүрийн аргаар **байрлуулах болон тэгшлэх** боломжтой.

HTML элементийг flex container болгохын тулд CSS дээр дараах property-г ашиглана.

```css
display: flex;
```

### Flex Items

**Flex items** гэдэг нь flex container-ийн **шууд хүүхэд элементүүд** юм. Эдгээр элементүүд нь container-ийн property-уудаас хамааран байрлаж, тэгшлэгдэж, мөн боломжит зайд багтахаар **агших (shrink)** эсвэл **томрох (expand)** боломжтой.

---

# Жишээ

Доорх жишээнд нэг `main` контейнер болон гурван `div` элемент байна.

```html
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

Хэрэв CSS дээр зөвхөн `width`, `height`, `background-color` тохируулбал элементүүд container flex биш учраас **бүгд өөр өөр мөрөнд байрлана**.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

Харин `main` контейнер дээр `display: flex` нэмбэл `div` элементүүд **нэг мөрөнд байрлана**.

```html
<link rel="stylesheet" href="styles.css">
<main>
  <div id="first-div"></div>
  <div id="second-div"></div>
  <div id="third-div"></div>
</main>
```

```css
main {
  display: flex;
}

div {
  width: 80px;
  height: 50px;
}

#first-div {
  background-color: #4d70b2;
}

#second-div {
  background-color: #5c4db2;
}

#third-div {
  background-color: #4da3b2;
}
```

Flex container нь анхдагчаар **block-level элемент** байдаг. Тиймээс контейнер өөрөө бусад элементүүдтэй харьцуулахад **өөрийн мөрөнд** байрлана.

---

# Flex Properties

Flexbox-д элементүүд хэрхэн байрлах, хэмжээгээ өөрчлөх, зайг хэрхэн хуваарилахыг тодорхойлох property-ууд байдаг.

Түгээмэл property-ууд:

* `flex-direction`
* `justify-content`
* `align-items`
* `flex-wrap`

---

# Flex Model

Flex model нь flex item-ууд container дотор **хэрхэн байрлахыг** тодорхойлдог.

Flex container бүр хоёр тэнхлэгтэй байдаг.

* **Main axis**
* **Cross axis**

Эдгээр тэнхлэгийн чиглэл нь layout-д property-ууд хэрхэн нөлөөлөхийг тодорхойлдог.

Анхдагчаар:

* **main axis** — хэвтээ
* **cross axis** — босоо

Flex item-ууд **main axis-ийн чиглэлд** байрлана.

---

# flex-direction Property

`flex-direction` property нь **main axis-ийн чиглэлийг** тодорхойлдог.

Анхдагч утга:

```css
flex-direction: row;
```

Энэ нь flex item-уудыг **нэг мөрөнд** байрлуулна.

---

## row-reverse

```css
flex-direction: row-reverse;
```

```css
main {
  display: flex;
  flex-direction: row-reverse;
}
```

Энэ нь элементүүдийн **дарааллыг урвуу болгоно**.

---

## column

```css
flex-direction: column;
```

```css
main {
  display: flex;
  flex-direction: column;
}
```

Энэ тохиргоо нь main axis-ийг **босоо чиглэлд** өөрчилнө. Ингэснээр элементүүд **багана хэлбэрээр** байрлана.

---

## column-reverse

```css
flex-direction: column-reverse;
```

```css
main {
  display: flex;
  flex-direction: column-reverse;
}
```

Энэ нь элементүүдийг **босоо чиглэлд урвуу дарааллаар** байрлуулна.

---

# Дүгнэлт

CSS Flexbox нь контейнер дотор элементүүдийг **уян хатан, үр ашигтайгаар байрлуулах** боломжийг олгодог хүчирхэг layout загвар юм.

Flex container, flex items болон flex property-уудыг ойлгосноор та **янз бүрийн дэлгэцийн хэмжээ болон чиглэлд дасан зохицох динамик, responsive веб сайт** бүтээх боломжтой болно.
