# JavaScript Объектуудын Тойм

### 1. Объектын үндэс (Object Basics)

**1.1 Тодорхойлолт:** Объект гэдэг нь шинж чанаруудаас (properties) бүрдэх өгөгдлийн бүтэц юм. Шинж чанар нь түлхүүр (key) болон утгаас (value) бүрдэнэ. Объектоос өгөгдөл олж авахын тулд та цэгэн бичиглэл (dot notation) эсвэл дөрвөлжин хаалтын бичиглэлийг (bracket notation) ашиглаж болно.

```javascript
const person = {
  name: "Alice",
  age: 30,
  city: "New York",
};

console.log(person.name); // Alice
console.log(person["name"]); // Alice
```

Одоо байгаа объектод шинж чанар нэмэхийн тулд цэгэн бичиглэл эсвэл дөрвөлжин хаалтын бичиглэлийг утга оноох оператортой (`=`) хамт ашиглаж болно.

```javascript
const person = {
  name: "Alice",
  age: 30,
};

person.job = "Engineer";
person["hobby"] = "Knitting";
console.log(person); // {name: 'Alice', age: 30, job: 'Engineer', hobby: 'Knitting'}
```

---

### 2. Объектоос шинж чанарыг хасах

**2.1 delete оператор:** Энэ оператор нь объектоос тодорхой нэг шинж чанарыг устгахад ашиглагддаг.

```javascript
const person = {
  name: "Alice",
  age: 30,
  job: "Engineer",
};

delete person.job;

console.log(person.job); // undefined
```

---

### 3. Объект шинж чанартай эсэхийг шалгах

**3.1 hasOwnProperty() арга:** Энэ арга нь тухайн объект заасан шинж чанарыг өөрийн шинж чанар болгон агуулж байгаа эсэхийг заасан boolean утга буцаадаг.

```javascript
const person = {
  name: "Alice",
  age: 30,
};

console.log(person.hasOwnProperty("name")); // true
console.log(person.hasOwnProperty("job")); // false
```

**3.2 Object.hasOwn() арга:** Энэ нь объект өөрийн шинж чанартай (удамшсан биш) эсэхийг шалгах орчин үеийн, зөвлөмж болгож буй арга юм. Бичиглэл нь `Object.hasOwn(object, propertyName)` юм. Хэрэв шинж чанар объектод байвал `true`, байхгүй бол `false` буцаана — энэ нь тухайн шинж чанарын утгаас үл хамаарна. Энэ нь утга нь 0, `false`, `null`, эсвэл `undefined` байж болох үед `hasOwnProperty()`-оос илүү аюулгүй, мөн `if (obj.prop)` гэж шалгахаас илүү найдвартай байдаг.

```javascript
const settings = {
  darkMode: false,
  fontSize: 0,
  language: null,
};

// Object.hasOwn() нь эдгээр шинж чанаруудыг байгааг зөв олж хардаг
console.log(Object.hasOwn(settings, "darkMode")); // true (утга нь false боловч шинж чанар нь байна)
console.log(Object.hasOwn(settings, "fontSize")); // true (утга нь 0 боловч шинж чанар нь байна)
console.log(Object.hasOwn(settings, "theme")); // false (шинж чанарыг хэзээ ч нэмээгүй)

// if() нөхцөлийг шууд ашиглах нь худал (falsy) утгуудын хувьд аюултай!
if (settings.darkMode) {
  console.log("Dark mode on"); // Энэ нь хэвлэгдэхгүй — төөрөгдүүлсэн үр дүн!
}

// Object.hasOwn() бол аюулгүй арга юм
if (Object.hasOwn(settings, "darkMode")) {
  console.log("darkMode exists, value is:", settings.darkMode); // darkMode exists, value is: false
}
```

**3.3 in оператор:** Хэрэв шинж чанар объект дотор байвал энэ оператор `true` буцаана.

```javascript
const person = {
  name: "Bob",
  age: 25,
};

console.log("name" in person); // true
```

---

### 4. Үүрлэсэн (Nested) объектын шинж чанарт хандах

**4.1 Өгөгдөлд хандах:** Үүрлэсэн объектоос шинж чанарт хандахдаа энгийн объектын нэгэн адил цэгэн бичиглэл эсвэл дөрвөлжин хаалтын бичиглэлийг ашиглана. Гэхдээ үүрлэсэн бүтэц рүү гүн рүү нь орохын тулд эдгээр хандагчдыг хэлхэж (chain) ашиглах хэрэгтэй.

```javascript
const person = {
  name: "Alice",
  age: 30,
  contact: {
    email: "alice@example.com",
    phone: {
      home: "123-456-7890",
      work: "098-765-4321",
    },
  },
};

console.log(person.contact.phone.work); // "098-765-4321"
```

---

### 5. Primitive болон Non-Primitive өгөгдлийн төрлүүд

