# JavaScript String (Тэмдэгт мөр) тойм

1. String-ийн үндэс

1.1 Тодорхойлолт: String (тэмдэгт мөр) гэдэг нь дан хаалт (''), давхар хаалт ("") эсвэл backtick (``) ашиглан хашиж бичсэн тэмдэгтүүдийн дараалал юм. String нь primitive (үндсэн) өгөгдлийн төрөл бөгөөд immutable (хувиршгүй) байдаг. Immutable гэдэг нь нэгэнт үүсгэсэн тэмдэгт мөрийг өөрчлөх боломжгүй гэсэн үг юм.

1.2 Тэмдэгт мөрөөс тэмдэгт унших: Тэмдэгт мөрөөс тодорхой нэг тэмдэгтийг уншихын тулд дөрвөлжин хаалт ашиглан индексийн дугаарыг дамжуулна. Индекс гэдэг нь тэмдэгт мөр доторх тухайн тэмдэгтийн байршил бөгөөд 0-ээс эхэлж тоологддог.

```javascript
const developer = "Jessica";
console.log(developer[0]); // J
```

1.3 \n (Шинэ мөр гаргах тэмдэгт): Тэмдэгт мөр дотор шинэ мөр үүсгэхийн тулд `\n` тэмдэгтийг ашигладаг.

```javascript
const poem =
  "Roses are red,\nViolets are blue,\nJavaScript is fun,\nAnd so are you.";
console.log(poem);
```

1.4 Тэмдэгт мөрийг escape хийх (зайлах): Тэмдэгт мөр доторх хашилтыг "escape" хийхийн тулд өмнө нь backslash (`\`) тэмдэгтийг байрлуулна.

```javascript
const statement = 'She said, \"Hello!\"';
console.log(statement); // She said, "Hello!"
```

2.  Template Literals (Template Strings) болон String Interpolation

2.1 Тодорхойлолт: Template literal-ийг backtick (``) ашиглан тодорхойлдог. Энэ нь тэмдэгт мөртэй ажиллахад илүү хялбар болгох бөгөөд хувьсагчийг тэмдэгт мөр дотор шууд байрлуулах боломжийг олгодог. Үүнийг string interpolation (тэмдэгт мөрийн интерполяци) гэж нэрлэдэг.

```javascript
const name = "Jessica";
const greeting = `Hello, ${name}!`;
console.log(greeting); // "Hello, Jessica!"
```

3. ASCII, charCodeAt() болон fromCharCode() аргууд

3.1 ASCII: ASCII (American Standard Code for Information Interchange) нь англи хэлний үндсэн тэмдэгтүүдийг тоон утгаар илэрхийлэхэд ашигладаг кодчиллын стандарт юм.

3.2 Unicode: JavaScript нь тэмдэгт мөрийг дотооддоо Unicode, тодруулбал UTF-16 кодчилол ашиглан хадгалдаг. Эхний 128 тэмдэгт (латин үсэг, тоо, түгээмэл тэмдэгтүүд) нь ASCII кодтой таардаг тул ASCII-д суурилсан жишээнүүд JavaScript дээр хэвийн ажилладаг.
3.3 charCodeAt() арга: Энэ арга нь заасан индекс дээрх тэмдэгтийн UTF-16 кодчиллын утгыг буцаадаг. Үндсэн латин тэмдэгтүүдийн хувьд энэ нь ASCII кодтой тохирно.

```javascript
const letter = "A";
console.log(letter.charCodeAt(0)); // 65
```

3.4 fromCharCode() арга: Энэ арга нь ASCII кодыг түүнд харгалзах тэмдэгт рүү хөрвүүлдэг.

```javascript
const char = String.fromCharCode(65);
console.log(char); // A
```

4. Бусад түгээмэл String аргууд(Methods)

4.1 indexOf() арга: Энэ аргыг тэмдэгт мөр дотроос дэд мөрийг (substring) хайхад ашигладаг. Хэрэв олдвол эхний тохиолдлын индексийг буцаана. Олдохгүй бол -1-ийг буцаадаг.

```javascript
const text = "The quick brown fox jumps over the lazy dog.";
console.log(text.indexOf("fox")); // 16
console.log(text.indexOf("cat")); // -1
```

4.2 includes() арга: Тэмдэгт мөр дотор тодорхой дэд мөр агуулагдаж байгаа эсэхийг шалгана. Олдвол `true`, үгүй бол `false` утга буцаана.

```javascript
const text = "The quick brown fox jumps over the lazy dog.";
console.log(text.includes("fox")); // true
console.log(text.includes("cat")); // false
```

4.3 slice() арга: Тэмдэгт мөрийн тодорхой хэсгийг тасдаж аваад шинэ тэмдэгт мөр буцаана. Эх тэмдэгт мөрийг өөрчлөхгүй. Эхлэх индекс болон төгсөх (заавал биш) индекс гэсэн хоёр параметр авдаг.

```javascript
const text = "freeCodeCamp";
console.log(text.slice(0, 4)); // "free"
console.log(text.slice(4, 8)); // "Code"
console.log(text.slice(8, 12)); // "Camp"
```

4.4 toUpperCase() арга: Бүх тэмдэгтүүдийг том үсэг рүү хөрвүүлж, шинэ тэмдэгт мөр буцаана.

```javascript
const text = "Hello, world!";
console.log(text.toUpperCase()); // "HELLO, WORLD!"
```

4.5 toLowerCase() арга: Бүх тэмдэгтүүдийг жижиг үсэг рүү хөрвүүлнэ.

```javascript
const text = "HELLO, WORLD!";
console.log(text.toLowerCase()); // "hello, world!"
```

4.6 replace() арга: Тэмдэгт мөр дотроос заасан утгыг (үг эсвэл тэмдэгт) хайж олоод өөр утгаар солино. JavaScript-ийн тэмдэгт мөр immutable тул зөвхөн эхний тохиолдлыг сольж, шинэ мөр буцаана.

```javascript
const text = "I like cats";
console.log(text.replace("cats", "dogs")); // "I like dogs"
```

4.7 replaceAll() арга: Заасан утгын бүх тохиолдлыг хайж олоод өөр утгаар солино. Эхний тохиолдол дээр зогсолгүйгээр бүх таарсан утгыг шинэчилдэг.

```javascript
const text = "I love cats and cats are so much fun!";
console.log(text.replaceAll("cats", "dogs")); // "I love dogs and dogs are so much fun!"
```

4.8 repeat() арга: Тэмдэгт мөрийг заасан тооны удаа давтаж бичнэ.

```javascript
const text = "Hello";
console.log(text.repeat(3)); // "HelloHelloHello"
```

4.9 trim() арга: Тэмдэгт мөрийн эхэн болон төгсгөл дэх хоосон зайг арилгахад ашигладаг.

```javascript
const text = "  Hello, world!  ";
console.log(text.trim()); // "Hello, world!"
```

4.9.1 trimStart() арга: Тэмдэгт мөрийн зөвхөн эхлэл хэсгийн хоосон зайг арилгана.

4.9.2 trimEnd() арга: Тэмдэгт мөрийн зөвхөн төгсгөл хэсгийн хоосон зайг арилгана.

4.10 prompt() арга: Хэрэглэгчээс харилцах цонхоор дамжуулан мэдээлэл авахад ашигладаг window объектын арга юм. Эхний аргумент нь харагдах зурвас, хоёр дахь аргумент нь өгөгдмөл утга (заавал биш) байна.

```javascript
const answer = window.prompt("Таны дуртай амьтан юу вэ?");
```
