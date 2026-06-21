Optional Chaining оператор гэж юу вэ, тэр нь хэрхэн ажилладаг вэ?

Optional chaining оператор (`?.`) нь объектын шинж чанарт (properties) аюулгүйгээр хандах эсвэл аргуудыг (methods) тэдгээр нь байгаа эсэхэд санаа зоволгүйгээр дуудахад ашиглагддаг JavaScript-ийн маш хэрэгцээтэй хэрэгсэл юм. Энэ нь дутуу хэсгүүдтэй байж болзошгүй объектуудтай ажиллахад зориулагдсан "хамгаалалтын тор" (safety net) мэт ажилладаг.

```javascript
const person = {
  name: "Alice",
  age: 30
};

console.log(person.name); // "Alice"
console.log(person.job); // undefined
```

Энэ жишээнд `person.name` байгаа тул "Alice" гэж хэвлэгдэж байна. Харин `person.job` байхгүй тул бидэнд `undefined` гэсэн утга өгч байна.

Одоо байхгүй байж болзошгүй объектын шинж чанар руу хандахыг хүсэж байна гэж бодъё:

```javascript
const person = {
  name: "Alice",
  age: 30
};

console.log(person.address.street); // Энэ нь алдаа (error) заах болно!
```



Дээрх жишээ нь `Uncaught TypeError` алдааг заах болно. Учир нь `person.address` нь `undefined` байгаа тул бид түүний `street` шинж чанар руу хандах боломжгүй юм. Яг ийм үед optional chaining оператор хэрэг болдог. Optional chaining операторыг ашигласан жишээг энд харуулав:



```javascript
const user = {
  name: "John",
  profile: {
    email: "john@example.com",
    address: {
      street: "123 Main St",
      city: "Somewhere"
    }
  }
};

console.log(user?.profile?.address?.street); // "123 Main St"
console.log(user?.profile?.phone?.number);   // undefined
```

Optional chaining операторыг ашигласнаар бид JavaScript-д "хэрэв объект (эсвэл `?.`-ийн өмнөх утга) байгаа бөгөөд `null` эсвэл `undefined` биш бол үйлдлийг үргэлжлүүл" гэж хэлж байгаа хэрэг юм.

Хэрэв `?.`-ийн өмнөх утга нь `null` эсвэл `undefined` байвал JavaScript үйлдлийг үргэлжлүүлж алдаа заахын оронд шууд `undefined` гэсэн утгыг буцаадаг.

Optional chaining оператор нь шинж чанар эсвэл арга (method) байгаа эсэхэд итгэлгүй байгаа үед хамгийн хэрэгтэй байдаг гэдгийг санаарай. Энэ нь алдаанаас сэргийлж, таны кодыг илүү найдвартай (robust) болгодог.

---
