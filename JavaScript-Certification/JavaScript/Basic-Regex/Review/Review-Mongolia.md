# JavaScript Regular Expressions тойм

**1. Regular Expressions болон түгээмэл аргууд (Common Methods)**

**1.1 Тодорхойлолт (Definition):** Regular Expressions, эсвэл Regex, нь “pattern” үүсгэхэд ашиглагддаг бөгөөд үүнийг дараа нь string-ийг шалгах, текст гаргаж авах (extract text), болон бусад олон зүйлд ашиглаж болно.

```js
const regex = /freeCodeCamp/;
```

**1.2 test() Method:** Энэ method нь string хүлээн авдаг бөгөөд тэр нь regular expression-тэй match болж байгаа эсэхийг шалгах string юм. Энэ method нь тухайн string regex-тэй таарч байвал boolean утга буцаана.

```js
const regex = /freeCodeCamp/;
const test = regex.test("e");
console.log(test); // false
```

**1.3 match() Method:** Энэ method нь regular expression хүлээн авдаг, гэхдээ та мөн string дамжуулж болно, тэгвэл тэр нь regular expression болгон хөрвүүлэгдэнэ. match method нь тухайн string-ийн match array-г буцаана.

```js
const regex = /freeCodeCamp/;
const match = "freeCodeCamp".match(regex);
console.log(match); // ['freeCodeCamp', index: 0, input: 'freeCodeCamp', groups: undefined]
```

**1.4 replace() Method:** Энэ method нь хоёр аргумент хүлээн авдаг: match хийх regular expression (эсвэл string), мөн match болсон хэсгийг орлуулах string (эсвэл match бүр дээр ажиллуулах function).

```js
const regex = /Jessica/;
const str = "Jessica is rly kewl";
const replaced = str.replace(regex, "freeCodeCamp");
console.log(replaced); // "freeCodeCamp is rly kewl"
```

**1.5 replaceAll Method:** Энэ method нь тодорхой pattern-ийн бүх тохиолдлыг шинэ string-ээр солиход ашиглагддаг. Хэрвээ та global modifier-гүй regular expression өгвөл энэ method алдаа (error) шиднэ.

```js
const text = "I hate JavaScript! I hate programming!";
const newText = text.replaceAll("hate", "love");
console.log(newText); // "I love JavaScript! I love programming!"
```

**1.6 matchAll Method:** Энэ method нь string доторх өгөгдсөн regular expression-ийн бүх match-уудыг, capturing group-уудын хамт, авахад ашиглагддаг бөгөөд iterator хэлбэрээр буцаана. Iterator гэдэг нь collection доторх item-уудыг нэг нэгээр нь дамжин үзэх (iterate over) боломж олгодог object юм.

```js
const str = "JavaScript, Python, JavaScript, Swift, JavaScript";
const regex = /JavaScript/g;

const iterator = str.matchAll(regex);

for (let match of iterator) {
  console.log(match[0]); // "JavaScript" for each match
}
```

**2. Regular Expression Modifiers**

**2.1 Тодорхойлолт (Definition):** Modifiers, ихэвчлэн “flags” гэж нэрлэгддэг, нь regular expression-ийн үйлдлийг өөрчилдөг.

**2.2 i Flag:** Энэ flag нь regex-ийг том, жижиг үсгийг ялгахгүй (ignore case) болгодог.

```js
const regex = /freeCodeCamp/i;
console.log(regex.test("freecodecamp")); // true
console.log(regex.test("FREECODECAMP")); // true
```

**2.3 g Flag:** Энэ flag, эсвэл global modifier, нь таны regular expression-д нэг pattern-ийг нэгээс олон удаа тааруулах боломж олгодог.

```js
const regex = /freeCodeCamp/gi;
console.log(regex.test("freeCodeCamp")); // true
console.log(regex.test("freeCodeCamp is great")); // false
```

**2.4 Anchor Definition:** Regular expression-ийн эхэнд байгаа ^ anchor нь “string-ийн эхлэлийг тааруул” гэсэн утгатай. Regular expression-ийн төгсгөлд байгаа $ anchor нь “string-ийн төгсгөлийг тааруул” гэсэн утгатай.

```js
const start = /^freeCodeCamp/i;
const end = /freeCodeCamp$/i;
console.log(start.test("freecodecamp")); // true
console.log(end.test("freecodecamp")); // true
```

