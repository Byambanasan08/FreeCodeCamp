**Lookahead болон Lookbehind Assertions гэж юу вэ, мөн тэд хэрхэн ажилладаг вэ?**

Lookahead болон lookbehind assertions нь тухайн pattern-ийн өмнө эсвэл дараа ямар pattern байгаа эсэхээс (эсвэл байхгүйгээс) хамааран тааруулалт (match) хийх боломж олгодог. Эдгээр assertion-уудын дөрвөн төрөл байдаг.

Эхнийх нь positive lookahead assertion юм. Энэ assertion нь нэг pattern-ийн дараа өөр pattern дагаж байвал тааруулалт хийнэ.

Positive lookahead үүсгэхийн тулд эхлээд та тааруулахыг хүсэж буй pattern-аа бичнэ. Дараа нь нөхцөл (condition) болгон ашиглах pattern-аа хаалт (parentheses)-д хийж бичнэ. Нээх хаалтын дараа ?= гэж бичиж тухайн pattern-ийг positive lookahead гэж тодорхойлно.

Энэ pattern нь зөвхөн free гэдэг үгийг, хэрвээ түүний дараа code байвал л тааруулна:

```js
const regex = /free(?=code)/i;
```

Одоо энэ pattern-ийн үйлдлийг шалгая:

```js
const regex = /free(?=code)/i;
console.log(regex.test("freeCodeCamp")); // true
console.log(regex.test("free code camp")); // false
console.log(
  regex.test("I need someone for free to write code for me")
); // false
```

Энд free гэдэг үгийн дараа шууд code орж байгаа string л test-ийг давж байгааг анзаараарай.

Харин хэрвээ та free гэдэг үгийг code-оор дагагдаагүй (NOT followed by code) үед тааруулахыг хүсвэл яах вэ? Та positive lookahead-ийг negative lookahead болгож behavior-ийг нь урвуулж (invert) болно. Үүнийг хийхийн тулд ?=-г ?! болгон өөрчилнө:

```js
const regex = /free(?!code)/i;
```

Одоо үүнийг өмнөх string-үүд дээр шалгая:

```js
const regex = /free(?!code)/i;
console.log(regex.test("freeCodeCamp")); // false
console.log(regex.test("free code camp")); // true
console.log(
  regex.test("I need someone for free to write code for me")
); // true
```

Хүлээгдэж байсанчлан үр дүн эсрэгээрээ (reversed) гарч байна. free гэдэг үгийн дараа шууд code орж байгаа эхний string л test-ийг давж чадахгүй байна.

Lookbehind assertions нь lookahead-тэй төстэй ажилладаг, гэхдээ дараах pattern-ийг биш, харин өмнөх pattern-ийг үндэслэн (based on a preceding pattern) нөхцөлтэйгээр тааруулдаг. Одоо positive lookbehind-ийг харцгаая.

Positive lookbehind нь ?= биш, харин ?<= гэж бичигддэг. Одоо free-ийн дараа биш, харин free-ийн өмнө орсон үед code-ийг тааруулах regular expression бичье:

```js
const regex = /(?<=free)code/i;
```
Манай positive lookahead-тэй адил, positive lookbehind нь code гэдэг үгийн өмнө шууд free орсон тохиолдолд эхний string-ийг тааруулж байна:

```js
const regex = /(?<=free)code/i;
console.log(regex.test("freeCodeCamp")); // true
console.log(regex.test("free code camp")); // false
console.log(
  regex.test("I need someone for free to write code for me")
); // false
```

code гэдэг үг free-ээр ӨМНӨ нь дагагдаагүй (NOT preceded by free) үед тааруулахын тулд бид negative lookbehind ашиглаж болно. Negative lookbehind нь ?<=-ийг ?<! болгож сольсноор тодорхойлогдоно:

```js
const regex = /(?<!free)code/i;
```

Энэ нь free-ээр шууд өмнө нь дагагдаагүй code-ийн бүх тохиолдлыг тааруулна:

```js
const regex = /(?<!free)code/i;
console.log(regex.test("freeCodeCamp")); // false
console.log(regex.test("free code camp")); // true
console.log(
  regex.test("I need someone for free to write code for me")
); // true
```

Regex.prototype.test нь зөвхөн string нь regular expression-т таарч байгаа эсэхийг л баталгаажуулдаг гэдгийг санаарай. Одоо negative lookbehind-ийг String.prototype.match-тэй хамт ашиглаж, assertion нь хэрхэн нөлөөлж байгааг харцгаая:

```js
const regex = /(?<!free)code/i;
console.log("freeCodeCamp".match(regex)); // null
console.log("free code camp".match(regex)); // ['code', index: 5, input: 'free code camp', groups: undefined]
console.log(
  "I need someone for free to write code for me".match(regex)
); // ['code', index: 33, input: 'I need someone for free to write code for me', groups: undefined]
```

Манай regular expression нь free байгаа эсэхийг шалгахын тулд lookbehind ашиглаж байгаа боловч free өөрөө match-д орж ирэхгүй байгааг анзаараарай. Match-д орж ирж байгаа цорын ганц текст бол code юм.

Lookahead болон lookbehind нь match-ийн буцаагдах утгад (returned value) нөлөөлөхгүйгээр, нөхцөлтэй (conditionally) текст тааруулахад маш хэрэгтэй хэрэгсэл юм.
