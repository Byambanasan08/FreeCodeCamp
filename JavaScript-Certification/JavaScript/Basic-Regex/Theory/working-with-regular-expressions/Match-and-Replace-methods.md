How Can You Match and Replace All Occurrences in a String? 

String доторх бүх давтагдсан хэсгүүдийг хэрхэн match хийж, replace хийх вэ?

---

Одоо string доторх pattern-ийн бүх давталтыг хэрхэн match хийх эсвэл replace хийхийг сурцгаая.

Та өмнө нь replace() болон match() method-уудыг, мөн global g modifier-ийг сурсан. Одоо энэ мэдлэгээ нэгтгэн string доторх бүх pattern-ийг хэрхэн боловсруулахыг үзье. Эхлээд өмнөх match кодоо саная:

```js id="h3k9pz"
const regex = /freeCodeCamp/;
const match = "freeCodeCamp".match(regex);
console.log(match);
```

Үүний үр дүнд гарч байсан match object:

```js id="w8d2nf"
// [
//   'freeCodeCamp',
//   index: 0,
//   input: 'freeCodeCamp',
//   groups: undefined
// ]
```

Харин хэрэв string дотор freecodecamp олон удаа давтагдсан байвал яах вэ? match() хэрхэн ажиллахыг харцгаая. Мөн өмнөх replace() жишээг хамтад нь харьцуулъя:

```js id="m7r4ka"
const regex = /freecodecamp/;
const str = "freecodecamp is the best we love freecodecamp";
const matched = str.match(regex);
const replaced = str.replace(regex, "freeCodeCamp");
console.log(matched);
console.log(replaced);
```

Үр дүн нь:

```js id="q2x6vw"
// [
//   'freecodecamp',
//   index: 0,
//   input: 'freecodecamp is the best we love freecodecamp',
//   groups: undefined
// ]
// freeCodeCamp is the best we love freecodecamp
```

Эндээс харахад match() зөвхөн эхний match-ийг буцааж, replace() зөвхөн эхний match-ийг сольсон байна. Учир нь default-аар эдгээр method-ууд зөвхөн эхний pattern дээр ажилладаг.

Үүнийг шийдэхийн тулд global modifier ашиглана:

```js id="z5n1tp"
const regex = /freecodecamp/g;
const str = "freecodecamp is the best we love freecodecamp";
const matched = str.match(regex);
const replaced = str.replace(regex, "freeCodeCamp");
console.log(matched);
console.log(replaced);
```

Үр дүн:

```js id="p9k3dr"
// [ 'freecodecamp', 'freecodecamp' ]
// freeCodeCamp is the best we love freeCodeCamp
```

Одоо бүх match болон replace зөв ажиллаж байна.

Гэхдээ энд нэг сонирхолтой зүйл бий: match() дээр global modifier ашиглахад capture group болон index зэрэг нэмэлт мэдээлэл алдагддаг.

Аз болоход 2019 оны ECMAScript update-аар matchAll() болон replaceAll() method-ууд нэмэгдсэн.

Эдгээр method-ууд string эсвэл regular expression аргумент авдаг, мөн replaceAll() нь нэмэлтээр солих string авдаг.

Гэхдээ эдгээр method-ууд global modifier байхгүй regex өгвөл алдаа шиддэг. Одоо шинэ method-уудыг ашиглая:

```js id="c4y7mf"
const pattern = "freecodecamp";
const str = "freecodecamp is the best we love freecodecamp";
const matched = str.matchAll(pattern);
const replaced = str.replaceAll(pattern, "freeCodeCamp");
console.log(matched);
console.log(replaced);
```

Үр дүн:

```js id="t1q8zn"
// {}
// freeCodeCamp is the best we love freeCodeCamp
```

replaceAll() зөв ажилласан. Харин matchAll() нь хоосон object мэт харагдаж байна.

Учир нь matchAll() нь Iterator буцаадаг. Энэ нь next() method ашиглан дараагийн утгыг авах боломжтой объект юм.

```js id="v6k2wd"
// RegExpStringIterator { ... }
```

Одоо next() дуудаж харцгаая:

```js id="g7n3xy"
// {
//   "done": false,
//   "value": [
//     "freecodecamp",
//     index: 0,
//     input: "freecodecamp is the best we love freecodecamp",
//     groups: undefined
//   ]
// }
```

next() нь хоёр утга буцаана: done (цааш элемент байгаа эсэх), value (одоогийн утга).

Дахин дуудахад:

```js id="s2p9lm"
const regex = /freecodecamp/g;
const str = "freecodecamp is the best we love freecodecamp";
const matched = str.matchAll(regex);
const replaced = str.replaceAll(regex, "freeCodeCamp");
console.log(matched);
console.log(replaced);
console.log(matched.next());
console.log(matched.next());
```

```js id="d8r4qn"
// {
//   "done": false,
//   "value": ["freecodecamp"]
// }
// {
//   "done": false,
//   "value": ["freecodecamp"]
// }
```

Гурав дахь удаа:

```js id="x5z1wt"
// {
//   "done": false,
//   "value": ["freecodecamp"]
// }
// {
//   "done": false,
//   "value": ["freecodecamp"]
// }
// {
//   "done": true,
//   "value": undefined
// }
```

done true болж байна. Учир нь matchAll() iterator нь lazy буюу хэрэгцээ гарсан үед л дараагийн match-ийг олдог.

Хэрэв бүх match-ийг нэг дор авахыг хүсвэл Array.from() ашиглана:

```js id="k3m7yb"
const regex = /freecodecamp/g;
const str = "freecodecamp is the best we love freecodecamp";
const matched = str.matchAll(regex);
console.log(Array.from(matched));
```

Үр дүн:

```js id="n9v2kc"
// [
//   'freecodecamp',
//   index: 0,
//   input: 'freecodecamp is the best we love freecodecamp',
//   groups: undefined
// ]
//
// [
//   'freecodecamp',
//   index: 33,
//   input: 'freecodecamp is the best we love freecodecamp',
//   groups: undefined
// ]
```

Эдгээр method-ууд нь string-ээс өгөгдөл гаргаж авах, боловсруулахад маш хүчирхэг бөгөөд performance болон уншигдах байдалд нөлөөлөхгүйгээр ажиллах боломж олгодог.
