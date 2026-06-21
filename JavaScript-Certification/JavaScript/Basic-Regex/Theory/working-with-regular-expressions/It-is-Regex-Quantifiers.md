**Regex Quantifiers гэж юу вэ, мөн тэд хэрхэн ажилладаг вэ?**

Одоо regular expressions (regex)-д байдаг quantifier-уудын талаар сурцгаая.

Дөрвөн оронтой таних код (identification code) тааруулахыг хүсэж байгаа нөхцөл байдлыг авч үзье. Та \d character class ашиглаж болдгийг мэдэж байгаа тул үүнийг дөрвөн удаа бичиж магадгүй. Мөн илүүдэл тэмдэгтүүд (extraneous characters)-ийг оруулахгүйн тулд эхлэл болон төгсгөлийн anchor-уудыг ашиглана:

```js
const regex = /^\d\d\d\d$/;
```

Энэ нь ажиллана – дөрвөн тоон тэмдэгтийг тааруулна. Гэхдээ ижил class-ийг олон удаа бичихийн оронд та quantifier ашиглаж болно.

Quantifier нь нэг эсвэл хоёр тоо агуулсан curly braces ({}) ашиглан тодорхойлогддог. Одоо pattern дээрээ quantifier ашиглая:

```js
const regex = /^\d{4}$/;
```

Энд quantifier дотор зөвхөн 4 гэсэн тоо байгааг анзаараарай. Энэ синтакс нь “өмнөх тэмдэгтийг яг дөрвөн удаа тааруул” гэсэн утгатай. Одоо энэ хэрхэн ажиллаж байгааг харцгаая:

```js
const regex = /^\d{4}$/;
console.log(regex.test("123")); // false
console.log(regex.test("1234")); // true
console.log(regex.test("12345")); // false
console.log(regex.test("123456")); // false
console.log(regex.test("1234567")); // false
```

Энэ pattern нь зөвхөн яг дөрвөн оронтой string-ийг л тааруулж байна, учир нь бид anchor-ууд ашигласан бөгөөд quantifier нь зөвхөн яг дөрвөн цифр зөвшөөрч байна. Харин магадгүй энэ таних код хамгийн багадаа 4 оронтой байхад л хангалттай байж болно.

4 буюу түүнээс дээш оронтой болгохын тулд quantifier доторх тооны ард таслал (comma) нэмнэ:

```js
const regex = /^\d{4,}$/;
```

Одоо энэ синтакс нь 4 ба түүнээс дээш цифрийг тааруулах боломж олгож байна. Туршаад үзье:

```js
const regex = /^\d{4,}$/;
console.log(regex.test("123")); // false
console.log(regex.test("1234")); // true
console.log(regex.test("12345")); // true
console.log(regex.test("123456")); // true
console.log(regex.test("1234567")); // true
```

7 оронтой identifier нэлээн урт байна. Эдгээр identifier-ууд хамгийн ихдээ 6 оронтой, хамгийн багадаа 4 оронтой байх ёстой. Үүнийг хэрэгжүүлэхийн тулд quantifier дотор таслалын дараа хоёр дахь тоог нэмж өгнө:

```js
const regex = /^\d{4,6}$/;
```

Одоо манай pattern 7 оронтой identifier-ийг тааруулахгүй, учир нь энэ нь 6 оронтой дээд хязгаараас (maximum) давсан байна.

```js
const regex = /^\d{4,6}$/;
console.log(regex.test("123")); // false
console.log(regex.test("1234")); // true
console.log(regex.test("12345")); // true
console.log(regex.test("123456")); // true
console.log(regex.test("1234567")); // false
```

Энэ синтаксийг зөвхөн maximum утга тогтооход ашиглаж болдоггүйг анхаарна уу – заавал minimum утга тодорхойлох хэрэгтэй. Харин minimum-ийг 1 гэж өгвөл ижил үр дүнд хүрч болно.

