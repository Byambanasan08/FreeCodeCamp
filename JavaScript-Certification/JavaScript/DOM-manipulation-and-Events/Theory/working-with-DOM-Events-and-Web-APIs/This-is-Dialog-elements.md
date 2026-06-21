JavaScript ашиглан Dialog элементүүдийг хэрхэн нээж, хаах вэ?

Dialog нь хэрэглэгчдэд чухал мэдээлэл эсвэл үйлдлийг харуулах боломжийг олгодог. HTML-ийн суурь **dialog** элементийг ашигласнаар та веб аппликейшндоо (modal болон non-modal) dialog-уудыг хялбархан үүсгэж чадна.

**Modal dialog** гэдэг нь хэрэглэгч тухайн dialog-тэй харилцах хүртэл (жишээ нь хаах эсвэл form илгээх) веб хуудасны бусад хэсэгтэй харилцах боломжгүй болгодог dialog юм.

Харин **non-modal dialog** нь dialog нээлттэй байсан ч хэрэглэгч хуудасны бусад хэсэгтэй үргэлжлүүлэн ажиллах боломжтой байдаг.

Энэ хичээлээр та **showModal()** болон **close()** method-уудыг ашиглан dialog-ийг хэрхэн нээж, хаахыг сурах болно.

Хэрвээ та хэрэглэгчийг тодорхой үйлдэл эсвэл мэдээлэл дээр төвлөрүүлэхийг хүсвэл **showModal()** method-ийг ашиглан modal dialog-ийг нээж болно. Энэ нь хуудасны бусад элементүүдийг бүдгэрүүлж (backdrop нэмнэ) идэвхгүй болгодог. Form, баталгаажуулалт, чухал мэдээлэл харуулахад тохиромжтой.

Modal dialog-ийн HTML:

```html id="4y4qj7"
<dialog id="my-modal">
  <p>This is a modal dialog.</p>
</dialog>
```

Эхэндээ дэлгэц дээр юу ч харагдахгүй, учир нь dialog хаалттай байдаг. Та **showModal()** method ашиглан автоматаар нээж болно:

```html id="u7m7u7"
<dialog id="modal">
  <p>This is a modal dialog.</p>
</dialog>
<script src="index.js"></script>
```

```javascript id="kdl6vl"
const dialog = document.getElementById("modal");
dialog.showModal();
```

Үр дүн: “This is a modal dialog.” гэсэн тексттэй modal харагдана.

Хэрэглэгчид удирдлага өгөх нь илүү зөв. Үүний тулд button дээр click event нэмээд **showModal()** ашиглаж болно:

```html id="w6l8t4"
<dialog id="modal">
  <p>This is a modal dialog.</p>
</dialog>
<button id="open-modal-btn">Open Modal Dialog</button>
<script src="index.js"></script>
```

```javascript id="qtfz91"
const dialog = document.getElementById("modal");
const openButton = document.getElementById("open-modal-btn");

openButton.addEventListener("click", () => {
  dialog.showModal();
});
```

Хэрвээ dialog нээлттэй үед ч хэрэглэгч бусад контенттой ажиллах боломжтой байх шаардлагатай бол **show()** method-ийг ашиглана:

```html id="9b6l7t"
<dialog id="modal">
  <p>This is a modal dialog.</p>
</dialog>
<button id="open-modal-btn">Open Modal Dialog</button>
<script src="index.js"></script>
```

```javascript id="7r1y5k"
const dialog = document.getElementById("modal");
const openButton = document.getElementById("open-modal-btn");

openButton.addEventListener("click", () => {
  dialog.show();
});
```

Dialog-ийг хаахын тулд dialog дотор button нэмээд **close()** method ашиглана:

```html id="f8q0r2"
<dialog id="modal">
  <p>This is a modal dialog.</p>
  <button id="close-modal-btn">Close Modal</button>
</dialog>
<button id="open-modal-btn">Open Modal Dialog</button>
<script src="index.js"></script>
```

```javascript id="y2h3kp"
const dialog = document.getElementById("modal");
const openButton = document.getElementById("open-modal-btn");
const closeButton = document.getElementById("close-modal-btn");

openButton.addEventListener("click", () => {
  dialog.show();
});

closeButton.addEventListener("click", () => {
  dialog.close();
});
```
