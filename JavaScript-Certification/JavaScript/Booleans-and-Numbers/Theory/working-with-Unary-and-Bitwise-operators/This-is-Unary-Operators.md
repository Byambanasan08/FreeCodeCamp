Unary оператор гэж юу вэ, тэдгээр нь хэрхэн ажилладаг вэ?

Unary операторууд нь нэг операнд дээр үйлдэл хийж, төрөл хувиргах, утга өөрчлөх, эсвэл тодорхой нөхцөл шалгах зэрэг үйлдлүүдийг гүйцэтгэдэг. Одоо түгээмэл хэрэглэгддэг unary операторуудыг авч үзье.

1. Unary plus (+) оператор нь өөрийн операндын утгыг number төрөлд хөрвүүлдэг. Хэрэв операнд аль хэдийн number байвал өөрчлөгдөхгүй.

```javascript id="2a8xqk"
const str = '42';
const strToNum = +str;

console.log(strToNum); // 42
console.log(typeof str); // string
console.log(typeof strToNum); // number
```

Unary plus нь утгыг заавал тоон төрөлтэй болгох шаардлагатай үед хэрэгтэй. Үүнтэй төстэй
2. Unary negation (-) оператор байдаг бөгөөд энэ нь утгын тэмдгийг эсрэг болгож өөрчилдөг.

```javascript id="g9m1lp"
const str = '42';
const strToNegativeNum = -str;

console.log(strToNegativeNum); // -42
console.log(typeof str); // string
console.log(typeof strToNegativeNum); // number
```

3. Logical NOT оператор (!) нь мөн unary оператор бөгөөд boolean утгыг эсрэг болгож өөрчилдөг. Хэрэв утга true бол false, false бол true болно.

```javascript id="7y3kds"
let isOnline = true;
console.log(!isOnline); // false

let isOffline = false;
console.log(!isOffline); // true
```

4. Bitwise NOT оператор (~) нь харьцангуй бага хэрэглэгддэг unary оператор юм. Энэ нь тооны binary (хоёртын) дүрслэлийг урвуулдаг. Компьютер нь тоонуудыг binary (1 болон 0)-оор хадгалдаг. ~ оператор нь бүх 1-ийг 0 болгож, 0-ийг 1 болгодог.

```javascript id="z4nq1b"
const num = 5; // 5-ийн binary нь 00000101

console.log(~num); // -6
```

Энэ жишээнд 5 нь -6 болж байна. Учир нь ~ операторыг хэрэглэснээр -(5 + 1) буюу -6 гардаг. Энэ нь two's complement (хоёрын нэмэлт) гэж нэрлэгдэх binary дахь сөрөг тоог илэрхийлэх аргаас хамаардаг. Та binary болон битийн талаар дараагийн хичээлүүдэд илүү дэлгэрэнгүй судлах болно.

5. void түлхүүр үг нь unary оператор бөгөөд илэрхийллийг үнэлээд undefined утга буцаадаг.

```javascript id="9w0c2v"
const result = void (2 + 2);

console.log(result); // undefined
```

void нь мөн hyperlink дээр navigation-ийг зогсоох зорилгоор ашиглагддаг:

```html id="8f3lkm"
<a href="javascript:void(0);">Click Me</a>
```

Эцэст нь 

6. typeof оператор байна. Та үүнийг өмнөх хичээлүүдэд үзсэн. Энэ нь операндын төрлийг string хэлбэрээр буцаадаг.

```javascript id="c1q7xr"
const value = 'Hello world';

console.log(typeof value); // string
```
