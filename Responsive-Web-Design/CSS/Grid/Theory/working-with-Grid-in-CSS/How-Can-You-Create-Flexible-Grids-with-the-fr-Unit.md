### `fr` нэгж ашиглан уян хатан Grid хэрхэн үүсгэх вэ?

Өмнөх хичээл дээр та **CSS Grid**-ийн талаар танилцсан. Энэ нь вэб хуудсанд **комплекс болон уян хатан layout** хийхэд ашиглагддаг. Энэ хичээлээр бид **`fr` нэгж** ашиглан **flexible grid layout** хэрхэн хийхийг үзнэ.

Эхлээд дараах HTML кодыг харъя. Энэ нь grid container-ийг илэрхийлнэ.

```html
<div class="grid-container">
  <div class="col"></div>
  <div class="col"></div>
  <div class="col"></div>
  <div class="col"></div>
</div>
```

CSS дотор container-ийн `display` property-г **grid** болгож тохируулна.

```html
<link rel="stylesheet" href="styles.css" />
<div class="grid-container">
  <div class="col"></div>
  <div class="col"></div>
  <div class="col"></div>
  <div class="col"></div>
</div>
```

```css
html,
body {
  width: 90%;
  height: 50%;
}

.grid-container {
  display: grid;
  grid-template-columns: 25% 25% 25% 25%;
  gap: 15px;
  background-color: darkgray;
  height: 100%;
}

.col {
  background-color: darkslateblue;
}
```

`grid-template-columns` нь **баганын хэмжээг** тодорхойлоход ашиглагддаг. Энэ жишээнд багана бүр container-ийн **25%** хэмжээтэй байна. `gap` property нь багануудын хооронд **зай** үүсгэнэ.

Одоог хүртэл бид баганын хэмжээг **хувь (%)** ашиглан тодорхойлж байсан. Гэхдээ **`fr` нэгж** ашиглах боломж бас бий.

---

### `fr` нэгж гэж юу вэ?

`fr` нэгж нь **fractional unit** буюу grid container-ийн сул зайны **хувь (fraction)**-ийг илэрхийлдэг.

Доорх код нь өмнөх жишээг **percentage биш `fr` нэгж** ашиглан өөрчилсөн хувилбар юм.

```html
<link rel="stylesheet" href="styles.css" />
<div class="grid-container">
  <div class="col"></div>
  <div class="col"></div>
  <div class="col"></div>
  <div class="col"></div>
</div>
```

```css
html,
body {
  width: 90%;
  height: 50%;
}

.grid-container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr 1fr;
  gap: 15px;
  background-color: darkgray;
  height: 100%;
}

.col {
  background-color: darkslateblue;
}
```

Энд багана бүр **1 fraction** зай эзэлнэ. Нийт **4 багана** байгаа учраас container-ийн зайг **тэнцүү 4 хэсэгт** хуваана.

---

### Яагаад `fr` нэгж хэрэгтэй вэ?

Та grid layout хийх үед **`fr` нэгжийг илүү их ашиглах болно**, учир нь:

* зайг **пропорциональ** байдлаар хуваарилдаг
* **уян хатан layout** хийхэд тохиромжтой
* **responsive дизайн** хийхэд хялбар
* pixel хэмжээг гараар өөрчлөх шаардлага багасдаг

Ингэснээр grid layout нь **дэлгэцийн хэмжээ өөрчлөгдөхөд автоматаар дасан зохицох** боломжтой болдог.
