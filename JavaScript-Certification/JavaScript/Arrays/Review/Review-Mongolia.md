# JavaScript Массивын Тойм (Бүрэн орчуулга)

#### 1. JavaScript Массивын Үндэс (JavaScript Array Basics)

**1.1 Тодорхойлолт:** JavaScript массив нь тоон индексээр тодорхойлогддог утгуудын эрэмбэлэгдсэн цуглуулга юм. JavaScript массив дахь утгууд нь тоо, тэмдэгт мөр (string), boolean, объект, бүр өөр массивууд гэх мэт өөр өөр өгөгдлийн төрлүүд байж болно. Массивууд нь санах ойд дараалсан байдаг бөгөөд энэ нь бүх элементүүд нэг тасралтгүй санах ойн блокт хадгалагддаг гэсэн үг юм. Энэ нь индексээр нь үр ашигтай эрэмбэлэх болон элементүүдэд хурдан хандах боломжийг олгодог.

```javascript
const developers = ["Jessica", "Naomi", "Tom"];
```

**1.2 Массиваас элементэд хандах:** Массиваас элементэд хандахын тулд та массивын нэрийг бичээд, араас нь дөрвөлжин хаалт дотор индексийн дугаарыг зааж өгөх шаардлагатай. JavaScript массивууд нь тэгээс эхэлсэн индекстэй (zero-based indexed) байдаг бөгөөд энэ нь эхний элемент 0 индекс дээр, хоёр дахь элемент 1 индекс дээр гэх мэт байрлана гэсэн үг юм. Хэрэв та массивт байхгүй индекс рүү хандахыг оролдвол JavaScript `undefined` утга буцаана.

```javascript
const developers = ["Jessica", "Naomi", "Tom"];
console.log(developers[0]); // "Jessica"
console.log(developers[1]); // "Naomi"
console.log(developers[10]); // undefined
```

**1.3 length шинж чанар:** Энэхүү шинж чанар нь массивт байгаа зүйлсийн тоог буцаахад ашиглагддаг.

```javascript
const developers = ["Jessica", "Naomi", "Tom"];
console.log(developers.length); // 3
```

**1.4 Массивын элементийг шинэчлэх:** Массивын элементийг шинэчлэхийн тулд та оноох оператор (`=`) ашиглан тодорхой индекс дээрх элементэд шинэ утга оноож өгнө.

```javascript
const fruits = ["apple", "banana", "cherry"];
fruits[1] = "blueberry";
console.log(fruits); // ['apple', 'blueberry', 'cherry']
```

#### 2. Хоёр хэмжээст массив (Two Dimensional Arrays)

**2.1 Тодорхойлолт:** Хоёр хэмжээст массив нь үндсэндээ массивуудын массив юм. Энэ нь шатрын хөлөг, хүснэгт (spreadsheet) эсвэл зурагны пикселүүд зэрэг төрөлхийн хүснэгтэн бүтэцтэй өгөгдлийг илэрхийлэхэд ашиглагддаг. Хоёр хэмжээст массивын элементэд хандахын тулд танд хоёр индекс хэрэгтэй: нэг нь мөрний (row), нөгөө нь баганын (column) хувьд юм.

```javascript
const chessboard = [
  ["R", "N", "B", "Q", "K", "B", "N", "R"],
  ["P", "P", "P", "P", "P", "P", "P", "P"],
  [" ", " ", " ", " ", " ", " ", " ", " "],
  [" ", " ", " ", " ", " ", " ", " ", " "],
  [" ", " ", " ", " ", " ", " ", " ", " "],
  [" ", " ", " ", " ", " ", " ", " ", " "],
  ["p", "p", "p", "p", "p", "p", "p", "p"],
  ["r", "n", "b", "q", "k", "b", "n", "r"],
];
console.log(chessboard[0][3]); // "Q"
```

#### 3. Массивын деструктурчлал (Array Destructuring)

**3.1 Тодорхойлолт:** Массивын деструктурчлал нь JavaScript-ийн нэгэн онцлог бөгөөд массивын утгуудыг салган авч, тэдгээрийг хувьсагчдад илүү товч бөгөөд уншихад хялбар байдлаар оноох боломжийг олгодог. Энэ нь массивын элементүүдийг тусдаа хувьсагч болгон задлах тохиромжтой бичиглэлээр хангадаг.

```javascript
const fruits = ["apple", "banana", "orange"];
const [first, second, third] = fruits;
console.log(first); // "apple"
console.log(second); // "banana"
console.log(third); // "orange"
```

**3.2 Rest Syntax:** Энэ нь деструктурчлагдаагүй үлдсэн массивын элементүүдийг шинэ массив болгон цуглуулах боломжийг олгодог.

```javascript
const fruits = ["apple", "banana", "orange", "mango", "kiwi"];
const [first, second, ...rest] = fruits;
console.log(first); // "apple"
console.log(second); // "banana"
console.log(rest); // ["orange", "mango", "kiwi"]
```

4.  Түгээмэл массивын аргууд (Common Array Methods)

**4.1 push() арга:** Энэ арга нь массивын төгсгөлд элемент нэмэхэд ашиглагддаг бөгөөд массивын шинэ уртыг буцаана.

```javascript
const desserts = ["cake", "cookies", "pie"];
desserts.push("ice cream");

console.log(desserts); // ["cake", "cookies", "pie", "ice cream"];
```

**4.2 pop() арга:** Энэ арга нь массивын хамгийн сүүлчийн элементийг хасахад ашиглагддаг бөгөөд тухайн хасагдсан элементийг буцаана. Хэрэв массив хоосон бол буцаах утга нь `undefined` байна.