**2.5 m Flag:** Anchor-ууд нь бүхэл string-ийн эхлэл болон төгсгөлийг хайдаг. Харин та regex-ийг m flag, эсвэл multi-line modifier ашиглан олон мөр (multiple lines)-тэй ажилладаг болгож болно.flag, эсвэл multi-line modifier.

```js
const start = /^freecodecamp/im;
const end = /freecodecamp$/im;
const str = `I love 
freecodecamp
it's my favorite
`;
console.log(start.test(str)); // true
console.log(end.test(str)); // true
```

**2.6 d Flag:** Энэ flag нь match object-оос авах мэдээллийг өргөжүүлдэг.

```js
const regex = /freecodecamp/di;
const string = "we love freecodecamp isn't freecodecamp great?";
console.log(string.match(regex));
```

Мөн үр дүн нь:

```js
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

**2.7 u Flag:** Энэ нь regular expression-ийн боломжийг өргөжүүлж, special unicode characters-ийг тааруулах боломж олгодог. u flag нь most emoji-г тааруулахад ашиглагддаг Extended_Pictographic зэрэг тусгай class-уудад хандах боломж олгодог. Мөн v flag гэж байдаг бөгөөд энэ нь unicode matching-ийн үйлдлийг бүр цааш нь өргөжүүлдэг.

**2.8 y Flag:** sticky modifier нь global modifier-тэй маш төстэй ажилладаг, гэхдээ хэд хэдэн ялгаатай. Хамгийн том ялгаа нь global regular expression нь lastIndex-оос эхлээд string-ийн үлдсэн бүх хэсгээс дараагийн match-ийг хайдаг, харин sticky regular expression нь хэрвээ өмнөх lastIndex дээр шууд match байхгүй бол null буцааж, lastIndex-ийг 0 болгож reset хийдэг.

**2.9 s Flag:** single-line modifier нь regex дахь . тэмдэгтээр илэрхийлэгддэг wildcard character-д linebreak-уудыг тааруулах боломж олгодог — өөрөөр хэлбэл string-ийг нэг мөр текст мэт (as a single line of text) авч үздэг.

**3. Character Classes**

**3.1 Wildcard .:** Character classes нь тэмдэгтүүдийн багц (sets) эсвэл дэд багцыг (subsets) тааруулахад ашиглагддаг тусгай синтакс юм. Таны сурах ёстой хамгийн эхний character class бол wildcard class юм. Wildcard нь цэг (period), буюу dot (.) тэмдэгтээр илэрхийлэгддэг бөгөөд line break-уудаас бусад ЯМАР Ч нэг тэмдэгтийг тааруулна. Харин wildcard class-ийг line break-тэй тааруулахын тулд s flag ашиглах шаардлагатай.

```js
const regex = /a./;
```

**3.2 \d:** Энэ нь string доторх бүх цифр (0-9)-ийг тааруулна.

```js
const regex = /\d/;
```

**3.3 \w:** Энэ нь string доторх дурын word character (a-z0-9*)-ийг тааруулахад ашиглагдана. Word character гэдэг нь a-аас z хүртэлх үсэг, эсвэл 0-оос 9 хүртэлх тоо, эсвэл underscore (*) тэмдэгт юм.

```js
const regex = /\w/;
```

**3.4 \s:** White-space class болох \s нь backslash () дараа s үсгээр илэрхийлэгддэг. Энэ character class нь шинэ мөр (new lines), зай (spaces), tab, мөн тусгай unicode space тэмдэгтүүд зэрэг бүх whitespace-ийг тааруулна.

**3.5 Negating Special Character Classes:** Эдгээр character class-уудыг negate (эсрэгжүүлэх) хийхийн тулд backslash-ийн дараа жижиг үсэг биш, харин том үсгийг ашиглаж болно. Дараах жишээ нь тоон тэмдэгтийг тааруулахгүй, харин тоон биш дурын нэг тэмдэгтийг тааруулна.

```js
const regex = /\D/;
```

**3.6 Custom Character Classes:** Та өөрийн custom character class-ийг дөрвөлжин хаалт (square brackets)-д хүссэн тэмдэгтүүдийг бичиж үүсгэж болно.

```js
const regex = /[abcdf]/;
```

---

**4. Lookahead болон Lookbehind Assertions**

**4.1 Тодорхойлолт (Definition):** Lookahead болон lookbehind assertions нь ойр орчмын (surrounding) pattern байгаа эсэх (эсвэл байхгүй)-ээс хамааран тодорхой pattern-уудыг тааруулах боломж олгодог.

**4.2 Positive Lookahead Assertion:** Энэ assertion нь тухайн pattern-ийн дараа өөр pattern дагаж байвал тааруулна. Positive lookahead үүсгэхийн тулд эхлээд тааруулах pattern-аа бичнэ. Дараа нь нөхцөл болгон ашиглах pattern-аа хаалтанд хийнэ. Нээх хаалтын дараа ?= бичиж тухайн pattern-ийг positive lookahead гэж тодорхойлно.

```js
const regex = /free(?=code)/i;
```

**4.3 Negative Lookahead Assertion:** Энэ нь string дотор тухайн pattern-ийн дараа тодорхой pattern байхгүй гэдгийг шалгах нөхцөл (condition) юм.

```js
const regex = /free(?!code)/i;
```

**4.4 Positive Lookbehind Assertion:** Энэ assertion нь тухайн pattern нь өөр нэг тодорхой pattern-ээр өмнө нь дагагдсан үед л тааруулна, мөн өмнөх pattern-ийг match-д оруулахгүй.

```js
const regex = /(?<=free)code/i;
```

**4.5 Negative Lookbehind Assertion:** Энэ assertion нь тухайн pattern нь өөр нэг тодорхой pattern-ээр өмнө нь дагагдаагүй байхыг баталгаажуулна. Өөрөөр хэлбэл, өгөгдсөн sequence-ээр шууд өмнө нь дагагдаагүй үед л match хийнэ, мөн өмнөх sequence-ийг match-д оруулахгүй.

```js
const regex = /(?<!free)code/i;
```

**5. Regex Quantifiers**

**5.1 Тодорхойлолт (Definition):** Regular expressions доторх quantifier-ууд нь нэг pattern (эсвэл pattern-ийн хэсэг) хэдэн удаа давтагдах ёстойг тодорхойлдог. Эдгээр нь match хийх үед тэмдэгтүүд эсвэл бүлгүүдийн давтамжийг (number of occurrences) хянахад ашиглагддаг. Дараах жишээ нь өмнөх тэмдэгтийг яг дөрвөн удаа тааруулахад ашиглагдана.

```js
const regex = /^\d{4}$/;
```

**5.2 \*** : Өмнөх элемент 0 буюу түүнээс олон удаа давтагдахыг тааруулна.

**5.3 +**: Өмнөх элемент 1 буюу түүнээс олон удаа давтагдахыг тааруулна.

**5.4 ?**: Өмнөх элемент 0 эсвэл 1 удаа давтагдахыг тааруулна.

**5.5 {n}:** Өмнөх элемент яг n удаа давтагдахыг тааруулна.

**5.6 {n,}:** Өмнөх элемент n буюу түүнээс олон удаа давтагдахыг тааруулна.

**5.7 {n,m}:** Өмнөх элемент n-ээс m хүртэл удаа давтагдахыг тааруулна.

---

**6. Capturing Groups болон Backreferences**

**6.1 Capturing Groups:** Capturing group нь match болсон string-ийн тодорхой хэсгийг “барьж авах” (capture) боломж олгодог бөгөөд үүнийг дараа нь хэрэгцээний дагуу ашиглаж болно. Capturing group нь хаалт (parentheses)-д бичигдсэн pattern-аар тодорхойлогддог бөгөөд lookahead шиг урд нь тусгай тэмдэгт (leading characters) байхгүй.

```js
const regex = /free(code)camp/i;
```

**6.2 Non-Capturing Groups:** Non-capturing group нь capturing group-тэй төстэй боловч match болсон string-ийн хэсгийг дараа ашиглахын тулд хадгалдаггүй. Non-capturing group нь (?:...) синтаксаар тодорхойлогддог.

```js
const regex = /free(?:code)camp/i;
```

**6.3 Backreferences:** Regular expressions доторх backreference нь өмнө match болсон pattern-ийн хэсгийг дахин ашиглах боломж олгодог. Энэ нь capture group (хаалтанд байгаа pattern)-ийг дугаараар нь reference хийх боломж олгодог. Жишээ нь, $1 нь эхний capture group-ийг заана.

```js
const regex = /free(co+de)camp/i;
console.log("freecoooooooodecamp".replace(regex, "paid$1world"));
```

Мөн та backreference-ийг regex дотор өөрт нь ашиглаж, өмнө capture хийсэн текстийг дахин тааруулж болно. Үүнийг backslash () болон capture group-ийн дугаараар илэрхийлдэг. Жишээ нь:

```js
const regex = /(hello) \1/i;
console.log(regex.test("hello hello")); // true
console.log(regex.test("hello world")); // false
```
