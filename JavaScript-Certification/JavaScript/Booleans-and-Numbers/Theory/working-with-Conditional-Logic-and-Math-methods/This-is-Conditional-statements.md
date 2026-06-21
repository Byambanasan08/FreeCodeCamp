Conditional statement гэж юу вэ, мөн if / else if / else statement-ууд хэрхэн ажилладаг вэ?

Conditional statement-ууд нь таны JavaScript код дотор шийдвэр гаргах боломжийг олгодог. Эдгээр нь тодорхой нөхцлөөс хамааран програмын урсгалыг өөрчлөхөд ашиглагддаг. Одоо if, else if, else болон ternary оператор хэрхэн ажилладгийг авч үзье.

if statement нь нэг нөхцөл авч, хэрэв тэр нөхцөл truthy байвал кодын блокыг ажиллуулдаг. Truthy утгууд гэдэг нь if statement зэрэг boolean орчинд үнэлэгдэхэд true болдог утгууд юм. Жишээ нь:

* хоосон биш string, жишээ нь: hello
* 0 болон -0-оос бусад бүх тоо, жишээ нь: 4, -5
* array
* object
* boolean true

Харин falsy утгууд гэдэг нь boolean орчинд false болдог утгууд юм. JavaScript-д falsy утгууд цөөн байдаг тул санахад амархан:

* boolean false
* 0
* "" (хоосон string)
* null
* undefined
* NaN (Not a Number)

Одоо truthy болон falsy ойлголтыг if statement-тэй хэрхэн ажилладгийг харъя:

```javascript id="n3k7xw"
if (null) {
  console.log("This will not run.");
}

if ("freeCodeCamp") {
  console.log("This will run.");
}
```

null нь falsy тул эхний блок ажиллахгүй. Харин "freeCodeCamp" нь truthy утга учраас хоёр дахь if доторх код ажиллаж, "This will run." гэж консолд хэвлэгдэнэ.

Одоо харьцуулах оператортой хамт if statement хэрхэн ажилладгийг харъя. Дараах жишээнд хэрэглэгч санал өгөх эрхтэй эсэхийг шалгаж байна:

```javascript id="8g2vqc"
const age = 22;

if (age >= 18) {
 console.log("You're eligible to vote"); // You're eligible to vote
}
```

Энд age нь 22 тул нөхцөл true болж, мессеж хэвлэгдэнэ. Харин age = 15 болгож өөрчилбөл:

```javascript id="k1m5dt"
const age = 15;

if (age >= 18) {
 console.log("You're eligible to vote"); // Код ажиллахгүй
}
```

Энэ тохиолдолд нөхцөл false тул код ажиллахгүй.

Хэрэв нөхцөл false үед өөр үйлдэл хийхийг хүсвэл else ашиглана:

```javascript id="c7q9pl"
const age = 15;

if (age >= 18) {
 console.log("You're eligible to vote");
} else {
 console.log("You're not eligible to vote"); // You're not eligible to vote
}
```

Энд 15 нь 18-аас бага тул else доторх код ажиллана.

Хэрэв олон нөхцөл шалгах шаардлагатай бол else if ашиглана:

```javascript id="x2v8sz"
const score = 87;

if (score >= 90) {
 console.log('You got an A'); 
} else if (score >= 80) {
 console.log('You got a B'); // You got a B
} else if (score >= 70) {
 console.log('You got a C');
} else {
 console.log('You failed! You need to study more!');
}
```

score нь 87 тул "You got a B" гэж хэвлэгдэнэ.

Ternary оператор нь if/else-ийн товч хувилбар юм. Энэ нь гурван хэсгээс бүрдэнэ: нөхцөл, true үед хийх үйлдэл, false үед хийх үйлдэл.

```javascript id="w4r6hn"
condition ? expressionIfTrue : expressionIfFalse;
```

Жишээ:

```javascript id="z9p3kx"
const temperature = 30;
const weather = temperature > 25 ? 'sunny' : 'cool';

console.log(`It's a ${weather} day!`);
```

Хэрэв temperature нь 25-аас их байвал "It's a sunny day!" гэж хэвлэгдэнэ. Харин 25-аас бага эсвэл тэнцүү байвал "It's a cool day!" гэж хэвлэгдэнэ.

Тэгвэл if/else болон ternary операторын аль нь дээр вэ?

* Энгийн нэг нөхцөл, нэг илэрхийлэлтэй үед ternary ашиглах нь тохиромжтой
* Олон нөхцөлтэй, илүү төвөгтэй логиктой үед if/else ашиглах нь илүү ойлгомжтой

Учир нь ternary-г олон давхар хэрэглэвэл код уншихад төвөгтэй болдог.
