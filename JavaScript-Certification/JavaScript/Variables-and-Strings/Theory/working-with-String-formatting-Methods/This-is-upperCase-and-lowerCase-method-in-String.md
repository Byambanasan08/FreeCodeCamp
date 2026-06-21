String-ийн үсгийн том, жижгийг хэрхэн өөрчлөх вэ?

JavaScript-д string-тэй ажиллах үед заримдаа бүх үсгийг том болгох (uppercase) эсвэл жижиг болгох (lowercase) шаардлага гардаг.

Жишээ нь гарчиг тодруулах, эсвэл хэрэглэгчийн оруулсан текстийг нэг стандарт хэлбэрт оруулах гэх мэт.

JavaScript-д үүнийг хийхэд зориулсан хоёр built-in method байдаг:

* `toUpperCase()`
* `toLowerCase()`

toUpperCase()

`toUpperCase()` method нь бүх тэмдэгтийг том үсэг болгон хувиргаж, шинэ string буцаадаг.

Жишээ:

```id="n2c9uj"
let greeting = "Hello, World!";
let uppercaseGreeting = greeting.toUpperCase();
console.log(uppercaseGreeting);  // "HELLO, WORLD!"
```

Энд бүх үсэг том болж байна.

Анхаарах зүйл: эх string өөрчлөгдөхгүй, шинэ string буцаадаг.

toLowerCase()

`toLowerCase()` method нь бүх тэмдэгтийг жижиг үсэг болгон хувиргана.

Жишээ:

```id="px9d72"
let shout = "I AM LEARNING JAVASCRIPT!";
let lowercaseShout = shout.toLowerCase();
console.log(lowercaseShout);  // "i am learning javascript!"
```

Энд бүх үсэг жижиг болж байна.

Мөн адил эх string өөрчлөгдөхгүй.

Дүгнэж хэлбэл:

* `toUpperCase()` → бүх үсгийг том болгоно
* `toLowerCase()` → бүх үсгийг жижиг болгоно
* Аль аль нь шинэ string буцаадаг
* Эх string өөрчлөгдөхгүй

Эдгээр method-ууд нь текстийг стандартчлах, харьцуулах (case-insensitive), болон дизайны жигд байдлыг хангахад маш хэрэгтэй.
