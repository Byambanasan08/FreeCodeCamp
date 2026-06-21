**CSS Flexbox тойм**

### CSS Flexbox ба Flex Model-ийн танилцуулга

* **Тодорхойлолт:** CSS flexbox нь контейнер доторх элементүүдийг мөр (row) болон багана (column) хэлбэрээр байрлуулах боломж олгодог **нэг хэмжээст (one-dimensional) layout model** юм.
* **Flex Model:** Энэ загвар нь flex item-ууд flex container дотор хэрхэн байрлахыг тодорхойлдог. Flex container бүр **хоёр тэнхлэгтэй** байдаг:

  * **main axis**
  * **cross axis**

---

## `flex-direction` Property

* **Тодорхойлолт:** Энэ property нь **main axis-ийн чиглэлийг** тогтооно.
* `flex-direction: row;`
  Анхдагч утга. Flex item-ууд нэг мөрөнд байрлана. Чиглэл нь браузерын үндсэн хэлний чиглэлээс хамаарна (зүүнээс баруун эсвэл баруунаас зүүн).
* `flex-direction: row-reverse;`
  Элементүүдийн дарааллыг мөрөнд **урвуу болгоно**.
* `flex-direction: column;`
  Flex item-уудыг **босоо чиглэлээр** байрлуулна.
* `flex-direction: column-reverse;`
  Элементүүдийг **босоо чиглэлд урвуу дарааллаар** байрлуулна.

```html
<div class="container">
  <div class="box">1</div>
  <div class="box">2</div>
  <div class="box">3</div>
</div>
```

```css
.container {
  display: flex;
  flex-direction: row;
  gap: 10px;
}

.box {
  background-color: lightblue;
  padding: 20px;
  text-align: center;
}
```

---

# `flex-wrap` Property

* **Тодорхойлолт:** Энэ property нь flex item-ууд контейнерийн зайд багтахаар **хэрхэн мөрөнд шилжиж (wrap)** байрлахыг тодорхойлдог.
* `flex-wrap: nowrap;`
  Анхдагч утга. Контейнерийн өргөнөөс хэтэрсэн ч **шинэ мөр үүсгэхгүй**.
* `flex-wrap: wrap;`
  Контейнерийн өргөнөөс хэтэрвэл элементүүд **дараагийн мөрөнд шилжинэ**.
* `flex-wrap: wrap-reverse;`
  Элементүүд **урвуу дарааллаар wrap** хийнэ.
* **`flex-flow` Property:**
  `flex-direction` болон `flex-wrap` property-уудын **shorthand property** юм.

```html
<div class="container">
  <div class="box">1</div>
  <div class="box">2</div>
  <div class="box">3</div>
  <div class="box">4</div>
  <div class="box">5</div>
</div>
```

```css
.container {
  display: flex;
  flex-wrap: wrap;
  width: 150px;
  background: #f0f0f0;
}

.box {
  width: 60px;
  padding: 10px;
  margin: 5px;
  background: skyblue;
  text-align: center;
}
```

---

# `justify-content` Property

* **Тодорхойлолт:** Энэ property нь flex container доторх child элементүүдийг **main axis дагуу** байрлуулна.

* `justify-content: flex-start;`
  Элементүүд main axis-ийн **эхлэл хэсэгт** байрлана.

* `justify-content: flex-end;`
  Элементүүд main axis-ийн **төгсгөлд** байрлана.

* `justify-content: center;`
  Элементүүд main axis дагуу **төвд** байрлана.

* `justify-content: space-between;`
  Элементүүд main axis дагуу **жигд хуваарилагдана**.

* `justify-content: space-around;`
  Элемент бүрийн **хооронд болон хоёр талд** зай үүсгэнэ.

* `justify-content: space-evenly;`
  Элементүүдийн хооронд болон хоёр захад **ижил хэмжээний зай** үүсгэнэ.

```html
<div class="container">
  <div class="box">A</div>
  <div class="box">B</div>
  <div class="box">C</div>
</div>
```

```css
.container {
  display: flex;
  justify-content: space-between;
  background: #eee;
}

.box {
  padding: 20px;
  background: salmon;
}
```

---

# `align-items` Property

* **Тодорхойлолт:** Энэ property нь flex item-уудыг **cross axis дагуу** байрлуулна. Cross axis нь main axis-д **перпендикуляр** байдаг.

* `align-items: center;`
  Элементүүдийг cross axis дагуу **төвд** байрлуулна.

* `align-items: flex-start;`
  Элементүүдийг cross axis-ийн **эхлэлд** байрлуулна.

* `align-items: stretch;`
  Flex item-уудыг cross axis дагуу **сунган контейнерийг дүүргэнэ**.

```html
<div class="container">
  <div class="box tall">1</div>
  <div class="box">2</div>
  <div class="box">3</div>
</div>
```

```css
.container {
  display: flex;
  align-items: center;
  height: 150px;
  background: #ddd;
}

.box {
  background: lightgreen;
  padding: 10px;
}

.tall {
  height: 100px;
}
```
