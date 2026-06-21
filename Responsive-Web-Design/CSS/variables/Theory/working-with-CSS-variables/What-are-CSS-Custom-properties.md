**CSS Custom Properties гэж юу вэ, мөн тэд хэрхэн ажилладаг вэ?**

CSS custom properties, мөн CSS variables гэж нэрлэгддэг, нь CSS зохиогчдын тодорхойлдог бөгөөд документ даяар дахин ашиглагдах тодорхой утгуудыг агуулдаг entity-үүд юм. Эдгээр нь stylesheet-үүдийг илүү үр ашигтай, арчлахад хялбар, мөн уян хатан болгох хүчирхэг боломж юм.

Custom property зарлах синтакс нь энгийн байдаг. Энэ нь хоёр зураас (`--`)-аар эхэлж, дараа нь property-ийн нэр бичигдэнэ:

```css
:root {
  --main-color: #3498db;
}
```

Энэ жишээнд бид `--main-color` нэртэй custom property-г `#3498db` гэсэн утгатайгаар зарлаж байна. `:root` pseudo-class нь global custom properties зарлахад түгээмэл ашиглагддаг, учир нь энэ нь DOM tree дэх хамгийн дээд түвшний parent-ийг илэрхийлдэг.

Custom property ашиглахын тулд та `var()` function-ийг хэрэглэнэ:

```html
<link rel="stylesheet" href="styles.css">
<button class="button">Click Me</button>
```

```css
:root {
  --main-color: #3498db;
}

.button {
  background-color: var(--main-color);
}
```

Энэ нь `button` class-тай элементүүдийн background color-ийг `--main-color`-д хадгалагдсан утгаар тохируулдаг.

Custom properties-ийн гол онцлогуудын нэг нь тэд CSS cascade-ийг дагадаг явдал юм. Энэ нь та тэдгээрийг тодорхой элементүүд эсвэл контекстүүдэд дахин тодорхойлж болно гэсэн үг юм:

```html
<link rel="stylesheet" href="styles.css">
<div class="alert">This is an alert message.</div>
```

```css
.alert {
  --main-color: #e74c3c;
  background-color: var(--main-color);
}
```

Энэ тохиолдолд `alert` class-тай элементүүд global тодорхойлолтыг override хийж, өөр `--main-color` утгыг ашиглана.

Custom properties нь мөн fallback values-ийг дэмждэг. Хэрэв custom property тодорхойлогдоогүй эсвэл буруу байвал та fallback value өгч болно:

```html
<link rel="stylesheet" href="styles.css">
<div class="text">This is some text.</div>
```

```css
:root {
  --text-color: green;
}

.text {
  color: var(--text-color, green);
}
```

Энд хэрэв `--text-color` тодорхойлогдоогүй бол өнгө нь default-аар green болно.

Custom properties нь themeable designs бүтээхэд ялангуяа хэрэгтэй байдаг. Та өөр өөр theme-д зориулж property-үүдийн багц тодорхойлж болно:

```html
<link rel="stylesheet" href="styles.css">
<div class="light-theme">
  <p>This is some light themed text.</p>
</div>
```

```css
:root {
  --bg-color: black;
}

body {
  background-color: var(--bg-color);
}

.light-theme {
  --bg-color: white;
  --text-color: black;
  background-color: var(--bg-color);
  color: var(--text-color);
  padding: 10px;
}
```

Theme солих нь `body` элемент дээр class нэмэх эсвэл хасахтай адилхан энгийн болж болно.

Custom properties-ийг media queries-тэй хамт ашиглан responsive designs үүсгэж болно:

```html
<link rel="stylesheet" href="styles.css">

<div class="card">
  <h2>Responsive Design</h2>
  <p>Resize the window to see the card adapt!</p>
</div>
```

```css
:root {
  --card-width: 90%;
  --card-bg: #f0f0f0;
  --card-padding: 1rem;
  --text-color: #333;
}

/* Tablet screens and up */
@media (min-width: 600px) {
  :root {
    --card-width: 70%;
    --card-bg: #e8f5e9;
    --card-padding: 1.5rem;
  }
}

/* Desktop screens and up */
@media (min-width: 1024px) {
  :root {
    --card-width: 50%;
    --card-bg: #d0f0ff;
    --card-padding: 2rem;
  }
}

body {
  font-family: system-ui, sans-serif;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background-color: #fafafa;
}

.card {
  width: var(--card-width);
  background-color: var(--card-bg);
  padding: var(--card-padding);
  color: var(--text-color);
  border-radius: 8px;
  box-shadow: 0 2px 6px rgba(0,0,0,0.1);
  text-align: center;
  transition: all 0.3s ease;
}
```

Энэ арга нь responsive layouts-ийг илүү арчлахад хялбар болгодог, учир нь та stylesheet дотроо олон газар биш нэг л газарт утгуудыг өөрчилж болно. Энэ нь ялангуяа байнга ашиглагддаг, нарийн төвөгтэй утгуудын хувьд stylesheet дэх давталтыг мэдэгдэхүйц багасгаж чадна.

Custom properties нь өөр custom properties-ийг reference хийж чадна:

```html
<link rel="stylesheet" href="styles.css">
<button class="button">Click Me</button>
```

```css
:root {
  --primary-color: #3498db;
  --button-bg: var(--primary-color);
}

button {
  background-color: var(--button-bg);
}
```

Энэ нь өөр өөр style aspect-уудын хооронд харилцаа үүсгэх боломж олгож, сайтын хэмжээнд theme-үүдийг тогтвортой байлгахад хялбар болгодог.

Custom properties нь олон давуу талтай боловч browser support-ийг нь анхаарах нь чухал. Эдгээр нь орчин үеийн browser-уудад сайн дэмжигддэг боловч хуучин browser-ууд тэдгээрийг танихгүй байж болно. Cutting-edge features ашиглах үедээ үргэлж fallback plan-тай байх хэрэгтэй.

Эцэст нь хэлэхэд, CSS custom properties нь илүү динамик, уян хатан, арчлахад хялбар stylesheet-үүд бүтээх хүчирхэг арга юм. Эдгээр нь themeable designs бүтээх боломж олгож, responsive layouts-ийг хялбарчилж, styles-ийг runtime дээр өөрчлөх боломжийг нээдэг.

Вэб хөгжүүлэлт үргэлжлэн хөгжихийн хэрээр custom properties нь хөгжүүлэгчийн toolkit дахь улам бүр чухал хэрэгсэл болж байна. Тэд дасан зохицох чадвартай, үр ашигтай CSS бүтээх шинэ боломжуудыг санал болгодог.
