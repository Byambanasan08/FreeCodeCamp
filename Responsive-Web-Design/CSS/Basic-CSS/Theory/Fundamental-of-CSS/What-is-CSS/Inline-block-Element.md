**Inline-block хэрхэн ажилладаг вэ, мөн inline ба block элементүүдээс юугаараа ялгаатай вэ?**

CSS-тэй ажиллах үед та элементүүдийн **display** шинж чанарын гурван үндсэн төрлийн аашлалттай (behavior) байнга тулгарна. Үүнд: **inline**, **block**, болон **inline-block** орно.

Эдгээр шинж чанарууд нь элементүүд хуудас дээр **хаана, хэрхэн байрлах**, мөн бусад элементүүдтэй **яаж харилцахыг** тодорхойлдог.

Энэ хичээлд бид **inline-block** шинж чанар хэрхэн ажилладаг болон энэ нь **inline** болон **block-level** элементүүдээс юугаараа ялгаатайг тайлбарлана.

---

### **Block-level элементүүд**

**Block-level элементүүд** нь эцэг контейнерийнхээ **бүх өргөнийг** эзэлдэг том “block” шиг аашилна. Тэд:

* үргэлж **шинэ мөрөөс** эхэлдэг,
* өргөн (`width`) болон өндөр (`height`)-ийг **чөлөөтэй тохируулах боломжтой** байдаг.

---

### **Inline элементүүд**

**Inline элементүүд** нь:

* зөвхөн өөрт хэрэгтэй **хамгийн бага зайг** эзэлдэг,
* эргэн тойрны контентын урсгалд багтаж,
* **шинэ мөр үүсгэдэггүй**.

---

### **Inline-block элементүүд**

**Inline-block** нь дээрх хоёр төрлийн **хосолсон (hybrid)** шинж чанартай.

* Inline элемент шиг:

  * контентын урсгалд багтаж,
  * шинэ мөрөөс эхлэхгүй
* Block-level элемент шиг:

  * `width` болон `height`-ийг **удирдах боломжтой**

Өөрөөр хэлбэл, **inline** болон **inline-block**-ийн гол ялгаа нь:

* **inline элементүүдийн хэмжээг (`width`, `height`) хянах боломжгүй**
* харин **inline-block элементүүдэд хэмжээсийг бүрэн удирдах боломжтой**, мөр таслахгүйгээр

---

### **Жишээ**

```html
<link href="styles.css" rel="stylesheet">

<div class="container">
  <span class="inline-block-element element1">Inline-Block</span>
  <span class="inline-block-element element2">Inline-Block</span>
</div>
```

```css
.inline-block-element {
  display: inline-block;
  width: 150px;
  height: 100px;
}

.element1 {
  background-color: lightblue;
}

.element2 {
  background-color: lightgreen;
}
```

Дээрх жишээнд:

* `container` класстай `div` байна,
* түүний дотор хоёр `span` элемент байрлаж байна.

Эдгээр `span` элементүүд:

* `display: inline-block` гэж тохируулагдсан,
* мөн `width` болон `height` тодорхойлогдсон.

Үүний үр дүнд:

* элементүүд **нэг мөрөнд зэрэгцэн** харагдана (inline зан төлөв),
* гэхдээ **тодорхой өргөн, өндөртэй** (block-level шинж) байна.

---

### **display: inline-block-г арилгавал яах вэ?**

Хэрэв `display: inline-block`-ийг арилгаад, бусдыг нь хэвээр үлдээвэл:

```html
<link href="styles.css" rel="stylesheet">

<div class="container">
  <span class="inline-block-element element1">Span element</span>
  <span class="inline-block-element element2">Span element</span>
</div>
```

```css
.inline-block-element {
  width: 150px;
  height: 100px;
}

.element1 {
  background-color: lightblue;
}

.element2 {
  background-color: lightgreen;
}
```

Энэ тохиолдолд:

* `span` элементүүд анхдагч **inline** төлөвтөө буцна,
* `width` болон `height` **үл хэрэгжинэ**,
* элементүүд зөвхөн доторх контентынхаа хэмжээг л эзэлнэ.

---

### **Дүгнэлт**

**Inline-block** хэрхэн ажилладгийг ойлгох нь:

* нэг мөрөнд элементүүдийг **зэрэгцүүлэн байрлуулах**,
* мөн тэдгээрийн **хэмжээсийг нарийн удирдах**
  шаардлагатай layout үүсгэхэд маш хэрэгтэй.

Энэ шинж чанар нь тасралтгүй текстийн урсгал дунд **зэрэгцээ байрлал + хэмжээсийн хяналт** шаардлагатай үед онцгой ашигтай байдаг.
