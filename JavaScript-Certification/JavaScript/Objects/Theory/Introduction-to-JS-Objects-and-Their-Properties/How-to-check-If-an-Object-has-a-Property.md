 Объект шинж чанартай (Property) эсэхийг хэрхэн шалгах вэ?

JavaScript-д объект тодорхой нэг шинж чанартай эсэхийг шалгах хэд хэдэн арга байдаг. Эдгээр аргуудыг ойлгох нь объектуудтай үр дүнтэй ажиллахад, ялангуяа гадны эх сурвалжаас ирсэн өгөгдөлтэй ажиллах эсвэл тодорхой шинж чанарыг ашиглахаасаа өмнө байгаа эсэхийг нь баталгаажуулахад маш чухал юм.

Бид дараах түгээмэл аргуудыг судлах болно: `hasOwnProperty()` арга, `Object.hasOwn()` арга, `in` оператор, болон `undefined`-тай харьцуулж шалгах.



#### hasOwnProperty() арга
Эхлээд `hasOwnProperty()` аргаас эхэлцгээе. Энэ арга нь тухайн объект заасан шинж чанарыг өөрийн шинж чанар (own property) болгон агуулж байгаа эсэхийг заасан boolean утга буцаадаг. Жишээ нь:

```javascript
const person = {
  name: "Alice",
  age: 30
};

console.log(person.hasOwnProperty("name")); // true
console.log(person.hasOwnProperty("job")); // false
```

Энэ жишээнд бид `name` болон `age` гэсэн хоёр шинж чанартай `person` нэртэй объекттой байна. `person` объектод `name` шинж чанар байгаа эсэхийг шалгахын тулд бид `hasOwnProperty()` аргыг ашиглаж байна. `name` байгаа тул энэ нь `true` буцаана. Харин `job` шинж чанарыг шалгахад объект дотор байхгүй тул `false` буцаах болно.

#### Object.hasOwn() арга
`Object.hasOwn()` нь объект өөрийн шинж чанартай (удамшсан биш) эсэхийг шалгах орчин үеийн, зөвлөмж болгож буй арга юм. Үүнийг `hasOwnProperty()`-ийн шинэчлэгдсэн, илүү аюулгүй хувилбар гэж ойлгож болно. Бичиглэл нь `Object.hasOwn(object, propertyName)` бөгөөд та объектыг эхний аргументаар, шинж чанарын нэрийг хоёр дахь аргументаар дамжуулна.

Үндсэн жишээг энд харуулав:

```javascript
const person = {
  name: "Alice",
  age: 30
};

console.log(Object.hasOwn(person, "name")); // true
console.log(Object.hasOwn(person, "job")); // false
```

Энэ жишээнд `Object.hasOwn(person, "name")` нь `true` буцааж байна, учир нь `name` нь `person` объект дээр шууд байна. `Object.hasOwn(person, "job")` нь `false` буцаана, учир нь `job` объектыг хэзээ ч нэмээгүй.

Ойлгох ёстой маш чухал зүйл бол `Object.hasOwn()` нь зөвхөн шинж чанар байгаа эсэхийг л шалгадаг бөгөөд шинж чанарын утга нь юу байх нь хамаагүй. Энэ нь утга нь 0, `false`, `null`, эсвэл `undefined` байсан ч `true` буцаана гэсэн үг юм:

```javascript
const user = {
  username: "coder123",
  score: 0,
  isActive: false,
  nickname: null
};

// Object.hasOwn() нь эдгээрийг бүгдийг нь байгаа гэж зөв мэдээлнэ
console.log(Object.hasOwn(user, "score"));    // true  (утга нь 0, гэхдээ шинж чанар нь байна)
console.log(Object.hasOwn(user, "isActive")); // true  (утга нь false, гэхдээ шинж чанар нь байна)
console.log(Object.hasOwn(user, "nickname")); // true  (утга нь null, гэхдээ шинж чанар нь байна)
console.log(Object.hasOwn(user, "email"));    // false (шинж чанарыг хэзээ ч нэмээгүй)

// Аюултай! if() нөхцөлийг шууд ашиглах нь худал (falsy) утгуудын хувьд буруу үр дүн өгдөг
if (user.score) {
  console.log("Has score"); // score байгаа боловч энэ нь хэвлэгдэхгүй!
}

// Аюулгүй! Object.hasOwn() зөв үр дүн өгнө
if (Object.hasOwn(user, "score")) {
  console.log("Has score:", user.score); // Has score: 0
}
```

#### in оператор
Объект дотор шинж чанар байгаа эсэхийг шалгах өөр нэг арга бол `in` операторыг ашиглах явдал юм. `hasOwnProperty()` шиг `in` оператор нь шинж чанар объект дээр байвал `true` буцаана. Үүнийг хэрхэн ашиглахыг энд харуулав:

```javascript
const person = {
  name: "Bob",
  age: 25
};
console.log("name" in person);  // true
```

Энэ жишээнд `"name" in person` нь `true` буцааж байна, учир нь `name` нь `person`-ийн шинж чанар юм.

#### undefined-тай харьцуулж шалгах
Гурав дахь арга нь шинж чанарыг `undefined` эсэхийг шалгах явдал юм. Энэ арга нь хэрэгцээтэй байж болох ч зарим хязгаарлалттай. Жишээ нь:

```javascript
const car = {
  brand: "Toyota",
  model: "Corolla",
  year: 2020
};

console.log(car.brand !== undefined); // true
console.log(car.color !== undefined); // false
```

Энэ кодонд бид `car.brand` болон `car.color` нь `undefined` биш эсэхийг шалгаж байна. Энэ нь ажилладаг учир нь объект дээр байхгүй шинж чанар руу хандахад `undefined` буцаадаг. Гэсэн хэдий ч, хэрэв шинж чанар нь өөрөө илт (explicitly) `undefined` гэсэн утгатай байвал энэ арга нь буруу үр дүн (false negatives) өгч болно.

Практик дээр эдгээр аргуудын сонголт нь ихэвчлэн таны кодын тусгай шаардлагаас хамаардаг. Тэдгээрийн хоорондын ялгааг ойлгох нь өөр өөр нөхцөл байдалд зөв сонголт хийхэд тусална.

---
