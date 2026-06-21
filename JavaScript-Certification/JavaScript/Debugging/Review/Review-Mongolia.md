# Debugging JavaScript Review

JavaScript Debugging тойм

---

**1. Common Types of Error Messages**

**1.1 SyntaxError:** Энэ төрлийн алдаа нь кодондоо ямар нэг зүйлийг буруу бичих үед гардаг, жишээ нь хаалт (parenthesis) эсвэл дөрвөлжин хаалт (bracket) дутуу бичих. Үүнийг өгүүлбэрийн дүрмийн алдаатай адилтгаж ойлгож болно.

```js id="c7f2nk"
const arr = ["Beau", "Quincy" "Tom"]
```

**1.2 ReferenceError:** ReferenceError нь олон янзаар үүсч болно. Эхний жишээ нь тодорхойлогдоогүй хувьсагч ашиглах. Мөн let эсвэл const-оор зарласан хувьсагчийг тодорхойлогдохоос нь өмнө ашиглах нь бас ReferenceError үүсгэнэ.

```js id="t9k4vz"
console.log(num);
const num = 50;
```

**1.3 TypeError:** Энэ төрлийн алдаа нь буруу төрлийн (type) өгөгдөл дээр үйлдэл хийхийг оролдох үед гардаг.

```js id="p2m8wx"
const developerObj = {
  name: "Jessica",
  country: "USA",
  isEmployed: true,
};

developerObj.map();
```

**RangeError:** Энэ төрлийн алдаа нь JavaScript-ийн зөвшөөрөгдсөн хүрээнээс гадуур утга ашиглахыг оролдох үед гардаг.

```js id="z5h1rb"
const arr = [];
arr.length = -1;
```

---

**2. The throw Statement**

**2.1 Definition:** JavaScript дахь throw statement нь хэрэглэгч өөрөө тодорхойлсон exception-ийг шидэхэд ашиглагддаг. Програмчлалд exception гэдэг нь гэнэтийн үйл явдал тохиолдож, програмын хэвийн урсгалыг тасалдуулахыг хэлдэг.

```js id="v6x3qp"
function validateNumber(input) {
  if (typeof input !== "number") {
    throw new TypeError("Expected a number, but received " + typeof input);
  }
  return input * 2;
}

console.log(validateNumber("Naomi")); // TypeError: Expected a number, but received string
```

---

**3. try...catch...finally**

**3.1 Definition:** try block нь алдаа үүсэж болзошгүй кодыг ороож (wrap хийхэд) ашиглагддаг. Энэ нь амжилтгүй болж магадгүй үйлдлийг туршиж үзэх “аюулгүй орчин” шиг ажилладаг. catch block нь try block дотор гарсан алдааг барьж авч, зохицуулдаг. Та catch дотор error object-ийг ашиглан ямар алдаа гарсныг шалгаж болно. finally block нь try болон catch block-уудын дараа, алдаа гарсан эсэхээс үл хамааран үргэлж ажилладаг. Энэ нь ихэвчлэн цэвэрлэгээний (cleanup) ажилд ашиглагддаг, жишээ нь файл хаах эсвэл нөөц чөлөөлөх.

```js id="y8d2mf"
function processInput(input) {
  if (typeof input !== "string") {
    throw new TypeError("Input must be a string.");
  }

  return input.toUpperCase();
}

try {
  console.log("Starting to process input...");
  const result1 = processInput("hello");
  console.log("Processed result:", result1); // HELLO
  const result2 = processInput(9); // throws TypeError
  console.log("Processed result:", result2); // not executed
} catch (error) {
  console.error("Error occurred:", error.message);
}
```

---

**4. Debugging Techniques**

**4.1 debugger Statement:** Энэ statement нь кодын тодорхой мөр дээр execution-ийг түр зогсоож, програм дотор юу болж байгааг шалгах боломж олгодог.

```js id="k3p7vx"
let firstNumber = 5;
let secondNumber = 10;

debugger; // Code execution pauses here
let sum = firstNumber + secondNumber;

console.log(sum);
```

**4.2 Breakpoints:** Breakpoint нь таны кодын дурын мөр дээр execution-ийг түр зогсоох боломжийг олгодог. Түр зогссоны дараа хувьсагчдыг шалгах, expression-уудыг үнэлэх, мөн call stack-ийг ажиглах боломжтой.

**4.3 Watchers:** Watch expression нь код ажиллаж байх үед хувьсагч эсвэл expression-ийн утгыг, одоогийн scope-д байхгүй байсан ч хянах боломжийг олгодог.

**4.4 Profiling:** Profiling нь performance bottleneck-уудыг илрүүлэхэд тусалдаг бөгөөд CPU ашиглалт, функцийн дуудалт, execution хугацаа зэргийг бичиж авдаг.

**4.5 console.dir():** Энэ method нь тодорхой JavaScript object-ийн property-уудыг интерактив жагсаалт хэлбэрээр харуулдаг. Энэ нь nested property-уудыг дэлгэж харах боломжтой hierarchical жагсаалт үүсгэнэ.

```js id="m1q9zy"
console.dir(document);
```

**4.6 console.table():** Энэ method нь хүснэгтэн өгөгдлийг console дээр хүснэгт хэлбэрээр харуулдаг. Энэ нь нэг заавал аргумент (array эсвэл object) болон харуулах property (column)-уудыг заах optional аргумент авна.