**5.1 Primitive өгөгдлийн төрлүүд:** Эдгээр төрөлд тоо, тэмдэгт мөр (string), boolean, null, undefined, болон symbol орно. Эдгээр нь ганц утгыг илэрхийлдэг бөгөөд объект биш учраас "primitive" гэж нэрлэгддэг. Primitive утгууд нь хувиршгүй (immutable) бөгөөд энэ нь нэгэнт үүсгэгдсэн бол утгыг нь өөрчлөх боломжгүй гэсэн үг.

**5.2 Non-Primitive өгөгдлийн төрлүүд:** JavaScript-д эдгээр нь объектууд бөгөөд үүнд ердийн объектууд, массивууд болон функцууд орно. Primitive-ээс ялгаатай нь non-primitive төрлүүд нь шинж чанар эсвэл элемент хэлбэрээр олон утгыг агуулж чаддаг.

---

### 6. Объектын аргууд (Object Methods)

**6.1 Тодорхойлолт:** Объектын аргууд гэдэг нь объекттой холбогдсон функцүүд юм. Тэдгээр нь объектын шинж чанар хэлбэрээр тодорхойлогддог бөгөөд тухайн объектын өгөгдөлд хандах, удирдах боломжтой. Аргын доторх `this` түлхүүр үг нь объект руу өөр рүү нь заадаг бөгөөд ингэснээр түүний шинж чанаруудад хандах боломжийг олгодог.

```javascript
const person = {
  name: "Bob",
  age: 30,
  sayHello: function () {
    return "Hello, my name is " + this.name;
  },
};

console.log(person.sayHello()); // "Hello, my name is Bob"
```

---

### 7. Объект байгуулагч (Object Constructor)

**7.1 Тодорхойлолт:** JavaScript-д байгуулагч (constructor) гэдэг нь объект үүсгэх болон түүнийг эхлүүлэхэд ашиглагддаг тусгай төрлийн функц юм. Энэ нь `new` түлхүүр үгний тусламжтайгаар дуудагддаг бөгөөд шинээр үүсгэгдсэн объектын шинж чанар болон аргуудыг тодорхойлж өгдөг. `Object()` байгуулагч нь шинэ хоосон объект үүсгэдэг.

`new Object()`

---

### 8. Optional Chaining оператортой (`?.`) ажиллах

**8.1 Тодорхойлолт:** Энэ оператор нь объектын шинж чанарт аюулгүйгээр хандах эсвэл аргуудыг тэдгээр нь байгаа эсэхэд санаа зоволгүйгээр дуудах боломжийг олгодог.

```javascript
const user = {
  name: "John",
  profile: {
    email: "john@example.com",
    address: {
      street: "123 Main St",
      city: "Somewhere",
    },
  },
};

console.log(user.profile?.address?.street); // "123 Main St"
console.log(user.profile?.phone?.number); // undefined
```

---

### 9. Объект задлах (Object Destructuring)

**9.1 Тодорхойлолт:** Объект задлах нь объектоос утгуудыг салгаж аваад тэдгээрийг илүү товч бөгөөд уншихад хялбар байдлаар хувьсагчдад оноох боломжийг олгодог.

```javascript
const person = { name: "Alice", age: 30, city: "New York" };

const { name, age } = person;

console.log(name); // Alice
console.log(age); // 30
```

---

### 10. JSON-той ажиллах

**10.1 Тодорхойлолт:** JSON гэдэг нь JavaScript Object Notation гэсэн үгний товчлол юм. Энэ нь сервер болон вэб програмын хооронд өгөгдөл солилцоход түгээмэл хэрэглэгддэг, хөнгөн жинтэй, текстэд суурилсан өгөгдлийн формат юм.

```json
{
  "name": "Alice",
  "age": 30,
  "isStudent": false,
  "list of courses": ["Mathematics", "Physics", "Computer Science"]
}
```

**10.2 JSON.stringify():** Энэ арга нь JavaScript объектыг JSON тэмдэгт мөр болгон хөрвүүлэхэд ашиглагддаг. Энэ нь өгөгдлийг системүүдийн хооронд хялбархан дамжуулах эсвэл хадгалах боломжтой формат руу шилжүүлэхэд хэрэгтэй.

```javascript
const user = {
  name: "John",
  age: 30,
  isAdmin: true,
};

const jsonString = JSON.stringify(user);
console.log(jsonString); // '{"name":"John","age":30,"isAdmin":true}'
```

**10.3 JSON.parse():** Энэ арга нь JSON тэмдэгт мөрийг буцаагаад JavaScript объект болгон хөрвүүлдэг. Энэ нь та вэб сервер эсвэл `localStorage`-аас JSON өгөгдөл хүлээн аваад програм дотроо ашиглах шаардлагатай үед хэрэгтэй.

```javascript
const jsonString = '{"name":"John","age":30,"isAdmin":true}';
const userObject = JSON.parse(jsonString);

// үр дүн: { name: 'John', age: 30, isAdmin: true }
console.log(userObject);
```

---
