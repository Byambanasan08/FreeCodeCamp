Тоонууд болон string-үүдийг хамтад нь тооцоолбол юу болдог вэ?

JavaScript нь заримдаа гайхмаар (эсвэл бүр хачирхалтай) байдлаар ажилладаг. Үүний нэг жишээ нь number болон string-ийг хамтад нь ашиглах үед гардаг.

Нэмэх (+) оператор

`+` оператор нь хоёр үүрэгтэй:

* тоо нэмэх
* string-ийг нийлүүлэх (concatenation)

Хэрэв number ба string-ийг `+`-аар холбовол JavaScript хоёуланг нь string болгон хувиргаж нийлүүлдэг.

```id="a9d3k1"
const result = 5 + '10';

console.log(result); // 510
console.log(typeof result); // string
```

Дараалал сольсон ч адил:

```id="b2f7m8"
const result = '10' + 5;

console.log(result); // 105
console.log(typeof result); // string
```

Энэ үзэгдлийг type coercion (төрөл хувиргалт) гэж нэрлэдэг.

Бусад операторууд (-, *, /)

Хасах, үржих, хуваах үед JavaScript string-ийг number болгон хувиргахыг оролддог.

```id="c6h4p9"
const subtractionResult = '10' - 5; // 5
const multiplicationResult = '10' * 2; // 20
const divisionResult = '20' / 2; // 10
```

Эдгээрийн үр дүн нь number байна.

Хэрэв string нь тоо биш бол:

```id="d8k1q3"
const result = 'abc' - 5;
console.log(result); // NaN
```

"abc" нь тоо биш тул NaN (Not a Number) гарна.

Boolean-той ажиллах

JavaScript-д:

* true → 1
* false → 0

```id="e4m7r2"
const result1 = true + 1;  // 2
const result2 = false + 1; // 1
```

Харин string-тэй нийлбэл:

```id="f9x2v6"
const result = 'Hello' + true;
console.log(result); // "Hellotrue"
```

null ба undefined

* null → 0
* undefined → NaN

```id="g3p8w1"
const result1 = null + 5; // 5
const result2 = undefined + 5; // NaN
```

Дүгнэж хэлбэл:

* `+` → string байвал нийлүүлнэ
* `-`, `*`, `/` → string-ийг number болгохыг оролдоно
* Болохгүй бол → NaN
* Boolean → 1 эсвэл 0
* null → 0
* undefined → NaN

JavaScript-д type coercion автоматаар явагддаг тул зарим үед санаанд оромгүй үр дүн гарч болно. Үүнийг ойлгох нь алдаа гаргахаас сэргийлэхэд маш чухал.
