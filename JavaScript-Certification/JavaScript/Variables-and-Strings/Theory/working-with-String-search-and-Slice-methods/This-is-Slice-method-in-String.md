String-ээс substring хэрхэн авах вэ?

JavaScript-д string-тэй ажиллах үед том string-ээс тодорхой хэсгийг (substring) салгаж авах шаардлага их гардаг.

Жишээ нь үгийн нэг хэсэг, тодорхой тэмдэгтүүдийн дараалал, эсвэл өгүүлбэрийн хэсгийг авах гэх мэт.

Үүнийг хийх хамгийн түгээмэл аргуудын нэг бол `slice()` method юм.

`slice()` method нь string-ийн тодорхой хэсгийг авч, шинэ string буцаадаг бөгөөд эх string-ийг өөрчилдөггүй.

Синтакс:

```id="i3l7ok"
string.slice(startIndex, endIndex);
```

* `startIndex` → эхлэх байрлал
* `endIndex` → дуусах байрлал (орохгүй)
* Хэрэв `endIndex` өгөөгүй бол төгсгөл хүртэл авна

Жишээ:

```id="0o0r3b"
let message = "Hello, world!";
let greeting = message.slice(0, 5);

console.log(greeting);  // Hello
```

Энд index 0-ээс 5 хүртэл (5 орохгүй) авч "Hello" гаргаж байна.

Хоёр дахь параметрийг орхивол:

```id="f9p9te"
let message = "Hello, world!";
let world = message.slice(7);

console.log(world);  // world!
```

Index 7-оос эхлээд төгсгөл хүртэл авч байна.

Сөрөг index ашиглах:

```id="e2p4hh"
let message = "JavaScript is fun!";
let lastWord = message.slice(-4);

console.log(lastWord);  // fun!
```

`-4` нь төгсгөлөөс 4 тэмдэгт буцааж тоолж байна.

Дундаас хэсэг авах:

```id="9g6r5n"
let message = "I love JavaScript!";
let language = message.slice(7, 17);

console.log(language);  // JavaScript
```

Index 7-оос 17 хүртэл авч "JavaScript" гаргаж байна.

Дүгнэж хэлбэл:

* `slice()` нь string-ийн хэсгийг тасалж авдаг
* Шинэ string буцаадаг, эх string өөрчлөгдөхгүй
* Эхлэх ба дуусах index-ээр хянадаг
* Сөрөг index ашиглаж төгсгөлөөс авах боломжтой

`slice()` нь string-ээс хүссэн хэсгийг авахад маш уян хатан, хэрэгтэй method юм.
