**Capturing Groups болон Backreferences гэж юу вэ, мөн тэд хэрхэн ажилладаг вэ?**

Capturing group нь match болсон string-ийн тодорхой хэсгийг “барьж авах” (capture) боломж олгодог бөгөөд үүнийг дараа нь хэрэгцээний дагуу ашиглаж болно. Capturing group нь хаалт (parentheses)-д бичигдсэн pattern-аар тодорхойлогддог бөгөөд lookahead шиг урд нь тусгай тэмдэг (leading characters) байхгүй.

Одоо freeCodeCamp regular expression-оос code хэсгийг capture хийе. Үүний тулд code-ийг хаалтанд хийж capture group болгож тодорхойлно:

```js
const regex = /free(code)camp/i;
```

Энэ хэрхэн ажиллаж байгааг батлахын тулд freecodecamp string дээр шалгаж болно:

```js
const regex = /free(code)camp/i;
console.log(regex.test("freecodecamp")); // true
```

Гэхдээ энэ нь capture хийсэн group-ийг ашиглаж байгаа биш. Харин match ашигласан үр дүнг харцгаая:

```js
const regex = /free(code)camp/i;
console.log("freecodecamp".match(regex));
// [
//   'freecodecamp',
//   'code', <--
//   index: 0,
//   input: 'freecodecamp',
//   groups: undefined
// ]
```

Энд match array-ийн хоёр дахь элемент нь capture group-оор баригдсан string-ийн хэсэг гэдгийг харж болно.

Capture group нь яг code гэсэн pattern-ийг тааруулж байгааг анзаараарай, харин character class бол c, o, d, e жагсаалтаас нэг л тэмдэгтийг тааруулна.

Тэгвэл үүнийг хэрхэн ашиглах вэ? Capture group-уудыг ихэвчлэн string доторх утгыг солих (replace) үед ашигладаг. Одоо тийм код бичье. Бид freecodecamp-ийг paidcodeworld болгоно:

```js
const regex = /free(code)camp/i;
console.log("freecodecamp".replace(regex, "paidcodeworld"));
```

Энэ өөрөө ажиллана. Гэхдээ хэрвээ code дотор хэдэн o байгааг мэдэхгүй бол яах вэ? Хэрвээ нэг буюу түүнээс олон o-д зориулсан quantifier хэрэгтэй бол:

```js
const regex = /free(co+de)camp/i;
console.log("freecoooooooodecamp".replace(regex, "paidcodeworld"));
```

Үр дүнд нь paidcodeworld гарч байна. Харин бид o-гийн тоог хадгалахыг хүсэж байгаа тул regular expression-оор capture хийсэн утгыг дахин ашиглах хэрэгтэй.

Энд backreference ашиглагдана. Replace хийхдээ code хэсгийг шууд бичихийн оронд capture group-ийг шууд reference хийж болно.

Replace дотор backreference ашиглахын тулд долларын тэмдэг ($) дараа capture group-ийн дугаарыг бичнэ. Манай тохиолдолд code нь эхний capture group-д байгаа тул $1 байна:

```js
const regex = /free(co+de)camp/i;
console.log("freecoooooooodecamp".replace(regex, "paid$1world")); // paidcoooooooodeworld
```

Одоо бид freecodecamp-ийг paidcodeworld болгохдоо тодорхойгүй олон o-г амжилттай хадгалж чадлаа. Гэхдээ backreference нь зөвхөн replace дээр ашиглагддаггүй. Та үүнийг шууд regular expression дотор ч ашиглаж болно.

Ингэснээр өмнө capture хийсэн pattern-ийг дараа нь regular expression дотор дахин тааруулах боломжтой болно.

Жишээ нь, бид freecodecamp-г string дотор хаана ч байсан, хоёр удаа, мөн ижил тооны o-тойгоор тааруулахыг хүсэж байна.

Эхлээд бид хоёр хэсгийг wildcard тэмдэгтээр салгаж, wildcard дээр дурын тооны тэмдэгт таарах боломж олгоно:

```js
const regex = /free(co+de)camp.*free(co+de)camp/i;
```

Гэхдээ энэ expression нь хоёр дахь хэсгийн o-гийн тоо эхнийхтэй адил байна гэдгийг батлахгүй. Үүнийг хэрэгжүүлэхийн тулд хоёр дахь capture group-ийг эхний capture group-ийн reference-ээр солих хэрэгтэй.

Regular expression дотор backreference нь backslash () дараа capture group-ийн дугаар бичигдсэн байдлаар илэрхийлэгддэг:

```js id="0w7v5b"
const regex = /free(co+de)camp.*free\1camp/i;
console.log(regex.test("freecooooodecamp is great i love freecooooodecamp")); // true
console.log(regex.test("freecooooodecamp is great i love freecodecamp")); // false
```

Ингэснээр бид харж байна: зөв тооны o-той string нь таарч байгаа бол, хоёр өөр тооны o-той string нь таарахгүй байна.

Энэ синтакс нь хэрэгтэй боловч олон capture group ашиглах үед ойлгомжгүй болж эхэлдэг. Аз болоход, тоо ашиглахын оронд group-ууддаа нэр (name) өгч болно.

Named capture group тодорхойлохын тулд хаалтын эхэнд асуултын тэмдэг (?) тавиад, дараа нь нэрийг < > тэмдэгтийн дотор бичнэ. Одоо capture group-оо code гэж нэрлэе:

```js id="p5g2r2"
const regex = /free(?<code>co+de)camp.*free\1camp/i;
```

Одоо regular expression доторх backreference-ийг энэ нэрээр нь ашиглах боломжтой. Named backreference нь JavaScript-д backslash () дараа k үсэг бичигдэнэ. Дараа нь нэрийг < > тэмдэгтийн дотор бичнэ. Одоо үүнийг харцгаая:

```js id="a3d3z0"
const regex = /free(?<code>co+de)camp.*free\k<code>camp/i;
```

Одоо test() ашиглан шалгахад үр дүн хэвээрээ зөв гарч байна:

```js id="2l6y7n"
const regex = /free(?<code>co+de)camp.*free\k<code>camp/i;
console.log(regex.test("freecooooodecamp is freecooooodecamp")); // true
```

Named capture group-ийг replace() дотор ашиглахын тулд string дотор долларын тэмдэг ($) бичээд, дараа нь нэрийг < > тэмдэгтийн дотор бичнэ:

```js id="m4v0kq"
const regex = /free(?<code>co+de)camp/i;
console.log("freecooooodecamp".replace(regex, "paid$<code>camp")); // paidcooooodecamp
```

Эцэст нь, заримдаа та тэмдэгтүүдийг бүлэглэх (group) хэрэгтэй боловч capture хийсэн үр дүнг хадгалах шаардлагагүй байдаг.

Жишээ нь, freecodecamp эсвэл freecandycamp аль нэгийг тааруулахыг хүсэж байна гэж бодъё. Та OR assertion ашиглан хоёр pattern бичиж болно:

```js id="t0w9y2"
const regex = /freecodecamp|freecandycamp/i;
```

Гэхдээ энэ нь том хэмжээний regular expression дээр урт болж эхэлдэг. Үүний оронд та OR хийх шаардлагатай хэсгийг non-capturing group ашиглан бичиж болно:

```js id="b6q1rz"
const regex = /free(?:code|candy)camp/i;
```

Non-capturing group нь code|candy match-ийг санах ойд (memory) тусад нь хадгалахгүй. Гэхдээ энэ нь alternate pattern-ууд үүсгэхэд, мөн readability болон performance-ийг алдагдуулахгүйгээр ашиглахад маш хэрэгтэй.
