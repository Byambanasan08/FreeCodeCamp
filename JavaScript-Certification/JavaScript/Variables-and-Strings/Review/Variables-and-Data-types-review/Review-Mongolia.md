# JavaScript Variables болон Data Types тойм

1. HTML, CSS, JavaScript-тай ажиллах

1.1 HTML ба CSS нь вэбсайтын бүтцийг хангадаг бол JavaScript нь хэрэглэгчийн оролтыг боловсруулах, элементүүдийг хөдөлгөөнд оруулах, бүрэн хэмжээний вэб аппликейшн бүтээх зэрэг боломжуудыг олгож, интерактив байдлыг нэмдэг.

2. JavaScript дахь өгөгдлийн төрлүүд(data types)

Өгөгдлийн төрлүүд нь программ-д ямар төрлийн өгөгдөлтэй ажиллаж байгааг ойлгоход тусалдаг (тоо, текст гэх мэт).

2.1 Number: Number нь бүхэл болон бутархай тоог илэрхийлдэг. Жишээ нь 7, 19, 90.
2.2 Floating point: Аравтын бутархай тоо. Жишээ нь 3.14, 0.5, 0.0001.
2.3 String: String нь тэмдэгтүүдийн дараалал буюу текст бөгөөд хашилтад бичигддэг. "I like coding", 'JavaScript is fun' нь жишээ.
2.4 Boolean: Boolean нь true эсвэл false гэсэн хоёр утгатай. Жишээ: isLoggedIn = true.
2.5 Undefined ба Null: undefined нь зарлагдсан боловч утга оноогдоогүй хувьсагч. null нь зориуд хоосон утга оноосон хувьсагч.
2.6 Object: Object нь key-value хосуудын цуглуулга. Key нь property-ийн нэр, value нь утга.

Жишээ:

```
let pet = {
  name: "Fluffy",
  age: 3,
  type: "dog"
};
```

Энд pet object нь name, age, type гэсэн гурван property-тэй. Тэдгээрийн утга нь Fluffy, 3, dog.

2.7 Symbol: Symbol нь өвөрмөц, өөрчлөгдөхгүй утга бөгөөд object-ийн property-д identifier болгон ашиглагддаг.

Жишээ:

```
const crypticKey1= Symbol("saltNpepper");
const crypticKey2= Symbol("saltNpepper");
console.log(crypticKey1 === crypticKey2); // false
```

Ижил тайлбартай хоёр Symbol үүсгэсэн ч хоорондоо тэнцүү биш.

2.8 BigInt: Number төрлөөр илэрхийлэхэд хэт том тоонуудыг BigInt ашиглан илэрхийлнэ.

```
const veryBigNumber = 1234567890123456789012345678901234567890n;
```

Тооны төгсгөлд n нэмснээр BigInt үүсгэнэ.

3. JavaScript дахь хувьсагч

3.1 Хувьсагчийг `let` түлхүүр үгээр зарлаж болно. ( to declare a variable )

```
let cityName;
```

3.2 Хувьсагчид утга оноохдоо `=` assignment оператор ашиглана. ( to assign a value )

```
cityName = "New York";
```

3.3 `let`-ээр зарласан хувьсагчид дахин утга оноож болно.

```
let cityName = "New York";
cityName = "Los Angeles";
console.log(cityName); // Los Angeles
```

3.4 `const` ашиглан хувьсагч зарлаж болно. Гэхдээ `const` хувьсагчид дахин утга оноож болохгүй.

```
const cityName = "New York";
cityName = "Los Angeles"; // TypeError
```

- `const` нь PI, MAX_SIZE зэрэг өөрчлөгдөх ёсгүй утгад ашиглагддаг.

  3.5 Хувьсагчийн нэршлийн дүрэм

  3.5.1 Нэр нь ойлгомжтой, утгатай байх ёстой
  3.5.2 camelCase ашиглах (жишээ: cityName, isLoggedIn)
  3.5.3 Тоогоор эхэлж болохгүй, үсэг, _, $-аар эхэлнэ
  3.5.4 Зай болон тусгай тэмдэгт ( _ , $-аас бусад ) ашиглахгүй
  3.5.5 Reserved keyword ашиглахгүй
  3.5.6 Case-sensitive (age ≠ Age)

4. String болон String immutability

4.1 String нь хашилтад бичигдсэн текст юм.

```
let correctWay = 'This is a string';
let alsoCorrect = "This is also a string";
```

4.2 String нь immutable (өөрчлөгдөхгүй). Гэхдээ шинэ утгаар дахин оноож болно.

```
let firstName = "John";
firstName = "Jane";
```

4.3 String concatenation

- Concatenation нь string-үүдийг холбох үйлдэл.

```
let studentName = "Asad";
let studentAge = 25;
let studentInfo = studentName + " is " + studentAge + " years old.";
console.log(studentInfo);
```

4.4 `+=` оператор нь string-д нэмэхэд ашиглагдана.

```
let message = "Welcome to programming, ";
message += "Asad!";
console.log(message);
```

4.5 `concat()` method мөн string холбодог.

```
let firstName = "John";
let lastName = "Doe";
let fullName = firstName.concat(" ", lastName);
console.log(fullName);
```

5. console.log() ашиглах

- `console.log()` нь console дээр мэдээлэл хэвлэдэг, debug хийхэд хэрэгтэй.

```
console.log("Hello, World!");
```

6. Semicolon ( understanding code clarity )

- Semicolon (;) нь statement-ийн төгсгөлийг заадаг.

```
let message = "Hello, World!";
let number = 42;
```

- Энэ нь кодыг зөв гүйцэтгэхэд тусалдаг.

7. Comment

- Comment нь кодын тайлбар бөгөөд ажиллах үед үл тоогдоно
- 7.1 Нэг мөрийн comment (single line):

```
// This is a comment
```

7.2 Олон мөрийн comment (multi line):

```
/*
This is a multi-line comment
*/
```

8. Dynamic typing

8.1 JavaScript нь dynamically typed хэл

```
let error = 404;
error = "Not Found";
```

- Бусад хэл (жишээ: C#) ийм өөрчлөлтийг зөвшөөрдөггүй

```
int error = 404;
error = "Not Found"; // Error
```

9. typeof оператор

- `typeof` нь хувьсагчийн төрлийг шалгана

```
let age = 25;
console.log(typeof age); // "number"

let isLoggedIn = true;
console.log(typeof isLoggedIn); // "boolean"
```

- Гэхдээ null дээр:

```
let user = null;
console.log(typeof user); // "object"
```

`null` дээр `"object"` буцаадаг нь JavaScript-ийн алдартай онцлог (bug) юм.
