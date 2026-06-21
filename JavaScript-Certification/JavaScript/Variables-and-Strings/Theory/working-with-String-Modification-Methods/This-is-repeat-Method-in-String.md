String-ийг x удаа хэрхэн давтах вэ?

JavaScript-д зарим үед string-ийг тодорхой тооны удаа давтах шаардлага гардаг.

Жишээ нь давтагдсан текст үүсгэх, эсвэл тодорхой загвар (pattern) хийх үед хэрэгтэй.

Үүнийг хийхэд `repeat()` method ашигладаг.

`repeat()` method нь string-ийг өгсөн тооны дагуу давтаж, шинэ string буцаадаг.

Синтакс:

```id="l9m2ka"
string.repeat(count);
```

* `string` → давтах string
* `count` → хэдэн удаа давтах

Жишээ:

```id="v2x7ht"
let word = "Hello!";
let repeatedWord = word.repeat(3);

console.log(repeatedWord);  // "Hello!Hello!Hello!"
```

Энд "Hello!" string 3 удаа давтагдсан байна.

Анхаарах зүйлс:

* `count` нь сөрөг тоо байж болохгүй:

```id="z6k1fa"
let word = "Test";
console.log(word.repeat(-1));  // RangeError
```

* `count` нь хязгааргүй (Infinity) байж болохгүй:

```id="x8p3dw"
let word = "Test";
console.log(word.repeat(Infinity));  // RangeError
```

* Хэрэв бүхэл биш тоо өгвөл доош нь тоймлодог:

```id="k4q9ny"
let word = "Test";
console.log(word.repeat(2.5));  // "TestTest"
```

* Хэрэв 0 өгвөл хоосон string буцаана:

```id="h3r8vo"
let word = "Test";
console.log(word.repeat(0));  // ""
```

Мөн хувьсагч ашиглаж болно:

```id="d7f2js"
let count = 4;
let word = "Test";
let repeatedWord = word.repeat(count);

console.log(repeatedWord); // TestTestTestTest
```

Дүгнэж хэлбэл:

* `repeat()` нь string-ийг олон удаа давтахад ашиглагдана
* Шинэ string буцаадаг
* `count` нь 0 эсвэл эерэг бүхэл тоо байх ёстой

Энэ method нь давталт хийх (loop бичих)-ээс илүү энгийн, цэвэр код бичихэд тусалдаг.
