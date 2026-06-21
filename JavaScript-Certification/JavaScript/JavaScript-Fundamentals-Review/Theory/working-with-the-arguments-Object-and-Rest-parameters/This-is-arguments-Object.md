Arguments объект гэж юу вэ?

Өмнөх хичээлүүд болон семинаруудаас санаж байгаачлан, та тодорхой тооны параметрүүдтэй функц үүсгэж, тэрхүү функцээ аргументууд дамжуулан дуудаж болдог. Үүнийг сануулахад:

```javascript
// Функц тодорхойлох
function getSum(num1, num2) {
  return num1 + num2;
}

// Функц дуудах
getSum(3, 4); // 7
```

Гэхдээ хэрэв функцийг анх тодорхойлсноос нь илүү олон аргументтайгаар дуудвал яах вэ?

```javascript
// Функц тодорхойлох
function getSum(num1, num2) {
  return num1 + num2;
}

// Илүү олон аргументтайгаар дуудах
console.log(getSum(3, 4, 5)); // 7
```

Энэ тохиолдолд JavaScript алдаа заахгүй. Үүний оронд нэмэлт аргументыг (жишээ нь 5) зүгээр л үл тоомсорлож, зөвхөн 3 болон 4-ийг нэмэх болно. Хувьсах тооны аргумент хүлээн авдаг функцуудыг **variadic functions** гэж нэрлэдэг.



Хэрэв та "variadic function"-тай ажиллаж байгаа бол `arguments` объектыг ашиглах боломжтой. Энэхүү **массив төст (array-like)** объект нь функц руу дамжуулсан бүх аргументуудын утгыг агуулдаг. Жишээ нь:

```javascript
function logArgs() {
  for (const arg of arguments) {
    console.log(arg);
  }
}

logArgs(1, 2, 3);
// Үр дүн:
// 1
// 2
// 3

logArgs("example"); // "example"
```

`arguments` объект нь массив төстэй учраас та тухайн аргументуудад тодорхой индексээр нь ингэж хандаж болно:

```javascript
function getArg() {
  return arguments[1]; // Хоёр дахь аргументыг авч байна
}

console.log(getArg(2, 4, 6)); // 4
```

Мөн та функц хэдэн аргументтай дуудагдсаныг мэдэхийн тулд `length` шинж чанарыг ашиглаж болно:

```javascript
function getArgsCount() {
  return arguments.length;
}

console.log(getArgsCount("Example")); // 1
console.log(getArgsCount("Another", "Example")); // 2
```



Хэдийгээр `arguments` объект нь жинхэнэ массив шиг харагддаг боловч түүнд `includes` эсвэл `push` зэрэг массивын бэлэн аргууд байдаггүй. Эдгээр аргуудыг ашиглахын тулд та эхлээд `arguments` объектыг `slice`, `Array.from()` эсвэл **spread operator** (`...`) ашиглан жинхэнэ массив руу хөрвүүлэх шаардлагатай:

```javascript
function hasCat() {
  // arguments-ийг жинхэнэ массив болгоод includes ашиглаж байна
  return [...arguments].includes("cat");
}

console.log(hasCat("dog", "chicken", "cat")); // true
console.log(hasCat("dog", "chicken", "horse")); // false
```

Хэдийгээр "variadic function" дээр `arguments` объектыг ашиглах боломжтой ч, орчин үеийн JavaScript аппликейшнүүд ихэвчлэн **rest parameter** (`...args`) синтакс ашигладаг. Та энэ талаар ирээдүйн хичээлүүдээс илүү дэлгэрэнгүй үзэх болно.

---

**Энэ "Array-like" (Массив төстэй) боловч жинхэнэ массив биш гэдэг ялгаа нь ойлгомжтой байна уу? Яагаад заавал `[...arguments]` гэж хөрвүүлж байж `includes` ашиглаад байгаа шалтгаан нь тодорхой байна уу?**