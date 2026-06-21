Canvas API гэж юу вэ, мөн энэ нь хэрхэн ажилладаг вэ?

**Canvas API** нь JavaScript файл дотор шууд график дүрслэлүүдийг удирдах боломж олгодог хүчирхэг хэрэгсэл юм. Бүх зүйл HTML дахь **canvas** элементээс эхэлдэг. Энэ элемент нь таны зурж, өөрчилж болох “зурах талбар” (drawing surface) болдог бөгөөд Canvas API-ийн instance method болон property-уудыг ашиглан удирддаг.

Canvas API нь дүрс, текст, анимейшн, бүр цогц тоглоом хүртэл хийхэд хэрэгтэй бүх боломжийг агуулдаг. Үүнд **HTMLCanvasElement**, **CanvasRenderingContext2D**, **CanvasGradient**, **CanvasPattern**, **TextMetrics** зэрэг интерфейсүүд багтдаг бөгөөд эдгээр нь JavaScript дотор график үүсгэхэд ашиглах method болон property-уудыг өгдөг.

Canvas API хэрхэн ажилладгийг харцгаая.

Эхлээд HTML файлдаа canvas элемент үүсгэнэ:

```html
<canvas id="my-canvas"></canvas>
```

Canvas элемент нь **HTMLCanvasElement** интерфейсээр илэрхийлэгддэг бөгөөд үүнийг удирдах method, property-уудыг агуулдаг. Мөн Canvas API-ийн бусад интерфейсүүдийн method, property-уудыг ч ашиглаж болно.

Та canvas-д өргөн (width) болон өндөр (height)-ийг HTML дотор тохируулж болно:

```html
<canvas id="my-canvas" width="400" height="400"></canvas>
```

Эсвэл JavaScript ашиглан тохируулж болно:

```javascript
const canvas = document.getElementById("my-canvas");
canvas.width = 400;
canvas.height = 400;
```

Одоогоор дэлгэц дээр юу ч харагдахгүй. Canvas элемент үүсгэсний дараа дараагийн алхам бол **getContext()** method ашиглан зурах орчин (drawing context)-д хандах явдал юм.

Хамгийн түгээмэл context бол **2d** бөгөөд энэ нь хоёр хэмжээст зургууд зурах боломж олгодог:

```javascript
const canvas = document.getElementById("my-canvas");
const ctx = canvas.getContext('2d');
```

Хэрвээ та ctx хувьсагчийг console-д хэвлэвэл, **CanvasRenderingContext2D**-ийн бүх method болон property-уудыг, мөн тэдгээрийн анхны утгуудыг харж болно:

```javascript
console.log(ctx);
```

2D context-ийг авсны дараа та canvas дээр зурж эхлэх боломжтой болно.

Canvas API нь дүрс, шугам, текст зурахад зориулсан олон method болон property-уудтай. Тэдгээрийн нэг нь **fillStyle** бөгөөд үүнийг **fillRect()** method-той хамт ашиглан дөрвөлжин эсвэл тэгш өнцөгт зурж болно:

```html
<html>
  <head>
  </head>
  <body>
    <canvas id="my-canvas" width="400" height="400"></canvas>
    <script src="index.js"></script>
  </body>
</html>
```

```javascript
const canvas = document.getElementById("my-canvas");

const ctx = canvas.getContext("2d");

// Дэвсгэр өнгө тохируулах
ctx.fillStyle = "crimson";

// Тэгш өнцөгт зурах
ctx.fillRect(1, 1, 150, 100);
```

fillRect() method нь 4 тоон утга авдаг: x тэнхлэг, y тэнхлэг, өргөн, өндөр.

Одоо дэлгэц дээр дүрс харагдана.

Мөн та текст зурж болно, бүр анимейшн ч хийж болно. Жишээ нь текст зуръя:

```html
<canvas id="my-text-canvas" width="300" height="70"></canvas>
```

Текст зурахын тулд **fillText()** method-д эхний параметрээр текст, дараа нь x болон y координатыг өгнө:

```html
<html>
  <head>
  </head>
  <body>
    <canvas id="my-text-canvas" width="300" height="70"></canvas>
    <script src="index.js"></script>
  </body>
</html>
```

```javascript
const textCanvas = document.getElementById("my-text-canvas");

const textCanvasCtx = textCanvas.getContext("2d");

// Фонтын төрөл ба хэмжээ
textCanvasCtx.font = "30px Arial";

// Текстийн өнгө
textCanvasCtx.fillStyle = "crimson";

// Текст зурах
textCanvasCtx.fillText("Hello HTML Canvas!", 1, 50);
```

Хөтөч дээрх үр дүн: улаан өнгийн **Hello HTML Canvas!** гэсэн текст гарна.

Canvas API-гаар хийх боломж үүгээр хязгаарлагдахгүй. Жишээлбэл, та **requestAnimationFrame**-тай хослуулан өөрийн гэсэн анимейшн, визуалчлал, тоглоом зэрэг олон зүйлийг бүтээж болно.
