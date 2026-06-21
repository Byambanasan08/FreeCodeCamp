JavaScript-д ямар ямар арифметик операторууд байдаг вэ?

JavaScript нь тоон дээр үндсэн арифметик үйлдлүүд (нэмэх, хасах, үржих, хуваах) болон илүү нарийн үйлдлүүд (үлдэгдэл, зэрэг дэвшүүлэх) хийх операторуудтай. Эдгээрийг арифметик операторууд гэж нэрлэдэг.

Нэмэх оператор (+)

`+` оператор нь хоёр ба түүнээс олон тоог нэмэхэд ашиглагдана. Дараалал хамаарахгүй.

```id="a1f9k2"
const num1 = 10;
const num2 = 5;
const num3 = 15;

const result1 = num1 + num2;
const result2 = num2 + num1;
const result3 = num2 + num1 + num3;

console.log(result1); // 15
console.log(result2); // 15
console.log(result3); // 30
```

Хасах оператор (-)

`-` оператор нь хоёр тооны зөрүүг олно.

```id="b7x2m1"
const difference = 10 - 5;
console.log(difference); // 5
```

Хэрэв жижиг тоо эхэнд байвал сөрөг үр дүн гарна:

```id="c8p4q9"
const difference = 5 - 10;
console.log(difference); // -5
```

Үржих оператор (*)

`*` оператор нь тоонуудыг үржүүлнэ. Дараалал хамаарахгүй.

```id="d3n6z8"
const num1 = 10;
const num2 = 5;
const num3 = 15;

const result1 = num1 * num2;
const result2 = num2 * num1;
const result3 = num2 * num1 * num3;

console.log(result1); // 50
console.log(result2); // 50
console.log(result3); // 750
```

Хуваах оператор (/)

`/` оператор нь хуваах үйлдэл хийдэг. Дараалал чухал.

```id="e5r2v7"
const num1 = 10;
const num2 = 5;

const result1 = num1 / num2;
const result2 = num2 / num1;

console.log(result1); // 2
console.log(result2); // 0.5
```

0-ээр хуваавал:

```id="f9t1y3"
const result = 10 / 0;
console.log(result); // Infinity
```

Үлдэгдэл оператор (%)

`%` оператор нь хуваасны дараах үлдэгдлийг буцаана.

```id="g4u8k6"
const num1 = 10;
const num2 = 3;

const remainder = num1 % num2;
console.log(remainder); // 1
```

Зэрэг дэвшүүлэх оператор (**)

`**` оператор нь нэг тоог нөгөөгийн зэрэгт дэвшүүлнэ.

```id="h7j2l5"
const num1 = 2;
const num2 = 3;

const exponent = num1 ** num2;
console.log(exponent); // 8
```

Операторуудыг хослуулах

Нэг илэрхийлэлд олон оператор ашиглаж болно:

```id="i6m3p0"
const result = 10 + 5 * 2 - 8 / 4;
console.log(result); // 18
```

Ийм үед JavaScript нь operator precedence (үйлдлийн эрэмбэ)-ийг дагаж аль үйлдлийг эхэлж хийхийг шийддэг.

Дүгнэж хэлбэл:

* `+` → нэмэх
* `-` → хасах
* `*` → үржих
* `/` → хуваах
* `%` → үлдэгдэл
* `**` → зэрэг

Эдгээр операторууд нь JavaScript-д тооцоолол хийх үндсэн хэрэгсэл болдог.
