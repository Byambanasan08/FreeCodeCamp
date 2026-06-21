What Are Some Common Regular Expression Modifiers Used for Searching? 

Хайлт хийхэд ашиглагддаг түгээмэл Regular Expression modifier-ууд юу вэ?

---

Modifiers буюу “flags” нь regular expression-ийн зан үйлийг өөрчилдөг. Өмнөх хичээлээс жишээгээ саная:

```js id="m3q8kp"
const regex = /freeCodeCamp/;
console.log(regex.test("freeCodeCamp")); // true
console.log(regex.test("freeCodeCamp is great")); // true
console.log(regex.test("I love freeCodeCamp")); // true
console.log(regex.test("freecodecamp")); // false
console.log(regex.test("FREECODECAMP")); // false
console.log(regex.test("free")); // false
console.log(regex.test("code")); // false
console.log(regex.test("camp")); // false
```

Та санаж байвал, бүх жижиг үсгээр болон бүх том үсгээр бичигдсэн freeCodeCamp string-үүд match болоогүй. Учир нь default-аар regular expression нь case-sensitive байдаг.

Харин хэрэв бид regular expression-ийг case-insensitive болгохыг хүсвэл яах вэ? Үүний тулд modifier байдаг. i flag нь regex-ийг case-insensitive болгодог.

Flags нь regular expression-ийн төгсгөлийн forward slash-ийн дараа бичигддэг:

```js id="z9p2fw"
const regex = /freeCodeCamp/i;
```

Энэ өөрчлөлтөөс хойш үр дүнг харцгаая:

```js id="x4d7hr"
const regex = /freeCodeCamp/i;

console.log(regex.test("freeCodeCamp")); // true
console.log(regex.test("freeCodeCamp is great")); // true
console.log(regex.test("I love freeCodeCamp")); // true
console.log(regex.test("freecodecamp")); // true
console.log(regex.test("FREECODECAMP")); // true
console.log(regex.test("free")); // false
console.log(regex.test("code")); // false
console.log(regex.test("camp")); // false
```

Одоо regex case-insensitive болсон тул бүх жижиг болон бүх том үсгийн string-үүд match болж байна. Мөн том жижиг үсэг холилдсон string дээр ч ажиллана:

```js id="k7r3qn"
const regex = /freeCodeCamp/i;

console.log(regex.test("dO yOu LoVe fReEcOdEcAmP?")); // true
```

Өөр олон flag-ууд байдаг. g flag буюу global modifier нь regex-ийг нэг pattern-ийг олон удаа match хийх боломжтой болгодог.

```js id="p8m6zt"
const regex = /freeCodeCamp/gi;
```

Гэхдээ энд сонирхолтой зүйл гарч ирнэ. Зарим string-үүд match болох ёстой байхад false буцааж байна:

```js id="v2x9sh"
const regex = /freeCodeCamp/gi;

console.log(regex.test("freeCodeCamp")); // true
console.log(regex.test("freeCodeCamp is great")); // false
console.log(regex.test("I love freeCodeCamp")); // true
console.log(regex.test("freecodecamp")); // false
console.log(regex.test("FREECODECAMP")); // true
console.log(regex.test("free")); // false
console.log(regex.test("code")); // false
console.log(regex.test("camp")); // false
```

Яагаад вэ? Учир нь global modifier нь regex-ийг stateful болгодог. Энэ нь өмнө хаана match хийснээ санаж байдаг гэсэн үг.

freeCodeCamp дээр match хийсний дараа index 0-оос эхэлсэн match-ийг санана.

freeCodeCamp is great дээр шалгахад index 0-оос эхлэхгүй тул match хийхгүй. Учир нь өмнөх match index 11 дээр дууссан тул дараагийн match 12-оос эхэлнэ. Харин is great нь freeCodeCamp-тэй таарахгүй тул false буцаана.

Match олдохгүй үед state reset болж дахин 0-оос эхэлнэ.

Дараах байдлаар туршиж болно:

```js id="y6n2ka"
const regex = /freeCodeCamp/gi;

console.log(regex.test("freeCodeCamp")); // true
console.log(regex.test("I loooooooove freeCodeCamp")); // true
```

Global regex нь lastIndex гэсэн property-тэй болдог. Үүнийг харцгаая:

