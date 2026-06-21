### CSS Grid гэж юу вэ, Flexbox-оос юугаараа ялгаатай вэ?

**CSS Grid** нь веб хөгжүүлэгчдэд төвөгтэй, responsive вэб хуудасны layout-уудыг хялбархан бүтээх боломж олгодог хүчирхэг layout систем юм.

Та өрөөнд тавилга байрлуулж байна гэж төсөөлөөрэй. CSS Grid нь шалан дээр тань харагдахгүй grid байгаа мэт бөгөөд бүх зүйлийг яг хүссэн байрлалд нь нарийн байрлуулахад тусалдаг.

Вэб сайт бүтээх үед бид хуудсан дээрх янз бүрийн элементүүдийг байрлуулах шаардлагатай болдог.

CSS Grid гарч ирэхээс өмнө, ялангуяа **комплекс layout** хийхэд энэ нь заримдаа төвөгтэй байсан. CSS Grid нь энэ процессыг хялбарчилж, вэб хуудсыг **мөр (rows)** болон **багана (columns)** болгон хувааж, grid хэлбэрийн бүтэц үүсгэдэг.

Жишээ нь, дараах container `div` дотор хэд хэдэн item байна гэж төсөөлцгөөе:

```html
<div class="container">
  <div class="item">Item 1</div>
  <div class="item">Item 2</div>
  <div class="item">Item 3</div>
  <div class="item">Item 4</div>
  <div class="item">Item 5</div>
  <div class="item">Item 6</div>
</div>
```

Хэрэв эдгээр элементүүдийг **grid хэлбэрээр** байрлуулахыг хүсвэл `display: grid` гэж тохируулж, багануудыг дараах байдлаар тодорхойлж болно:

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <div class="item">Item 1</div>
  <div class="item">Item 2</div>
  <div class="item">Item 3</div>
  <div class="item">Item 4</div>
  <div class="item">Item 5</div>
  <div class="item">Item 6</div>
</div>
```

```css
.container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr;
  grid-gap: 20px;
}

.item {
  background-color: lightgray;
  padding: 20px;
  text-align: center;
  border: 1px solid #ccc;
}
```

Энэ код дээр browser-д **тэнцүү өргөнтэй гурван баганатай grid** үүсгэхийг зааж байна. `1fr 1fr 1fr` гэдэг нь гурван багана тус бүр ижил хэмжээний зай эзэлнэ гэсэн үг. Мөн grid item бүрийн хооронд **20 пикселийн зай** өгч байна.

---

### Flexbox-ийн талаар юу вэ?

Та магадгүй:
**“Flexbox бас layout хийхэд ашиглагддаг биш үү?”** гэж бодож байж магадгүй.

Тийм ээ! **Flexbox** нь бас CSS layout модель бөгөөд маш хэрэгтэй. Гэхдээ Grid-ээс зарим **чухал ялгаа** байдаг.

**Flexbox нь нэг хэмжээст (one-dimensional)**, харин **Grid нь хоёр хэмжээст (two-dimensional)** layout юм.

* **Flexbox** → нэг мөр эсвэл нэг баганад элементүүдийг байрлуулахад хамгийн тохиромжтой.
* **Grid** → мөр болон багана хоёрыг зэрэг ашигласан layout хийхэд илүү тохиромжтой.

Flexbox нь **content-first** буюу агуулгад тулгуурлан layout-аа тохируулдаг. Харин Grid нь **layout-first** буюу эхлээд layout-аа үүсгээд дараа нь элементүүдийг байрлуулах боломж олгодог.

Grid нь элементүүдийн байрлалыг **илүү нарийн удирдах** боломжтой. Жишээ нь, нэг элементийг яг аль **мөр** болон **баганад** байрлуулахыг тодорхой зааж болно.

---

### Flexbox жишээ

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <div class="item">Item 1</div>
  <div class="item">Item 2</div>
  <div class="item">Item 3</div>
  <div class="item">Item 4</div>
  <div class="item">Item 5</div>
  <div class="item">Item 6</div>
</div>
```

```css
.container {
  display: flex;
  justify-content: space-between;
}
```

Энэ нь flex container үүсгэж, item-уудыг **main axis** дагуу тэнцүү зайтай байрлуулна.

---

### Дүгнэлт

CSS Grid нь **хоёр хэмжээст, нарийн хяналттай layout** хийх боломж олгодог хүчирхэг хэрэгсэл юм. Эхэндээ бага зэрэг төвөгтэй санагдаж болох ч дадлага хийснээр **responsive болон complex вэб layout** хийхэд маш үнэ цэнтэй хэрэгсэл болдог.

Ихэнх тохиолдолд хамгийн сайн layout нь **Grid + Flexbox-ийн хослол** байдаг.

Жишээ нь:

* **Grid** → бүхэл веб хуудасны үндсэн layout
* **Flexbox** → grid хэсгүүдийн доторх элементүүдийг зэрэгцүүлэхэд ашиглана.
