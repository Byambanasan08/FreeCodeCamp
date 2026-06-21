What Are Regular Expressions, and What Are Some Common Methods? 

Regular expression гэж юу вэ, мөн түгээмэл ямар method-ууд байдаг вэ?

---

Regular expressions буюу regex нь олон төрлийн програмчлалын хэлнүүдэд дэмжигддэг боломж юм.

Regular expression гэдэг нь “pattern” үүсгэх тусгай синтакс бөгөөд үүнийг string-тэй тулгаж шалгах, текст задлах (extract хийх) болон бусад үйлдэлд ашиглаж болно.

Энгийн regular expression-ийн жишээг харцгаая:

```js id="k2n9vx"
const regex = /freeCodeCamp/;
```

JavaScript-д regular expression-ийг хоёр forward slash (/) хооронд pattern бичиж тодорхойлдгийг анзаараарай. Үүнийг comment-тэй андуурах хэрэггүй, comment-д текст нь хоёр slash-ийн дараа бичигддэг.

Энэ regular expression нь string доторх freeCodeCamp гэсэн текстийг (том C үсгүүдтэй нь) хаана ч байсан тааруулж (match) чадна. Харин үүнийг яаж ашиглах вэ?

Эндээс бидний эхний method болох test() method гарч ирнэ. test() method нь RegExp object дээр байдаг бөгөөд энэ нь regular expression-ийг төлөөлсөн объект юм (жишээ нь бидний дээр үүсгэсэн regex).

test() method нь string аргумент авч, тухайн string нь regular expression-тэй таарч байгаа эсэхийг шалгана. Жишээ нь:

```js id="q8m3zt"
const regex = /freeCodeCamp/;
const test = regex.test("e");
console.log(test);
```

Энд бид regex дээр test() method дуудаж, "e" гэсэн string-ийг дамжуулсан байна.

test() method false буцаасан, учир нь "e" string нь freeCodeCamp pattern-тэй таарахгүй. freeCodeCamp pattern дотор "e" байгаа ч гэсэн regular expression ийм байдлаар ажилладаггүй.

Дараах жишээнүүдийг харцгаая:

```js id="x5p2vd"
const regex = /freeCodeCamp/;
console.log(regex.test("freeCodeCamp"));
console.log(regex.test("freeCodeCamp is great"));
console.log(regex.test("I love freeCodeCamp"));
console.log(regex.test("freecodecamp"));
console.log(regex.test("FREECODECAMP"));
console.log(regex.test("free"));
console.log(regex.test("code"));
console.log(regex.test("camp"));
```

Эхний гурван string true буцаана, учир нь эдгээр string-үүд бүгд freeCodeCamp текстийг яг тэр чигээр нь агуулж байна.

5 болон 6 дахь мөрүүд false буцаана. Учир нь freecodecamp текст байгаа ч үсгийн том, жижиг ялгаа тохирохгүй байна. Regular expression нь default-аар case-sensitive байдаг.

Сүүлийн гурван string нь pattern-ийн зөвхөн хэсгийг агуулж байгаа боловч бүтэн pattern байхгүй тул таарахгүй.

test() method нь boolean утга буцаадаг бөгөөд string нь regular expression-тэй таарч байгаа эсэхийг илэрхийлдэг.

Харин илүү дэлгэрэнгүй мэдээлэл авахыг хүсвэл string-д match() method байдаг. Энэ method нь regular expression аргумент авдаг (мөн string дамжуулж болох бөгөөд тэр нь regular expression болгон хувирна).

match() method нь match array буцаадаг. Энэ array ямар байдаг вэ гэдгийг харцгаая:

```js id="r7d4mc"
const regex = /freeCodeCamp/;
const match = "freeCodeCamp".match(regex);
console.log(match);
```

Үүнийг ажиллуулбал array буцна. Гэхдээ энэ нь энгийн array биш, нэмэлт property-уудтай байдаг:

```js
// [
//   'freeCodeCamp',
//   index: 0,
//   input: 'freeCodeCamp',
//   groups: undefined
// ]
```

groups property нь capture хийсэн бүлгүүдийг харуулна (энэ тухай дараагийн хичээлд үзнэ).

index property нь match string дотор аль байрлалд олдсоныг харуулна. Манай жишээнд эхэнд нь олдсон.

input property нь match() method дуудагдсан анхны string-ийг харуулна.

Дараах жишээнүүдийг дахин харцгаая:

```js id="y2c8ka"
const regex = /freeCodeCamp/;
console.log("freeCodeCamp".match(regex));
console.log("freeCodeCamp is great".match(regex));
console.log("I love freeCodeCamp".match(regex));
console.log("freecodecamp".match(regex));
console.log("FREECODECAMP".match(regex));
console.log("free".match(regex));
```

Эхний гурван string match буцаана:

```js
// ['freeCodeCamp', index: 0, input: 'freeCodeCamp', groups: undefined]
// ['freeCodeCamp', index: 0, input: 'freeCodeCamp is great', groups: undefined]
// ['freeCodeCamp', index: 7, input: 'I love freeCodeCamp', groups: undefined]
```

input болон index нь string-ээс хамаарч өөрчлөгдөж байгааг харж болно.

Харин үлдсэн гурван мөр null буцаана, учир нь match байхгүй.

Одоо бид string-ийг шалгаж, match хийж чаддаг боллоо. Харин string-ийн агуулгыг солих (replace) хэрэгтэй бол яах вэ? Жишээ нь freecodecamp-ийг зөв бичиглэлтэй болгохыг хүсэж байж болно.

Эхлээд lowercase freecodecamp-г match хийх regex үүсгэж, test string тодорхойлно:

```js id="n4t6zb"
const regex = /freecodecamp/;
const str = "freecodecamp is rly kewl";
```

String-д replace() method байдаг бөгөөд энэ нь хоёр аргумент авдаг: match хийх regex (эсвэл string), мөн солих утга (эсвэл function).

freecodecamp-г зөв бичиглэлтэй болгоё:

```js id="p9w3rk"
const regex = /freecodecamp/;
const str = "freecodecamp is rly kewl";
const replaced = str.replace(regex, "freeCodeCamp");
console.log(replaced);
```

replace() method нь шинэчилсэн string буцаадаг бөгөөд match болсон хэсгийг шинэ утгаар сольсон байна.

Regular expression болон түүнтэй холбоотой method-ууд нь эхэндээ төвөгтэй санагдаж магадгүй. Гэхдээ дараагийн хичээлүүдэд та илүү дэлгэрэнгүй судлах боломжтой болно.