```js id="q3w7df"
const regex = /freeCodeCamp/gi;

console.log(regex.lastIndex); // 0
console.log(regex.test("freeCodeCamp")); // true
console.log(regex.lastIndex); // 12
console.log(regex.test("freeCodeCamp is great")); // false
console.log(regex.lastIndex); // 0
console.log(regex.test("I love freeCodeCamp")); // true
console.log(regex.lastIndex); // 19
console.log(regex.test("freecodecamp")); // false
console.log(regex.lastIndex); // 0
console.log(regex.test("FREECODECAMP")); // true
console.log(regex.lastIndex); // 12
console.log(regex.test("free")); // false
console.log(regex.lastIndex); // 0
console.log(regex.test("code")); // false
console.log(regex.lastIndex); // 0
console.log(regex.test("camp")); // false
```

Энд lastIndex хэрхэн өөрчлөгдөж байгааг харж болно.

Global flag нь нэг string дотор олон match авахад тохиромжтой. Харин олон string дээр test хийх бол g flag-ийг хэрэглэхгүй байх нь дээр.

Дараагийн flag-ийг ойлгохын тулд anchor-уудыг мэдэх хэрэгтэй.

Caret (^) anchor нь string-ийн эхлэлийг match хийнэ:

```js id="h5v2zo"
const start = /^freecodecamp/i;
```

Dollar ($) anchor нь string-ийн төгсгөлийг match хийнэ:

```js id="d8k3pn"
const end = /freecodecamp$/i;
```

Жишээ:

```js id="c1r7ym"
const start = /^freecodecamp/i;
const end = /freecodecamp$/i;
console.log(start.test("freecodecamp")); // true
console.log(end.test("freecodecamp")); // true
console.log(start.test("freecodecamp is great")); // true
console.log(end.test("freecodecamp is great")); // false
console.log(start.test("i love freecodecamp")); // false
console.log(end.test("i love freecodecamp")); // true
console.log(start.test("have met freecodecamp's founder")); // false
console.log(end.test("have met freecodecamp's founder")); // false
```

start нь эхлэл дээр, end нь төгсгөл дээр match хийж байгааг харж болно.

Гэхдээ олон мөртэй string дээр:

```js id="p6t9wr"
const start = /^freecodecamp/i;
const end = /freecodecamp$/i;
const string = `I really love
freecodecamp
it's my favorite`;
console.log(start.test(string)); // false
console.log(end.test(string)); // false
```

freecodecamp дунд мөрөнд байгаа ч match болохгүй. Учир нь default-аар anchor нь бүх string-ийн эхлэл/төгсгөлийг хардаг.

m flag буюу multiline modifier ашиглавал:

```js id="r4n8kx"
const start = /^freecodecamp/im;
const end = /freecodecamp$/im;
const string = `I really love
freecodecamp
it's my favorite`;
console.log(start.test(string)); // true
console.log(end.test(string)); // true
```

Одоо match болж байна.

d flag буюу indices modifier нь match object-д нэмэлт мэдээлэл өгдөг:

```js id="t9p6vy"
const regex = /freecodecamp/di;
const string = "we love freecodecamp isn't freecodecamp great?";
console.log(string.match(regex));
```

Үр дүн:

```js id="u2z3wd"
// [
//   'freecodecamp',
//   index: 8,
//   input: "we love freecodecamp isn't freecodecamp great?",
//   groups: undefined,
//   indices: [
//     0: [8, 20],
//     groups: undefined
//   ]
// ]
```

indices нь match эхлэх болон дуусах индексийг харуулна.

Мөн бусад flag-ууд бий.

u flag (unicode modifier) нь unicode тэмдэгтүүдийг match хийх боломж олгодог:

```js id="n8y4ps"
const regex = /🍎/u;

const str = "I have an apple 🍎";
console.log(regex.test(str)); // true
```

v flag нь unicode matching-ийг илүү өргөтгөнө.

y flag (sticky modifier) нь global-тэй төстэй боловч lastIndex дээр яг match байхгүй бол null буцааж, lastIndex-ийг 0 болгодог.

s flag (single-line modifier) нь . (wildcard) тэмдэгтийг line break-уудыг ч match хийх боломжтой болгодог.

Эдгээрээс i болон g flag-ууд хамгийн их ашиглагддаг бөгөөд хамгийн чухал нь юм.
