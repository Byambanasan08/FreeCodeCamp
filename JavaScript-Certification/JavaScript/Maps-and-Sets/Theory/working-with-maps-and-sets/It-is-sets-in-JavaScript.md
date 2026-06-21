JavaScript дахь Set гэж юу вэ, мөн WeakSet-ээс юугаараа ялгаатай вэ?

JavaScript-д Set нь өгөгдлийн цуглуулгуудыг (data collections) удирдахад зориулсан built-in object юм. Энэ нь primitive төрөл эсвэл object reference байхаас үл хамааран ямар ч төрлийн давтагдашгүй (unique) утгуудыг хадгалах боломжийг олгодог. Set нь доторх утга бүр зөвхөн нэг удаа оршихыг баталгаажуулдаг тул array-аас давхардсан утгуудыг устгах эсвэл ялгаатай утгуудын цуглуулгыг (collections of distinct values) боловсруулахад ашигтай.

Харин WeakSet нь Set-ийн тусгай төрөл бөгөөд илүү цөөн боломжуудтай, мөн weakly held object references болон symbols хадгалах боломжийг олгодог. Set-ээс ялгаатай нь WeakSet нь numbers эсвэл strings гэх мэт primitive төрлүүдийг дэмждэггүй.

Энгийн Set-ээс ялгаатай нь WeakSet нь зөвхөн object-уудыг хадгалдаг бөгөөд тэдгээр object-уудын reference нь "weak" байдаг. Энэ нь WeakSet нь хадгалж буй object-уудыг garbage collection-д өртөхөөс сэргийлдэггүй гэсэн үг юм, хэрэв тэдгээрт өөр reference байхгүй бол. Илүү энгийнээр хэлбэл, хэрэв тухайн object таны кодын өөр хэсэгт ашиглагдахгүй байвал санах ойг (memory) чөлөөлөхийн тулд автоматаар устгагдана.

Set үүсгэхийн тулд Set constructor-ыг ашиглаж, хувьсагчид онооно:

```js
const myFirstSet = new Set();
```

Та мөн Set-ийг утгуудаар эхлүүлж (initialize) болно:

```js
const treeSet = new Set(['Baobab', 'Jackalberry', 'Mopane Tree', 'Breadfruit']);
```

Хэрэв та Set-ийг console-д хэвлэвэл (log), үр дүн нь дараах байдалтай харагдана:

```js
/*
Set(4) {'Baobab', 'Jackalberry', 'Mopane Tree', 'Breadfruit'}
  [[Entries]]
  0: "Baobab"
    value: "Baobab"
  1: "Jackalberry"
    value: "Jackalberry"
  2: "Mopane Tree"
    value: "Mopane Tree"
  3: "Breadfruit"
    value: "Breadfruit"
  size: 4
  [[Prototype]]: Set
*/
```

Хэрэв та Set-ийг утгуудаар эхлүүлээгүй бол add() method-ыг ашиглан Set-д элемент нэмэж болно:

```js
const treeSet = new Set();

// Add items to the treeSet
treeSet.add('Baobab');
treeSet.add('Jackalberry');
treeSet.add('Mopane Tree');
treeSet.add('Breadfruit');
```

Үр дүн болон console дээрх харагдах байдал нь өмнөхтэй ижил хэвээр байна.

Set-д давхардсан (duplicate) элементүүдийг үл тоомсорлодгийг бүү мартаарай:

```js
const treeSet = new Set();

// Add items to the treeSet
treeSet.add('Baobab');
treeSet.add('Jackalberry');
treeSet.add('Mopane Tree');
treeSet.add('Breadfruit');
treeSet.add('Baobab'); // давхардсан элемент үл тоомсорлогдоно

console.log(treeSet);
// Set(4) {'Baobab', 'Jackalberry', 'Mopane Tree', 'Breadfruit'}
```

Set-ийг удирдах (manipulate) бусад method-ууд нь:

```
delete()
clear()
has()
entries()
forEach()
keys()
values()
```

Одоо эдгээр method-ууд хэрхэн ажилладгийг нэг нэгээр нь харцгаая. delete() нь Set-ээс тодорхой нэг элементийг устгана:

```js
const treeSet = new Set();

// Add items to the treeSet
treeSet.add('Baobab');
treeSet.add('Jackalberry');
treeSet.add('Mopane Tree');
treeSet.add('Breadfruit');

treeSet.delete('Breadfruit');

console.log(treeSet); // Set(3) {'Baobab', 'Jackalberry', 'Mopane Tree'}
```

has() нь тухайн утга Set-д байгаа эсэхийг шалгана:

```js
const treeSet = new Set();

// Add items to the treeSet
treeSet.add('Baobab');
treeSet.add('Jackalberry');
treeSet.add('Mopane Tree');
treeSet.add('Breadfruit');

treeSet.delete('Breadfruit');

console.log(treeSet.has('Breadfruit')); // false
```

entries() нь Set iterator буцаадаг бөгөөд утгуудыг [value, value] форматтай array хэлбэрээр агуулна:

