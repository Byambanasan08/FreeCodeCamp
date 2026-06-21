Binary logical оператор гэж юу вэ, тэдгээр нь хэрхэн ажилладаг вэ?

Binary logical операторууд нь хоёр илэрхийллийг шалгаж, тэдгээрийн truthy эсвэл falsy эсэхээс хамааран үр дүн буцаадаг. Одоо хамгийн түгээмэл гурван оператор болох logical AND, logical OR, болон nullish coalescing операторыг авч үзье.

Logical AND оператор (&&) нь хоёр операнд хоёулаа true эсэхийг шалгана. Хэрэв хоёулаа truthy байвал баруун талын утгыг буцаана:

```javascript id="v1k8dp"
const result = true && 'hello';

console.log(result); // hello
```

Энэ жишээнд хоёр операнд хоёулаа true тул "hello" консолд хэвлэгдэнэ. Харин аль нэг нь falsy байвал falsy утгыг буцаана:

```javascript id="m4q7sx"
const result = 0 && 3;

console.log(result); // 0
```

0 нь falsy тул 0 буцаагдана. Хэрэв хоёулаа falsy байвал эхний falsy утгыг буцаана:

```javascript id="z2p9rt"
const result = false && 0;

console.log(result); // false
```

false нь эхний falsy утга тул false буцаагдана.

Logical AND оператор нь олон нөхцлийг нэг дор шалгах үед ашиглагддаг:

```javascript id="y6c3vn"
if (2 < 3 && 3 < 4) {
 console.log('The if block runs'); 
} else {
 console.log('The else block runs');
}
```

Энд хоёр нөхцөл хоёулаа үнэн тул "The if block runs" гэж хэвлэгдэнэ.

Logical OR оператор (||) нь дор хаяж нэг операнд truthy эсэхийг шалгана. Хэрэв эхний операнд truthy байвал тэр утгыг буцаана:

```javascript id="k8n1dj"
const result = 'This is truthy' || false;

console.log(result); // This is truthy
```

Хэрэв эхний операнд falsy, харин хоёр дахь нь truthy байвал хоёр дахь утгыг буцаана:

```javascript id="p3v6mx"
const result = 0 || 'This is truthy';

console.log(result); // This is truthy
```

Logical OR операторыг if/else нөхцөлд ихэвчлэн дараах байдлаар ашигладаг:

```javascript id="t5r2cw"
let userInput;

if (userInput || 'Guest') {
 console.log('A user is present');
} else {
 console.log('No user detected');
}
```

userInput-д утга оноогоогүй тул undefined байна. Гэхдээ "Guest" нь truthy тул "A user is present" гэж хэвлэгдэнэ.

Nullish coalescing оператор (??) нь logical AND болон OR-оос арай өөрөөр ажилладаг. Энэ нь зөвхөн эхний утга null эсвэл undefined үед л дараагийн утгыг буцаана:

```javascript id="q9x4le"
const result = null ?? 'default';

console.log(result); // default
```

Энд null нь nullish утга тул "default" буцаагдана.

Энэ оператор нь зөвхөн null эсвэл undefined үед fallback утга өгөх шаардлагатай үед маш хэрэгтэй:

```javascript id="h2m8zs"
const userSettings = {
 theme: null,
 volume: 0,
 notifications: false,
};

let theme = userSettings.theme ?? 'light';
console.log(theme); // light
```

Энд userSettings объект доторх theme нь null тул "light" утга буцаагдана.
