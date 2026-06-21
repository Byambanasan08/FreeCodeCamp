Compound Assignment Operator гэж юу вэ, мөн хэрхэн ажилладаг вэ?

JavaScript-д арифметик оператор бүрийн товчилсон хэлбэр байдаг бөгөөд үүнийг compound assignment operator гэж нэрлэдэг.

Эдгээр операторууд нь:

* үйлдэл хийх
* үр дүнг тухайн хувьсагчид буцаан оноох

гэсэн хоёр үйлдлийг нэг дор хийдэг.

Жишээ:

```id="a2b3c4"
let num = 5;
num = num + 2;

console.log(num); // 7
```

Үүнийг товчилбол:

```id="d5e6f7"
let num = 5;
num += 2;

console.log(num); // 7
```

`num += 2` нь `num = num + 2`-той ижил утгатай.

Нийтлэг compound assignment операторууд

+= (нэмэх)

```id="g8h9i0"
let total = 10;
total += 5;

console.log(total); // 15
```

-= (хасах)

```id="j1k2l3"
let score = 20;
score -= 7;

console.log(score); // 13
```

*= (үржих)

```id="m4n5o6"
let points = 5;
points *= 3;

console.log(points); // 15
```

/= (хуваах)

```id="p7q8r9"
let balance = 100;
balance /= 4;

console.log(balance); // 25
```

Бусад compound операторууд

* `%=` → үлдэгдэл авах
* `**=` → зэрэг дэвшүүлэх
* `&=` → bitwise AND
* `|=` → bitwise OR

Жишээ:

```id="s1t2u3"
let num = 10;
num %= 3;

console.log(num); // 1
```

Дүгнэж хэлбэл:

* Compound assignment нь үйлдэл + оноолтыг нэгтгэдэг
* Кодыг богино, цэвэр болгодог
* `x += y` → `x = x + y`
* `x -= y` → `x = x - y` гэх мэт

Эдгээр операторууд нь код бичихийг илүү хурдан, ойлгомжтой болгодог чухал хэрэгсэл юм.