```js
const treeSet = new Set();

// Add items to the treeSet
treeSet.add('Baobab');
treeSet.add('Jackalberry');
treeSet.add('Mopane Tree');
treeSet.add('Breadfruit');

treeSet.delete('Breadfruit');

console.log(treeSet.entries());
// SetIterator {'Baobab' => 'Baobab', 'Jackalberry' => 'Jackalberry', 'Mopane Tree' => 'Mopane Tree'}
```

keys() болон values() нь Set доторх утгуудыг харуулдаг. keys() нь values() method-ын alias (өөр нэр) юм:

```js
const treeSet = new Set();

// Add items to the treeSet
treeSet.add('Baobab');
treeSet.add('Jackalberry');
treeSet.add('Mopane Tree');
treeSet.add('Breadfruit');

treeSet.delete('Breadfruit');

console.log('Keys: ', treeSet.keys());
console.log('Values: ', treeSet.values());
// Keys: SetIterator {'Baobab', 'Jackalberry', 'Mopane Tree'}
// Values: SetIterator {'Baobab', 'Jackalberry', 'Mopane Tree'}
```

forEach() нь Set дээгүүр давталт (iterate) хийх боломжийг олгодог:

```js
const treeSet = new Set();

// Add items to the treeSet
treeSet.add('Baobab');
treeSet.add('Jackalberry');
treeSet.add('Mopane Tree');
treeSet.add('Breadfruit');

treeSet.delete('Breadfruit');

treeSet.forEach((tree) => console.log(tree));
/*
Baobab
Jackalberry
Mopane Tree
*/
```
clear() нь array-ийн бүх элементүүдийг устгана:

```js
const treeSet = new Set();

// Add items to the treeSet
treeSet.add('Baobab');
treeSet.add('Jackalberry');
treeSet.add('Mopane Tree');
treeSet.add('Breadfruit');

treeSet.delete('Breadfruit');

treeSet.clear();

console.log(treeSet); // Set(0) {size: 0}
```

Мөн Set доторх элементүүдийн тоог буцаадаг size property байдаг гэдгийг дурдах нь зүйтэй:

```js
const treeSet = new Set();

// Add items to the treeSet
treeSet.add('Baobab');
treeSet.add('Jackalberry');
treeSet.add('Mopane Tree');
treeSet.add('Breadfruit');

treeSet.delete('Breadfruit');

console.log(treeSet.size); // 3
```

Set-тэй адил WeakSet constructor мөн байдаг бөгөөд та WeakSet үүсгэхэд ашиглаж болно:

```js
const treeWeakSet = new WeakSet();
```

WeakSet нь мөн add(), delete(), болон has() method-уудтай:

```js
const treeWeakSet = new WeakSet();

treeWeakSet.add({ name: 'Baobab' });
treeWeakSet.add({ name: 'Jackalberry' });
treeWeakSet.add({ name: 'Mopane Tree' });
treeWeakSet.add({ name: 'Breadfruit' });

treeWeakSet.delete('Jackalberry');
console.log(treeWeakSet.has('Jackalberry')); // false

console.log(treeWeakSet);
```

Output дээр WeakSet-ийн агуулга дараах байдлаар харагдана:

```js
/*
WeakSet {{…}, {…}, {…}, {…}}
  [[Entries]]
    No properties
  [[Prototype]]: WeakSet
    .
    .
    .
*/
```

Агуулга нь хоосон мэт харагдаж байгаа нь WeakSet нь iterable биш бөгөөд өөрийн агуулгыг шууд ил гаргадаггүйтэй холбоотой.

Зөвхөн symbols болон тодорхой key, value-тэй object-уудыг дэмждэг гэдгийг бүү мартаарай. numbers эсвэл strings зэрэг primitive нэмэхэд алдаа үүснэ:

```js
treeWeakSet.add('Alan Smith');

console.log(treeWeakSet); // Invalid value used in weak set
//    at WeakSet.add (<anonymous>)
```

Set болон WeakSet-ийн гол ялгаа нь Set нь ямар ч төрлийн утгыг хадгалж чаддаг бол WeakSet нь зөвхөн object-уудыг хадгалдаг.

Set болон WeakSet-ийн бусад анзаарагдах ялгаанууд:

Feature 	                           |  Set 	                                                                                                                                                          |  WeakSet
Type of Values Stored       |   Ямар ч өгөгдлийн төрөл хадгална 	                                                                                                  |  Зөвхөн object хадгална
Referencing 	                   |    Strong referencing 	                                                                                                                                  |   Weak referencing
Iteration 	                           |    forEach болон loop-оор iteration дэмждэг                                                                                              |   Iteration дэмждэггүй
Methods and Properties     |	add(), delete(), has(), keys(), values(), size, болон бусад                                                                     |	add(), delete(), болон has() л байдаг
Use case 	                   |  Давтагдашгүй утгуудын ерөнхий зориулалтын цуглуулга болон array-аас давхардлыг устгах 	  |     Object reference-уудыг санах ойд үр ашигтай хянах

Та эдгээр хоёр төрлийн set ямар төрлийн утгууд хадгалж чаддаг, хадгалсан object-ууд дээр iteration хийх боломж, мөн тэдгээрийн тохиромжтой хэрэглээ (use case)-ийн ялгааг харж болно. Энэ хүснэгтийн агуулгыг хэсэг хугацаанд анхааралтай уншаарай.
