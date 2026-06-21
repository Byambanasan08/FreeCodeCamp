Map Object гэж юу вэ, мөн WeakMap-ээс юугаараа ялгаатай вэ?

JavaScript-д Map нь key-value хосуудыг (key-value pairs) хадгалдаг built-in object бөгөөд object-тэй төстэй. Гэхдээ энэ нь стандарт JavaScript object-оос ялгаатай нь key болгон ямар ч төрлийн утгыг, тэр дундаа object болон function-уудыг ашиглах боломжийг олгодог.

WeakMap нь мөн key-value хосуудын цуглуулга (collection) бөгөөд Map-тэй төстэй боловч key-үүддээ weak reference ашигладаг. Key нь заавал object байх ёстой бол value нь ямар ч төрлийн байж болно.

WeakMap ба Map-ийн харьцааг өмнөх хичээл дээр сурсан WeakSet ба Set-ийн харьцаатай төстэй гэж ойлгож болно.

Map үүсгэхийн тулд Map() constructor-ыг new түлхүүр үгтэй (keyword) хамт ашиглана:

```js id="qk5tqg"
const myFirstMap = new Map();
```

Та мөн Map-ийг утгуудаар эхлүүлж (initialize) болно:

```js id="k3t0po"
const myTreesMap = new Map([
 [{ type: 'deciduous' }, 'Maple tree'],
 [['forest', 'grove'], 'Pine tree'],
 [42, 'Oak tree'],
 [true, 'Birch tree'],
 [function() { return 'I am a function key'; }, 'Willow tree'],
]);
```

Хэрэв та Map-ийг утгуудаар эхлүүлээгүй бол set() method-ыг ашиглан утгууд нэмэж болно:

```js id="k9f8pr"
const myTreesMap = new Map();
myTreesMap.set({ type: 'deciduous' }, 'Maple tree');
myTreesMap.set([1, 2], 'Pine tree');
myTreesMap.set(42, 'Oak tree');
myTreesMap.set(true, 'Birch tree');
myTreesMap.set(function() { return "I'm a function key"; }, 'Willow tree');

console.log(myTreesMap);
```

Console дээр Map дараах байдлаар харагдана:

```js id="r6b2nj"
/*
Map(5) {{…} => 'Maple tree', Array(2) => 'Pine tree', 42 => 'Oak tree', true => 'Birch tree', ƒ => 'Willow tree'}
  [[Entries]]
    0:{Object => "Maple tree"}
      key: {type: 'deciduous'}
      value: "Maple tree"
    1:{Array(2) => "Pine tree"}
      key: (2)
      value: "Pine tree"
    2:{42 => "Oak tree"}
      key: 42
      value: "Oak tree"
    3:{true => "Birch tree"}
      key: true
      value: "Birch tree"
    4:{function () { return "I'm a function key"; } => "Willow tree"}
      key: f ()
      value: "Willow tree"
    size: 5
    [[Prototype]]: Map
*/
```

Map-тэй ажиллахад ашиглаж болох бусад method-ууд:

```
get(key) — өгөгдсөн key-тэй холбоотой value-г авах.
has(key) — тухайн key Map дотор байгаа эсэхийг шалгах.
delete(key) — key-value хосыг Map-оос устгах.
clear() — бүх key-value хосуудыг устгах.
entries() — Map-ийн entries-ийг шалгах (MapIterator хэлбэрээр буцаана).
forEach() — Map-ийн entries дээр давталт хийх.
size — Map доторх key-value хосуудын тоог илэрхийлнэ.
```

WeakMap() constructor мөн байдаг бөгөөд та WeakMap үүсгэхэд ашиглаж болно:

```js id="5c3c0u"
const myFirstWeakMap = new WeakMap();
```

set(), get(), has(), болон delete() method-уудыг WeakMap дээр мөн ашиглаж болно. Жишээлбэл, set() method ашиглан Map-д элемент нэмэхийг харуулбал:

```js id="rjbbt0"
const myTreeWeakMap = new WeakMap();

myTreeWeakMap.set({ id: 1 }, 'Maple tree');
myTreeWeakMap.set({ id: 2 }, 'Pine tree');
myTreeWeakMap.set({ id: 3 }, 'Oak tree');
myTreeWeakMap.set({ id: 4 }, 'Birch tree');
myTreeWeakMap.set({ id: 5 }, 'Willow tree');

console.log(myTreeWeakMap);
```

Console дээр WeakMap дараах байдлаар харагдана:

```js id="v8t0bm"
/*
WeakMap {{…} => 'Willow tree', {…} => 'Maple tree', {…} => 'Pine tree', {…} => 'Oak tree'}
  [[Entries]]
    No properties
  [[Prototype]]: WeakMap
*/
```

Map болон WeakMap-ийн ялгаанууд:

Feature 	Map 	WeakMap
Key Type 	Key нь strings, numbers, objects, function зэрэг ямар ч төрлийн байж болно. 	Key нь заавал object байх ёстой.
Use Case 	Ямар ч төрлийн key-тэй өгөгдлийг холбох шаардлагатай үед Map ашиглана. 	Зөвхөн object-той өгөгдлийг холбох шаардлагатай үед WeakMap ашиглана.
Iteration 	forEach(), keys(), values(), эсвэл entries() ашиглан Map дээр давталт хийж болно. 	WeakMap нь iterable биш.
Size Property 	Map нь size property-тэй бөгөөд key-value хосын тоог авна. 	WeakMap нь size property байхгүй.

Дээрх хүснэгтэд key төрөл, хэрэглээ (use case), iteration, болон size property зэрэг ялгаануудыг нэгтгэн харуулсан байна. Эдгээрийн ялгааг илүү сайн ойлгохын тулд хүснэгтийн агуулгыг хэсэг хугацаанд анхааралтай уншаарай.
