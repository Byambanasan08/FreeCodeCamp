isNaN хэрхэн ажилладаг вэ?

JavaScript-д NaN нь "Not a Number" буюу “тоо биш” гэсэн утгатай тусгай утга юм. Энэ нь тоон үр дүн гаргах ёстой боловч утга тодорхойгүй эсвэл боломжгүй үед үүсдэг. NaN нь global объектын нэг шинж бөгөөд JavaScript-д number төрөлд хамаардаг нь анх харахад ойлгомжгүй санагдаж магадгүй.

NaN ихэвчлэн утга тодорхойлох боломжгүй математик үйлдлээс үүсдэг. Жишээ нь:

```javascript id="b3x7kf"
let result = 0 / 0;
console.log(result); // NaN
```

0-ийг 0-д хуваах нь математикт тодорхойгүй тул JavaScript NaN буцаадаг. NaN-ийн нэг онцлог шинж нь өөртэйгөө ч тэнцүү биш байдаг:

```javascript id="m9q2dv"
console.log(NaN === NaN); // false
```

Энэ онцлог нь NaN-ийг энгийн харьцуулалтын оператороор шалгахад хүндрэл учруулдаг. Үүнийг шийдэхийн тулд JavaScript isNaN() функцийг санал болгодог.

isNaN() функц нь утга NaN мөн эсэхийг шалгахад ашиглагддаг. Гэхдээ энэ нь заримдаа санаанд оромгүй үр дүн гаргаж болдог. Учир нь isNaN() нь эхлээд утгыг number төрөлд хөрвүүлэхийг оролддог.

```javascript id="k5p8xn"
console.log(isNaN(NaN));       // true
console.log(isNaN(undefined)); // true
console.log(isNaN({}));        // true

console.log(isNaN(true));      // false
console.log(isNaN(null));      // false
console.log(isNaN(37));        // false

console.log(isNaN("37"));      // false
console.log(isNaN("37.37"));   // false
console.log(isNaN(""));        // false
console.log(isNaN(" "));       // false

console.log(isNaN("blabla"));  // true
```

Эндээс харахад isNaN() нь утгыг эхлээд number болгон хөрвүүлж чадвал false, харин хөрвүүлж чадахгүй бол true буцаадаг.

Ийм зөрчилтэй байдал үүсэхээс сэргийлэхийн тулд ES6 (2015 онд гарсан JavaScript-ийн хувилбар) дээр Number.isNaN() методыг нэвтрүүлсэн. Энэ нь утгыг хөрвүүлэхгүй, зөвхөн яг NaN эсэхийг шалгана:

```javascript id="d2v6ms"
console.log(Number.isNaN(NaN));        // true
console.log(Number.isNaN(Number.NaN)); // true
console.log(Number.isNaN(0 / 0));      // true

console.log(Number.isNaN("NaN"));      // false
console.log(Number.isNaN(undefined));  // false
console.log(Number.isNaN({}));         // false
console.log(Number.isNaN("blabla"));   // false
```

Number.isNaN() нь илүү найдвартай шалгалт хийдэг, ялангуяа төрөл хувиргалтаас (type coercion) үүсэх гэнэтийн үр дүнгээс зайлсхийхэд тустай.

Практикт тоон үйлдэл хийх үед эсвэл хэрэглэгчийн оруулсан утгыг шалгахдаа NaN эсэхийг шалгах шаардлагатай байдаг:

```javascript id="q8r1zy"
let a = 0;
let b = 0;
let result = a / b;

if (Number.isNaN(result)) {
  result = "Error: Division resulted in NaN";
}

console.log(result); // "Error: Division resulted in NaN"
```

Энд бид хуваах үйлдлийн үр дүн NaN болсон эсэхийг шалгаж, алдааг зөв байдлаар зохицуулж байна.

NaN болон түүнийг зөв шалгах аргыг ойлгох нь ялангуяа математик тооцоолол болон хэрэглэгчийн оролттой ажиллах үед найдвартай JavaScript код бичихэд маш чухал юм.
