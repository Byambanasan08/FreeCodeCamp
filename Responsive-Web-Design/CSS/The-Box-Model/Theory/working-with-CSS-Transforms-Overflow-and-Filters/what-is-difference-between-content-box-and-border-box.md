### content-box ба border-box хоёрын ялгаа юу вэ?

`box-sizing` property нь элементүүдийн **өргөн (width)** болон **өндөр (height)** хэрхэн тооцоологдохыг хянахын тулд `content-box` эсвэл `border-box` утгатайгаар тохируулагдаж болно.

Энэ property-г бүх элементүүдэд үйлчлэхээр **universal selector (`*`)** дээр тохируулж болно.

```css
* {
  box-sizing: border-box;
}
```

`box-sizing` property-ийн анхдагч утга нь **content-box** байдаг. Гэхдээ шаардлагатай үед **border-box**-ийг сонгож ашиглаж болно. Эхлээд `content-box`-ийг авч үзээд дараа нь `border-box`-ийг тайлбарлая.

Эдгээр загварууд хэрхэн ажилладгийг ойлгохын тулд CSS box model-ийн дөрвөн үндсэн ойлголтыг мэддэг байх хэрэгтэй. Тэдгээрийг товчхон дахин харъя.

* **Content area** — элементийн контент байрлах хэсэг
* **Padding** — content area болон border хоорондох зай
* **Border** — content area болон padding-ийг хүрээлсэн хүрээ
* **Margin** — border-ийн гаднах зай бөгөөд элементүүдийг хооронд нь тусгаарладаг

---

### content-box

`content-box` загварт элементэд өгсөн **width** болон **height** нь зөвхөн **content area-ийн хэмжээг** тодорхойлдог. Энэ хэмжээнд **padding, border, margin** багтахгүй.

Контентийн хэсгийг нарийн хянах шаардлагатай үед `content-box` ашигладаг. `width` болон `height` тохируулснаар зөвхөн **контентийн хэмжээ** тодорхойлогдоно.

Элементийн нийт өргөнийг олохын тулд **зүүн ба баруун padding**, мөн **зүүн ба баруун border**-ийг нэмэх шаардлагатай. Үүнтэй адил нийт өндрийг олохын тулд **контентийн өндөр**, **дээд ба доод padding**, мөн **дээд ба доод border**-ийг нэмнэ.

Жишээлбэл, доорх жишээнд бүх `div` элементүүдэд зориулсан CSS selector байна.

```html
<link rel="stylesheet" href="styles.css">
<div></div>
```

```css
div {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
}
```

Энэ тохиолдолд `content-box` ашиглагдаж байвал **content area** нь **300px × 200px** байна. Гэхдээ элемент браузерт харагдах нийт хэмжээ нь **padding болон border**-ийг багтаана.

Жишээлбэл:

* нийт өргөн = **300px (content) + 40px (padding) + 8px (border)** = **348px**

Нийт өндөр мөн адил зарчмаар тооцоологдоно.

---

### border-box

Одоо **border-box**-ийг авч үзье. Энэ нь өөр зарчмаар ажилладаг. Учир нь `width` болон `height` нь **контент + padding + border**-ийг хамтад нь багтаасан хэмжээг илэрхийлдэг. Харин **margin** энэ хэмжээнд багтахгүй.

Padding эсвэл border өөрчлөгдсөн ч элементийн нийт хэмжээ тогтмол байхыг хүсвэл `border-box` ашигладаг. Энэ нь ялангуяа **responsive layout** дээр ашигтай байдаг.

`border-box` ашиглах үед padding болон border нь **элементийн заасан хэмжээн дотор** ордог. Өөрөөр хэлбэл `width` болон `height` нь элементийн **нийт хэмжээ** болно:
**content + padding + border**. Харин margin үүнд орохгүй.

Доорх жишээнд хоёр `div` элемент ижил хэмжээтэй боловч өөр `box-sizing` утгатай байна.

```html
<link rel="stylesheet" href="styles.css">
<div class="box" id="red-div"></div>
<div class="box" id="blue-div"></div>
```

```css
.box {
  width: 300px;
  height: 200px;
  padding: 20px;
  border: 4px solid black;
  margin: 10px;
}

#red-div {
  box-sizing: content-box;
  background-color: red;
}

#blue-div {
  box-sizing: border-box;
  background-color: blue;
}
```

Эдгээр хоёр элемент хоёулаа:

* ижил **width**
* ижил **height**
* ижил **padding**
* ижил **border**
* ижил **margin**

утгатай. Ялгаа нь зөвхөн **өнгө** болон **box-sizing property-ийн утга** юм. Гэсэн хэдий ч энэ жижиг ялгаа нь браузерт харагдах **нийт хэмжээнд маш том нөлөө үзүүлдэг**.

---

`content-box` болон `border-box` хоёрын аль нь тохиромжтой вэ гэдэг нь таны төслийн шаардлагаас хамаарна. `border-box` нь энгийн, уян хатан байдлаасаа шалтгаалан улам түгээмэл болж байгаа боловч CSS layout-ийг зөв хэрэгжүүлэхийн тулд **хоёр загварын аль алийг нь ойлгох нь чухал**.
