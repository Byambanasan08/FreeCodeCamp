# Data Structures тойм (Review)

1. Algorithms болон Big O Notation

   1.1 Algorithms: Асуудлыг шийдэх эсвэл даалгаврыг гүйцэтгэхэд зориулсан тодорхой (unambiguous) зааврын (instructions) цогц. Алгоритмууд нь хязгаарлагдмал (finite) тооны алхмуудын дотор дуусах ёстой бөгөөд алхам бүр нь нарийн (precise), тодорхой (unambiguous) байх ёстой.

   1.2 Big O Notation: Оролтын хэмжээ нэмэгдэхэд алгоритмын хамгийн муу нөхцөл дэх (worst-case) гүйцэтгэл (performance) буюу өсөлтийн хурдыг (growth rate) тодорхойлдог. Энэ нь тогтмол хүчин зүйлүүд (constant factors) болон доод зэрэглэлийн (lower-order terms) илэрхийлэлүүдийг үл харгалзан, оролтын хэмжээ өсөхөд нөөцийн (resource usage) хэрэглээ хэрхэн өсөхийг анхаардаг.

2. Нийтлэг Time Complexities

   2.1 O(1) - Constant Time: Алгоритм нь оролтын хэмжээнээс үл хамааран ижил хугацаа зарцуулна.

```js id="d1k9pm"
function checkEvenOrOdd(number) {
  if (number % 2 === 0) {
    return "Even";
  } else {
    return "Odd";
  }
}

console.log(checkEvenOrOdd(4)); // "Even"
console.log(checkEvenOrOdd(5)); // "Odd"
```

2.2 O(log n) - Logarithmic Time: Оролт өсөхөд хугацаа удаанаар нэмэгддэг. Энэ нь асуудлын хэмжээг дахин дахин тодорхой хувь (fraction)-аар багасгадаг алгоритмуудад (жишээ нь Binary Search) түгээмэл байдаг.

2.3 O(n) - Linear Time: Ажиллах хугацаа нь оролтын хэмжээтэй пропорциональ өсдөг.

```js id="k2v8qx"
for (const grade of grades) {
  // grades is an array
  console.log(grade);
}
```

2.4 O(n log n) - Log-Linear Time: Merge Sort болон Quick Sort зэрэг үр ашигтай (efficient) эрэмбэлэх алгоритмуудын түгээмэл time complexity.

2.5 O(n²) - Quadratic Time: Ажиллах хугацаа квадрат байдлаар өсдөг. Ихэвчлэн nested loop-ууд дээр ажиглагддаг.

```js id="p7t3rz"
const n = 3;

for (let i = 0; i < n; i++) {
  for (let j = 0; j < n; j++) {
    console.log("Hello, World!");
  }
}
```

3. Space Complexity

   3.1 O(1) - Constant Space: Алгоритм нь оролтын хэмжээнээс үл хамааран ижил хэмжээний санах ой ашиглана.
   3.2 O(n) - Linear Space: Санах ойн хэрэглээ нь оролтын хэмжээтэй пропорциональ өсдөг.
   3.3 O(n²) - Quadratic Space: Санах ойн хэрэглээ нь оролтын хэмжээтэй квадрат байдлаар өсдөг.

4. Problem-Solving Techniques

   4.1 Асуудлыг ойлгох (Understanding the Problem): Асуудлын тайлбарыг олон удаа унш. Оролт (input), хүлээгдэж буй гаралт (expected output), мөн оролтыг гаралт болгон хэрхэн хувиргахыг тодорхойл.

   4.2 Pseudocode: Алгоритмын логикийн өндөр түвшний (high-level) тайлбар бөгөөд хэлээс (language) хамааралгүй. IF, ELSE, FOR, WHILE зэрэг програмчлалын бүтэц (constructs)-тэй хосолсон нийтлэг бичгийн хэл ашигладаг.

```id="m4y2np"
GET original_string
SET reversed_string = ""
FOR EACH character IN original_string:
  ADD character TO THE BEGINNING OF reversed_string
DISPLAY reversed_string
```

4.3 Edge Cases: Алгоритм зохицуулах ёстой хүрээний (boundaries) онцгой, хүчинтэй (valid) оролтууд. Edge case-уудыг үргэлж бодолцож, тест хийх хэрэгтэй.

5. Arrays

   5.1 Static Arrays: Анх үүсгэх (initialization) үед тодорхойлогдсон тогтмол хэмжээтэй. Элементүүд нь санах ойн залгаа (adjacent) байршлуудад хадгалагдана. Програм ажиллаж байх үед хэмжээг өөрчлөх боломжгүй.

   5.2 Dynamic Arrays: Програм ажиллаж байх үед автоматаар томрох (grow) эсвэл багасах (shrink) боломжтой. Шаардлагатай үед илүү том array руу автоматаар хуулж (copying) хэмжээ өөрчлөх механизмаар ажилладаг.

6. JavaScript дахь Dynamic Arrays хэрэгжилт (Implementation)

