JavaScript дахь Math объект гэж юу вэ, мөн түгээмэл ямар методууд байдаг вэ?

JavaScript сурч эхлэхэд математик үйлдлүүд хийх нь маш нийтлэг хэрэгцээ болдог. Энгийн арифметик операторууд (нэмэх, хасах гэх мэт) нь суурь тооцооллыг хийж чаддаг ч JavaScript нь илүү нарийн тооцоололд зориулсан Math нэртэй дотоод (built-in) объектыг санал болгодог.

Энэ хэрэгсэл нь төрөл бүрийн метод агуулдаг бөгөөд илүү төвөгтэй тооцооллыг хялбар хийх боломжийг олгодог. Одоо эдгээр методуудыг авч үзье.

Math.random() метод нь 0 (орох) болон 1 (орохгүй)-ийн хооронд санамсаргүй бутархай тоо үүсгэнэ:

```javascript id="a1v8cz"
const randomNum = Math.random();

console.log(randomNum);
// 0 ба 1-ийн хоорондох дурын тоо (0 орно, 1 орохгүй)
```

Math.min() болон Math.max() методууд нь өгөгдсөн тоонууд дундаас хамгийн бага болон хамгийн их утгыг буцаана:

```javascript id="r4k9tn"
const smallest = Math.min(1, 5, 3, 9);
console.log(smallest); // 1

const largest = Math.max(1, 5, 3, 9);
console.log(largest); // 9
```

Эхнийх нь хамгийн бага утга 1-ийг, хоёр дахь нь хамгийн их утга 9-ийг буцаана.

Тоог бүхэл тоонд ойролцоо болгохдоо Math.ceil() болон Math.floor() методуудыг ашиглаж болно.

Math.ceil() нь дээш нь тоймлоно:

```javascript id="g7n2sx"
console.log(Math.ceil(4.3)); // 5
```

Math.floor() нь доош нь тоймлоно:

```javascript id="w5m3qp"
console.log(Math.floor(4.7)); // 4
```

Math.round() нь хамгийн ойрын бүхэл тоо руу тоймлоно:

```javascript id="z8c1lv"
console.log(Math.round(2.3)); // 2
console.log(Math.round(4.5)); // 5
console.log(Math.round(4.8)); // 5
```

Хэрэв бутархайн хэсэг 0.5-аас бага бол доош, 0.5 ба түүнээс их бол дээш тоймлогдоно.

Math.random() болон Math.floor()-ийг хамтад нь ашиглан тодорхой хүрээнд санамсаргүй бүхэл тоо үүсгэж болно:

```javascript id="k3x9bf"
const max = 10;
const min = 5;
const randomNum = Math.floor(Math.random() * (max - min + 1)) + min;
console.log(randomNum);
```

1-ээс 20 хүртэл санамсаргүй тоо үүсгэх жишээ:

```javascript id="p6t4yd"
const randomNumBtw1And20 = Math.floor(Math.random() * 20) + 1;
console.log(randomNumBtw1And20);
```

Math.trunc() нь тооны бутархай хэсгийг хасаж зөвхөн бүхэл хэсгийг буцаана (тоймлохгүй):

```javascript id="n2q7rs"
console.log(Math.trunc(2.9)); // 2
console.log(Math.trunc(9.1)); // 9
```

Math.sqrt() болон Math.cbrt() нь квадрат язгуур болон куб язгуурыг олно:

```javascript id="d5m8xu"
console.log(Math.sqrt(81)); // 9
console.log(Math.cbrt(27)); // 3
```

81-ийн квадрат язгуур 9, 27-ийн куб язгуур 3 байна.

Math.abs() нь тооны абсолют утгыг буцаана:

```javascript id="y9v2ke"
console.log(Math.abs(-5)); // 5
console.log(Math.abs(5)); // 5
```

Сөрөг тоог эерэг болгож буцаана.

Math.pow() нь зэрэгт дэвшүүлэхэд ашиглагдана:

```javascript id="c4r1hj"
console.log(Math.pow(2, 3)); // 8
console.log(Math.pow(8, 2)); // 64
```

Энд эхний тоог хоёр дахь тооны зэрэгт дэвшүүлж байна.

Math объектод үүнээс гадна олон метод байдаг бөгөөд та цаашид өөрөө судлах боломжтой. Гэхдээ дээрх методууд нь JavaScript кодод хамгийн өргөн хэрэглэгддэгүүдийн нэг юм.
