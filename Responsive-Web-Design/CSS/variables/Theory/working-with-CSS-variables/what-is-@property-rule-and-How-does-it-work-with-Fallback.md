### @property Дүрэм гэж юу вэ, мөн Fallback-той хэрхэн ажилладаг вэ?

`@property` дүрэм нь CSS-ийн хүчирхэг боломж бөгөөд хөгжүүлэгчдэд custom property-г (өөрийн тодорхойлсон property) тэдгээрийн зан төлөв дээр илүү их хяналттайгаар тодорхойлох боломжийг олгодог. Үүнд тэд хэрхэн animation хийх, мөн тэдний initial value (эхний утга) зэрэг багтана.

Энэ дүрэм нь CSS custom property-ийн ажиллагааг сайжруулах арга замыг олгодог бөгөөд тэдгээрийг ашиглахад илүү уян хатан байдал олгодог.

`@property` дүрмийн үндсэн syntax нь дараах байдалтай байна:

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

`--property-name` нь таны тодорхойлж буй custom property-ийн нэр юм. Бүх custom property-ийн адил энэ нь хоёр зураасаар (`--`) эхлэх ёстой.

`syntax` нь property-ийн төрлийг тодорхойлдог бөгөөд энэ нь `<color>`, `<length>`, `<number>`, `<percentage>` зэрэг төрлүүд эсвэл илүү төвөгтэй төрлүүд байж болно.

`inherits` нь тухайн property нь parent element-ээсээ утгыг нь өвлөх эсэхийг зааж өгдөг.

`initial-value` нь property-ийн default утгыг тохируулдаг.

Доорх нь `@property` дүрмийг ашиглах практик жишээ юм:

```html
<link rel="stylesheet" href="styles.css">
<button class="button">Click Me</button>
```

```css
@property --main-color {
  syntax: '<color>';
  inherits: false;
  initial-value: #3498db;
}

.button {
  background-color: var(--main-color);
}
```

Энэ жишээнд бид `--main-color` нэртэй custom property-г color утгатайгаар тодорхойлж, inheritance-ийг идэвхгүй болгож (`false`), мөн `#3498db` гэсэн initial value өгч байна.

`@property` дүрмийн гол давуу талуудын нэг нь custom property-г animation хийх боломжийг олгодог явдал юм. Өмнө нь энэ боломж байгаагүй.

```html
<link rel="stylesheet" href="styles.css">
<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: '<angle>';
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

Дээрх код нь element дээр hover хийх үед жигд animation-тайгаар өөрчлөгдөх gradient үүсгэдэг. Энэ нь стандарт custom property ашиглах үед боломжгүй байсан зүйл юм.

Одоо `@property` дүрэм fallback-уудтай хэрхэн ажилладгийг авч үзье.

Fallback нь CSS-д маш чухал бөгөөд тодорхой боломжуудыг дэмждэггүй browser дээр style нь алдагдалгүй ажиллахыг баталгаажуулдаг. `@property`-ийн хувьд fallback нь хоёр түвшинд ажилладаг: дүрэм өөрөө болон custom property-г ашиглах үед.

`@property` дүрмийг дэмждэггүй browser-уудын хувьд та custom property-г уламжлалт аргаар зарлаж fallback өгч болно:

```html
<link rel="stylesheet" href="styles.css">
```

```css
:root {
  --main-color: #3498db;
}

@property --main-color {
  syntax: '<color>';
  inherits: false;
  initial-value: #3498db;
}

body {
  background-color: var(--main-color);
}
```

Энэ тохиолдолд `@property`-г дэмждэг browser-ууд илүү нарийн тодорхойлогдсон хувилбарыг ашиглах бөгөөд бусад browser-ууд стандарт custom property зарлалт руу fallback хийнэ.

Custom property ашиглах үед та `var()` функц ашиглан fallback value өгч болно. Энэ нь стандарт custom property ашиглахтай адил юм:

```html
<link rel="stylesheet" href="styles.css">
<button class="button">Click Me</button>
```

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

Энэ нь `--main-color` property тодорхойлогдоогүй эсвэл буруу утгатай байсан ч button-д background color хэвээр байхыг баталгаажуулна.

`@property` дүрэм нь илүү төвөгтэй fallback scenario-уудыг ч боломжтой болгодог. Жишээлбэл, та type-safe fallback өгөхөд ашиглаж болно:

```html
<link rel="stylesheet" href="styles.css">
<div class="box">Colored box</div>
```

```css
@property --padding {
  syntax: '<length>';
  inherits: false;
  initial-value: 10px;
}

.box {
  width: 100px;
  height: 100px;
  background-color: darkred;
  color: white;
  padding: var(--padding);
}
```

Энэ тохиолдолд хэн нэгэн `--padding`-д буруу утга, жишээ нь color утга өгөхийг оролдвол browser `10px` гэсэн initial value руу fallback хийж, type safety-г хадгална.

CSS-ийн `@property` дүрэм нь 2024 оны эхнээс эхлэн бүх томоохон орчин үеийн browser engine-үүдэд (Chrome, Edge, Opera, Firefox, Safari гэх мэт) өргөнөөр дэмжигддэг гэж тооцогддог. Хэрэв та илүү хуучин browser-уудыг дэмжихийг хүсвэл дээр тайлбарласны дагуу fallback CSS заавал өгөх шаардлагатай.

Дүгнэж хэлбэл, `@property` дүрэм нь CSS-ийн custom property-тай ажиллах арга барилд томоохон ахиц авчирдаг. Энэ нь илүү их хяналт өгч, custom property-г animation хийх зэрэг шинэ боломжуудыг нээдэг. Гэхдээ үүнийг зөв зохистой ашиглах хэрэгтэй бөгөөд бүх browser дээр зөв ажиллахын тулд үргэлж тохирох fallback-уудыг өгөх нь чухал. Бусад шинэ web технологийн адил гол зарчим нь дэмждэг browser-уудын туршлагыг сайжруулахын зэрэгцээ дэмждэггүй browser-уудад үндсэн ажиллагааг хадгалах явдал юм.