```js id="y7n3kx"
let numbers = [3, 4, 5, 6];
// Элементэд хандах (Access elements)
console.log(numbers[0]); // 3

// Элемент шинэчлэх (Update elements)
numbers[2] = 16;
console.log([...numbers]); // [3, 4, 16, 6]

// Элемент нэмэх (Add elements)
numbers.push(7);
console.log([...numbers]); // [3, 4, 16, 6, 7]

// Тодорхой index дээр нэмэх (Add at a specific index)
numbers.splice(3, 0, 15);
console.log([...numbers]); // [3, 4, 16, 15, 6, 7]

// Элемент устгах (Remove elements)
numbers.splice(2, 1); // Тодорхой index дээр устгах
console.log([...numbers]); // [3, 4, 15, 6, 7]

numbers.pop(); // Сүүлийн элементийг устгах
console.log([...numbers]); // [3, 4, 15, 6]
```

Dynamic Arrays-ийн Time Complexities

```
Access: O(1)
Төгсгөлд оруулах (Insert at end): O(1) дундаж (average), хэмжээг өөрчлөх (resizing) шаардлагатай үед O(n)
Дунд хэсэгт оруулах (Insert in middle): O(n)
Устгах (Delete): Дунд хэсэгт O(n), төгсгөлд O(1)
```

7. Stacks

7.1 Stacks: Last-In, First-Out (LIFO) data structure. Элементүүд зөвхөн top хэсгээс нэмэгдэж, устгагдана.

7.2 Push Operation: Stack-ийн top хэсэгт элемент нэмэх үйлдэл. Time complexity: O(1).

7.3 Pop Operation: Stack-ийн top хэсгээс элемент устгах үйлдэл. Time complexity: O(1).

```js id="k4v9mt"
// JavaScript array-г stack болгон ашиглах

let stack = [];

// Push үйлдлүүд
stack.push(1);
stack.push(2);
stack.push(3);
console.log([...stack]); // [1, 2, 3]

// Pop үйлдлүүд
let topElement = stack.pop();
console.log(topElement); // 3
console.log([...stack]); // [1, 2]
```

8. Queues

   8.1 Queues: First-In, First-Out (FIFO) data structure. Элементүүд back хэсэгт нэмэгдэж, front хэсгээс устгагдана.

   8.2 Enqueue Operation: Queue-ийн back хэсэгт элемент нэмэх үйлдэл. Time complexity: O(1).

   8.3 Dequeue Operation: Queue-ийн front хэсгээс элемент устгах үйлдэл. Time complexity: O(1).

```js id="h8p2xr"
// JavaScript array-г queue болгон ашиглах
let queue = [];

// Enqueue үйлдлүүд
queue.push(1);
queue.push(2);
queue.push(3);
console.log([...queue]); // [1, 2, 3]

// Dequeue үйлдлүүд
let firstElement = queue.shift();
console.log(firstElement); // 1
console.log([...queue]); // [2, 3]
```

9. Linked Lists

   9.1 Linked Lists: Шугаман data structure бөгөөд node бүр өгөгдөл (data) болон дараагийн node руу заах reference агуулна. Node-ууд гинжин (chain) байдлаар холбогдсон байдаг.

   9.2 Singly Linked Lists

   Structure: Node бүр өгөгдөл болон дараагийн node руу заах нэг reference-тэй.
   Traversal: Зөвхөн head-ээс tail хүртэл урагш хөдөлнө.
   Head Node: Жагсаалтын эхний node, ихэвчлэн шууд хандах боломжтой цорын ганц node.
   Tail Node: Жагсаалтын сүүлийн node, null руу заана.

9.3 Operations болон Time Complexities

Эхэнд оруулах (Insert at beginning): O(1)
Төгсгөлд оруулах (Insert at end): O(n) - төгсгөл хүртэл traversal хийх шаардлагатай
Дунд хэсэгт оруулах (Insert in middle): O(n) - тухайн байрлалд хүрэх шаардлагатай
Эхнээс устгах (Delete from beginning): O(1)
Төгсгөлөөс устгах (Delete from end): O(n) - өмнөх node-ийг олох шаардлагатай
Дунд хэсгээс устгах (Delete from middle): O(n) - тухайн node-ийг олох шаардлагатай

9.4 Doubly Linked Lists

Structure: Node бүр өгөгдөл болон хоёр reference-тэй: дараагийн node болон өмнөх node.
Traversal: Хоёр чиглэлд хөдөлж болно.
Memory: Нэмэлт reference-ээс шалтгаалан singly linked list-ээс илүү санах ой шаарддаг.

9.5 Data Structure бүрийг хэзээ ашиглах вэ

Arrays (dynamic arrays): Дараалалтай (ordered), index-ээр хандах шаардлагатай бөгөөд хэмжээг урьдчилан мэдэхгүй үед
Stacks: LIFO үйлдлүүдэд (undo functionality, expression evaluation, backtracking)
Queues: FIFO үйлдлүүдэд (task scheduling, breadth-first search)
Linked Lists: Эхэнд байнга insert/delete хийх шаардлагатай, хэмжээ тодорхойгүй, random access шаардлагагүй үед
