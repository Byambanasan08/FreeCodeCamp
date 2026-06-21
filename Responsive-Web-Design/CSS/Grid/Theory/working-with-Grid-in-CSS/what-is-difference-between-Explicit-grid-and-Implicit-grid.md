### Implicit Grid ба Explicit Grid-ийн ялгаа юу вэ?

**Implicit grid** гэдэг нь grid layout дээр item-уудыг байрлуулах үед **browser автоматаар үүсгэдэг мөр (rows) болон баганууд (columns)** юм. Өөрөөр хэлбэл, `grid-template-rows` эсвэл `grid-template-columns` ашиглан тодорхойлоогүй мөр, багануудыг хэлнэ.

Browser автоматаар үүсгэсэн эдгээр мөр, багануудыг хянахад дараах property-ууд ашиглагддаг:

* `grid-auto-columns`
* `grid-auto-rows`

Implicit grid нь мөн **та item-ийг тодорхойлсон grid-ийн гадна байрлуулах үед browser автоматаар шинээр үүсгэдэг мөр, багануудыг** хэлдэг.

---

### Жишээ

Жишээ нь grid layout дээр **зөвхөн хоёр explicit багана** тодорхойлсон гэж бодъё.

```html id="o21o8g"
<link rel="stylesheet" href="styles.css">
<div class="grid-container">
  <div class="grid-item">Item 1</div>
  <div class="grid-item">Item 2</div>
  <div class="grid-item">Item 3</div>
  <div class="grid-item">Item 4</div>
  <div class="grid-item">Item 5</div>
  <div class="grid-item">Item 6</div>
</div>
```

```css id="dy9tcz"
.grid-container {
  display: grid;
  grid-template-columns: 100px 100px; /* Зөвхөн 2 explicit багана */
}

.grid-item {
  background-color: burlywood;
  border: 1px solid orangered;
  padding: 0.5rem;
  margin: 0.5rem;
}
```

Энд:

* **Item 1** → 1-р мөр, 1-р багана
* **Item 2** → 1-р мөр, 2-р багана

Эхний мөр **дүүрсэн** тул дараагийн элементүүд автоматаар **шинэ мөр** үүсгэнэ.

* **Item 3** → 2-р мөр, 1-р багана
* **Item 4** → 2-р мөр, 2-р багана

Ингэж browser **implicit row**-уудыг автоматаар үүсгэнэ.

---

### Explicit Grid гэж юу вэ?

**Explicit grid** гэдэг нь developer өөрөө **тодорхойлж үүсгэсэн grid бүтэц** юм.

Үүнийг дараах property-уудаар тодорхойлдог:

* `grid-template-columns`
* `grid-template-rows`

Өөрөөр хэлбэл **та зориуд төлөвлөж үүсгэсэн мөр болон баганууд** юм.

---

### Implicit vs Explicit Grid харьцуулалт

| Feature              | Explicit Grid                                                          | Implicit Grid                                                     |
| -------------------- | ---------------------------------------------------------------------- | ----------------------------------------------------------------- |
| **Size control**     | `grid-template-rows`, `grid-template-columns` ашиглан бүрэн тохируулна | `grid-auto-rows`, `grid-auto-columns` ашиглана эсвэл `auto` байна |
| **Default behavior** | Developer тодорхойлохгүй бол өөрчлөгдөхгүй                             | Explicit grid-ээс гадна item байрлах үед автоматаар үүснэ         |
| **Complexity**       | Layout бүтцийг илүү их төлөвлөх шаардлагатай                           | Эмх цэгцгүй эсвэл хувьсах контентод илүү хялбар                   |
| **Flexibility**      | Тогтмол бүтэцтэй                                                       | Динамик контентод уян хатан                                       |
| **Performance**      | Урьдчилан тодорхойлогдсон тул илүү хурдан байж болно                   | Browser нэмэлт тооцоолол хийх шаардлагатай                        |
| **Use case**         | Layout урьдчилан тодорхой үед                                          | Контент байнга өөрчлөгддөг үед                                    |

---

### Дүгнэлт

* **Explicit Grid** → Developer өөрөө тодорхойлсон мөр, баганууд
* **Implicit Grid** → Browser автоматаар үүсгэсэн мөр, баганууд

Explicit grid нь **тогтмол layout** хийхэд тохиромжтой бол implicit grid нь **динамик контенттой layout** дээр илүү уян хатан ажилладаг.
