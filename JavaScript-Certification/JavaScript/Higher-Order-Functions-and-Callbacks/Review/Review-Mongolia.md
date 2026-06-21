# JavaScript-ийн дээд эрэмбийн функцуудын тойм (Full Text)

### 1. Callback функцууд болон forEach арга

**1.1 Тодорхойлолт:** JavaScript-д **callback функц** гэдэг нь өөр нэг функц руу аргумент болгон дамжуулагдсан бөгөөд үндсэн функц ажиллаж дууссаны дараа гүйцэтгэгддэг функцийг хэлнэ.

**1.2 forEach() арга:** Энэ арга нь массивын элемент бүрээр дамжиж, элемент бүр дээр тодорхой үйлдэл хийхэд ашиглагддаг. `forEach`-д ашиглагдах callback функц нь гурав хүртэлх аргумент хүлээн авч болно: **одоогийн элемент**, **индекс**, болон **тухайн массив**.

```javascript
const numbers = [1, 2, 3, 4, 5];

// Үр дүн: 2 4 6 8 10
numbers.forEach((number) => {
  console.log(number * 2);
});
```

---

### 2. Higher Order Functions (Дээд эрэмбийн функцууд)

**2.1 Тодорхойлолт:** Дээд эрэмбийн функц гэдэг нь нэг буюу түүнээс дээш функцийг аргумент болгон авдаг, эсвэл үр дүн болгож функцийг (эсвэл утгыг) буцаадаг функцийг хэлнэ.

```javascript
function operateOnArray(arr, operation) {
  const result = [];
  for (let i = 0; i < arr.length; i++) {
    result.push(operation(arr[i]));
  }
  return result;
}

function double(x) {
  return x * 2;
}

const numbers = [1, 2, 3, 4, 5];
const doubledNumbers = operateOnArray(numbers, double);
console.log(doubledNumbers); // [2, 4, 6, 8, 10]
```

**2.2 map() арга:** Энэ арга нь анхны массивын элемент бүрт өгөгдсөн функцийг хэрэгжүүлэх замаар **шинэ массив** үүсгэхэд ашиглагддаг. Callback функц нь гурван аргумент хүлээн авах боломжтой: одоогийн элемент, индекс, массив.

```javascript
const numbers = [1, 2, 3, 4, 5];
const doubled = numbers.map((num) => num * 2);

console.log(numbers); // [1, 2, 3, 4, 5] (Өөрчлөгдөөгүй)
console.log(doubled); // [2, 4, 6, 8, 10] (Шинэ массив)
```

**2.3 filter() арга:** Энэ арга нь тодорхой нэг шалгуурыг давсан элементүүдээр шинэ массив үүсгэхэд ашиглагддаг. Энэ нь өгөгдлийг шүүж авахад маш хэрэгтэй. `map` аргатай адил callback функц нь элемент, индекс, массив гэсэн гурван аргумент авна.

```javascript
const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
const evenNumbers = numbers.filter((num) => num % 2 === 0);

console.log(evenNumbers); // [2, 4, 6, 8, 10]
```

**2.4 reduce() арга:** Энэ арга нь массивыг боловсруулж, түүнийг **ганцхан утга** болгон нэгтгэхэд ашиглагддаг. Энэ утга нь тоо, тэмдэгт мөр, объект, эсвэл бүр өөр массив байж болно. `reduce()` нь массивын элемент бүрт дарааллын дагуу "reducer" функцийг хэрэгжүүлж, тооцоолол бүрийн үр дүнг дараагийнх руу дамжуулдаг. Үндсэн хоёр параметр нь: **accumulator** (хуримтлуулагч) болон **current value** (одоогийн утга).

```javascript
const numbers = [1, 2, 3, 4, 5];
const sum = numbers.reduce(
  (accumulator, currentValue) => accumulator + currentValue,
  0,
);

console.log(sum); // 15
```

---

### 3. Method Chaining (Аргуудын хэлхээ)

**3.1 Тодорхойлолт:** Энэ нь нэг мөр кодонд нэг объект дээр олон аргыг дараалан дуудах програмчлалын техник юм. Энэ нь кодыг илүү товчхон бөгөөд уншихад хялбар болгодог.

```javascript
const result = "  Hello, World!  "
  .trim()
  .toLowerCase()
  .replace("world", "JavaScript");

console.log(result); // "hello, JavaScript!"
```

---

### 4. sort аргатай ажиллах

**4.1 Тодорхойлолт:** `sort` арга нь массивын элементүүдийг эрэмбэлэхэд ашиглагддаг. Элементүүдийг тухайн байрлалд нь (in place) шууд эрэмбэлдэг.

- **Тэмдэгт мөр:** Анхдагчаар цагаан толгойн дарааллаар эрэмбэлнэ.
- **Тоо:** Тоог эрэмбэлэхийн тулд заавал **харьцуулах функц** (compare function) дамжуулах шаардлагатай. Учир нь `sort` нь тоог тэмдэгт мөр рүү хөрвүүлж, тэдгээрийн UTF-16 кодын утгыг харьцуулдаг (Ж-нь: "200" нь "3"-аас өмнө орно).

```javascript
const numbers = [414, 200, 5, 10, 3];

// Багаас их рүү эрэмбэлэх
numbers.sort((a, b) => a - b);

console.log(numbers); // [3, 5, 10, 200, 414]
```

---

### 5. every болон some аргууд

**5.1 every() арга:** Массивын **бүх элементүүд** шалгуурыг давж байгаа эсэхийг шалгана. Хэрэв нэг л элемент бүдэрвэл шууд `false` буцаана.

```javascript
const numbers = [2, 4, 6, 8, 10];
const hasAllEvenNumbers = numbers.every((num) => num % 2 === 0);

console.log(hasAllEvenNumbers); // true
```

**5.2 some() арга:** Массивт **ядаж нэг** элемент шалгуурыг давж байгаа эсэхийг шалгана. Шалгуурт тэнцэх нэг л элемент олмогц шууд `true` буцаана.

```javascript
const numbers = [1, 3, 5, 7, 8, 9];
const hasSomeEvenNumbers = numbers.some((num) => num % 2 === 0);

console.log(hasSomeEvenNumbers); // true
```

---