Одоо хэрэглэгчдээс (users) шинэ шаардлага ирсэн. Identifier нь заавал биш (optionally) үсгээр эхэлж болно. Үүнд тохирох character class бидэнд аль хэдийн байгаа тул үүнийг regular expression-д нэмье:

```js
const regex = /^[a-zA-Z]\d{4,6}$/;
```

Гэхдээ одоо бид үсэг заавал байх ёстой болгож (mandate) байна. Үүнийг optional болгох ямар арга байна вэ?

Та quantifier синтакс ашиглан minimum-ийг 0, maximum-ийг 1 болгож өгч болно:

```js
const regex = /^[a-zA-Z]{0,1}\d{4,6}$/;
```

Гэхдээ нэг optional тэмдэгтэд зориулсан тусгай shorthand quantifier байдаг – энэ нь асуултын тэмдэг (?) юм. Одоо quantifier-аа асуултын тэмдгээр сольё:

```js
const regex = /^[a-zA-Z]?\d{4,6}$/;
```

Одоо үр дүнг шалгая:

```js
const regex = /^[a-zA-Z]?\d{4,6}$/;
console.log(regex.test("123")); // false
console.log(regex.test("a1234")); // true
console.log(regex.test("12345")); // true
console.log(regex.test("az12345")); // false
console.log(regex.test("X123456")); // true
console.log(regex.test("1234567")); // false
```

Манай pattern одоо нэг optional үсэг, түүний дараа 4-өөс 6 хүртэлх цифрийг зөвшөөрч байна.

Харамсалтай нь бид шаардлагыг буруу ойлгосноо сая мэдлээ. Тоонуудын өмнө дурын тооны үсэг (any number of letters) байхыг зөвшөөрөх хэрэгтэй байна. Үүний тулд бид quantifier-аа minimum 0, maximum-ийг тодорхойлоогүй байдлаар ашиглаж болно:

```js
const regex = /^[a-zA-Z]{0,}\d{4,6}$/;
```

Гэхдээ манай pattern дахин урт болж байна. Аз болоход “өмнөх тэмдэгтийг 0 буюу түүнээс олон удаа тааруул” гэсэн өөр нэг shorthand байдаг – энэ нь од (*) тэмдэг юм. Одоо quantifier-аа энэ тэмдгээр сольж, шалгая:

```js
const regex = /^[a-zA-Z]*\d{4,6}$/;
console.log(regex.test("123")); // false
console.log(regex.test("a1234")); // true
console.log(regex.test("12345")); // true
console.log(regex.test("az12345")); // true
console.log(regex.test("X123456")); // true
console.log(regex.test("1234567")); // false
```

Одоо бид 0 буюу түүнээс олон үсэг, дараа нь 4-өөс 6 хүртэл тоо бүхий бүх identifier-ийг зөв тааруулж байна. Гэхдээ энэ нь манай системийг унагаж (crash) байна – үнэндээ дор хаяж нэг үсэг заавал байх ёстой юм байна.

Дахин хэлэхэд, бид minimum-ийг 1, maximum-ийг тодорхойлоогүй quantifier ашиглаж болно, эсвэл өөр нэг тусгай синтакс болох нэмэх (+) тэмдгийг ашиглаж болно:

```js
const regex = /^[a-zA-Z]+\d{4,6}$/;
console.log(regex.test("123")); // false
console.log(regex.test("a1234")); // true
console.log(regex.test("12345")); // false
console.log(regex.test("az12345")); // true
console.log(regex.test("X123456")); // true
console.log(regex.test("1234567")); // false
```

Одоо дор хаяж нэг үсгээр эхлээгүй identifier-ууд, хэдэн тоо агуулж байгаагаас үл хамааран, бүгд амжилтгүй (fail) болж байна.

Та quantifier-уудыг ашигласнаар regular expression-уудынхаа товч (brevity) байдал болон уншихад ойлгомжтой (readability) байдлыг ихээхэн сайжруулж чадна.