```javascript
const desserts = ["cake", "cookies", "pie"];
desserts.pop();

console.log(desserts); // ["cake", "cookies"];
```

**4.3 shift() арга:** Энэ арга нь массивын хамгийн эхний элементийг хасаж, тухайн хасагдсан элементийг буцаахад ашиглагддаг. Хэрэв массив хоосон бол буцаах утга нь `undefined` байна.

```javascript
const desserts = ["cake", "cookies", "pie"];
desserts.shift();

console.log(desserts); // ["cookies", "pie"];
```

**4.4 unshift() арга:** Энэ арга нь массивын эхлэлд элемент нэмэхэд ашиглагддаг бөгөөд массивын шинэ уртыг буцаана.

```javascript
const desserts = ["cake", "cookies", "pie"];
desserts.unshift("ice cream");

console.log(desserts); // ["ice cream", "cake", "cookies", "pie"];
```

**4.5 indexOf() арга:** Энэ арга нь массив доторх тодорхой элементийн анхны индексийг олоход хэрэгтэй. Хэрэв элемент олдохгүй бол -1 буцаана.

```javascript
const fruits = ["apple", "banana", "orange", "banana"];
const index = fruits.indexOf("banana");

console.log(index); // 1
console.log(fruits.indexOf("not found")); // -1
```

**4.6 splice() арга:** Энэ арга нь массивын аль ч байрлалаас элемент нэмэх эсвэл хасахад ашиглагддаг. `splice()` аргын буцаах утга нь массиваас хасагдсан зүйлсийн массив байна. Хэрэв юу ч хасагдаагүй бол хоосон массив буцаана. Энэ арга нь эх массивыг байранд нь өөрчилдөг (mutate) бөгөөд шинэ массив үүсгэдэггүй. Эхний аргумент нь массивыг өөрчилж эхлэх индексийг заана. Хоёр дахь аргумент нь хасахыг хүсэж буй элементийн тоо юм. Дараагийн аргументууд нь нэмэхийг хүсэж буй элементүүд юм.

```javascript
const colors = ["red", "green", "blue"];
colors.splice(1, 0, "yellow", "purple");

console.log(colors); // ["red", "yellow", "purple", "green", "blue"]
```

**4.7 includes() арга:** Энэ арга нь массив тодорхой утгыг агуулж байгаа эсэхийг шалгахад ашиглагддаг. Хэрэв заасан элемент массивт байвал `true`, байхгүй бол `false` буцаана.

```javascript
const programmingLanguages = ["JavaScript", "Python", "C++"];

console.log(programmingLanguages.includes("Python")); // true
console.log(programmingLanguages.includes("Perl")); // false
```

**4.8 concat() арга:** Энэ арга нь хоёр болон түүнээс дээш массивыг нэгтгэн шинэ массив үүсгэдэг.

```javascript
const programmingLanguages = ["JavaScript", "Python", "C++"];
const newList = programmingLanguages.concat("Perl");

console.log(newList); // ["JavaScript", "Python", "C++", "Perl"]
```

**4.9 slice() арга:** Энэ арга нь эх массивын эхлэх (start) болон дуусах (end) индексээр заагдсан хэсгийг агуулсан шинэ массив буюу "өнгөц хуулбар" (shallow copy) буцаана. Шинэ массив нь эх массивын элементүүдийн лавлахыг (references) агуулдаг (хуулбар биш). Энэ нь хэрэв элементүүд нь primitive төрөл (тоо, тэмдэгт мөр гэх мэт) бол утгууд нь хуулагдана; харин элементүүд нь объект эсвэл массив бол объектууд өөрсдөө биш, зөвхөн тэдгээрийн лавлахууд нь хуулагдана гэсэн үг юм.

```javascript
const programmingLanguages = ["JavaScript", "Python", "C++"];
const newList = programmingLanguages.slice(1);

console.log(newList); // ["Python", "C++"]
```

**4.10 Spread Syntax:** `Spread syntax` буюу задлах бичиглэл нь массивын өнгөц хуулбарыг (shallow copy) үүсгэхэд ашиглагддаг.

```javascript
const originalArray = [1, 2, 3];
const shallowCopiedArray = [...originalArray];

shallowCopiedArray.push(4);

console.log(originalArray); // [1, 2, 3]
console.log(shallowCopiedArray); // [1, 2, 3, 4]
```

**4.11 split() арга:** Энэ арга нь тэмдэгт мөрийг (string) заасан тусгаарлагчид (separator) үндэслэн дэд мөрүүдийн массив болгон хуваадаг. Хэрэв тусгаарлагч зааж өгөөгүй бол уг арга нь эх тэмдэгт мөрийг ганц элемент болгон агуулсан массив буцаана.

```javascript
const str = "hello";
const charArray = str.split("");

console.log(charArray); // ["h", "e", "l", "l", "o"]
```

**4.12 reverse() арга:** Энэ арга нь массивыг байранд нь (in place) урвуулдаг.

```javascript
const desserts = ["cake", "cookies", "pie"];
console.log(desserts.reverse()); // ["pie", "cookies", "cake"]
```

**4.13 join() арга:** Энэ арга нь массивын бүх элементүүдийг заасан тусгаарлагчаар тусгаарлан нэг тэмдэгт мөр болгон нэгтгэдэг. Хэрэв тусгаарлагч зааж өгөөгүй эсвэл хоосон тэмдэгт мөр ("") ашигласан бол элементүүд ямар ч тусгаарлагчгүйгээр холбогдоно.

```javascript
const reversedArray = ["o", "l", "l", "e", "h"];
const reversedString = reversedArray.join("");

console.log(reversedString); // "olleh"
```
