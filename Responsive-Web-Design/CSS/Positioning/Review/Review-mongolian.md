**CSS Positioning тойм**

### Floats ашиглах

**Тодорхойлолт:**
Floats нь элементийг хуудасны хэвийн урсгалаас гаргаж, container-ийнх нь зүүн эсвэл баруун талд байрлуулахад ашиглагддаг. Ингэснээр текст тухайн float хийсэн элементийн эргэн тойронд ороон байрлана.

```css
float: left;
float: right;
```

**Floats-ийг цэвэрлэх (Clearing Floats):**
**clear** property нь элемент float хийсэн контентийн доор шилжих шаардлагатай эсэхийг тодорхойлоход ашиглагддаг. Олон float элементүүд зэрэгцэн байрлах үед layout-д давхцах болон parent element collapse болох асуудал үүсэж болно. Үүнийг засахын тулд **clearfix hack** ашиглагддаг.

```html
<link rel="stylesheet" href="styles.css">
<div class="clearfix">
  <div class="box left">Left</div>
  <div class="box right">Right</div>
</div>
```

```css
.box {
  width: 100px;
  height: 60px;
  color: white;
  text-align: center;
  line-height: 60px;
}

.left {
  float: left;
  background: teal;
}

.right {
  float: right;
  background: purple;
}

.clearfix::after {
  content: "";
  display: block;
  clear: both;
}
```

---

# Static, Relative болон Absolute Positioning

**Static Positioning:**
Энэ нь document-ийн хэвийн урсгал юм. Элементүүд дээрээс доош, зүүнээс баруун тийш дарааллаар байрлана.

**Relative Positioning:**
Энэ нь **top**, **left**, **right**, **bottom** property-уудыг ашиглан элементийг хэвийн урсгал дотор нь хөдөлгөх боломж олгодог. Мөн relative positioning ашиглан элементүүдийг хооронд нь давхарлуулах боломжтой.

```html
<link rel="stylesheet" href="styles.css">
<div class="relative">Relative Element</div>
```

```css
.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

**Absolute Positioning:**
Энэ нь элементийг document-ийн хэвийн урсгалаас гаргаж, бусад элементүүдээс тусдаа байдлаар ажиллуулах боломж олгодог.

```html
<link rel="stylesheet" href="styles.css">
<div class="parent">
  Parent
  <div class="positioned">Absolute</div>
</div>
```

```css
.parent {
  position: relative;
  height: 120px;
  background: #eee;
}

.positioned {
  position: absolute;
  top: 30px;
  left: 30px;
  background-color: coral;
}
```

---

# Fixed болон Sticky Positioning

**Fixed Positioning:**
Элементэд **position: fixed** тохируулбал тэр элемент document-ийн хэвийн урсгалаас гарч, **viewport**-той харьцангуйгаар байрлана. Хэрэглэгч хуудас гүйлгэх үед ч байрлал нь өөрчлөгдөхгүй. Ихэвчлэн header болон navigation bar зэрэг элементүүдэд ашиглагддаг.

```html
<link rel="stylesheet" href="styles.css">
<div class="navbar">Fixed Navbar</div>
<div style="height: 600px;"></div>
```

```css
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
  background: #0077ff;
  color: white;
  padding: 8px;
}
```

**Sticky Positioning:**
Sticky positioning нь relative болон fixed positioning-ийн хосолсон хэлбэр юм. Эхэндээ элемент document flow дотор хэвийн байрлана. Харин хэрэглэгч гүйлгэх үед тодорхой цэгээс эхлэн viewport-д “наалдаж” fixed шиг ажиллана.

```html
<link rel="stylesheet" href="styles.css">
<p>Scroll down</p>
<div class="positioned">Sticky Element</div>
<div style="height: 500px;"></div>
```

```css
.positioned {
  position: sticky;
  top: 30px;
  left: 30px;
  background: #4caf50;
  color: white;
  padding: 6px;
}
```

---

# z-index Property ашиглах

**Тодорхойлолт:**
**z-index** property нь CSS-д давхарлаж харагдаж байгаа positioned элементүүдийн босоо давхарлалын дарааллыг удирдахад ашиглагддаг.

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <div class="box box1">1</div>
  <div class="box box2">2</div>
</div>
```

```css
.container {
  position: relative;
  width: 300px;
  height: 300px;
  border: 1px solid black;
}

.box {
  position: absolute;
  width: 100px;
  height: 100px;
  color: white;
  display: flex;
  align-items: center;
  justify-content: center;
}

.box1 {
  background: lightcoral;
  top: 20px;
  left: 20px;
  z-index: 1;
}

.box2 {
  background: steelblue;
  top: 40px;
  left: 40px;
  z-index: 2;
}
```
