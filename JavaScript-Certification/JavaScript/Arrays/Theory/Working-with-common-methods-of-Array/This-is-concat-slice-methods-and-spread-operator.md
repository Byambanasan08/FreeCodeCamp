### Shallow Copy (Өнгөц хуулбар) гэж юу вэ, түүнийг хэрхэн үүсгэх вэ?

Массивын **shallow copy** (өнгөц хуулбар) гэдэг нь эх массивтайгаа ижил элементүүдийг агуулсан **шинэ массив** юм. Хэрэв массив нь зөвхөн тоо эсвэл тэмдэгт мөр шиг primitive (үндсэн) утгуудыг агуулж байвал шинэ массив нь эх хувиасаа бүрэн тусдаа байна.

Гэвч хэрэв массив дотор өөр массивууд (nested arrays) агуулагдаж байвал, эх массив болон хуулбар массив хоёулаа нэг ижил доторх массив руу заасан **лавлахыг (reference)** агуулдаг. Энэ нь хэрэв та дундын доторх массивыг өөрчилбөл, тэрхүү өөрчлөлт хоёр массив хоёуланд нь харагдана гэсэн үг юм.



Shallow copy нь эх массивыг эсвэл доторх массивыг өөрчлөхгүйгээр массивын дээд бүтцэд (элемент нэмэх, хасах, эрэмбэлэх гэх мэт) өөрчлөлт оруулахад маш хэрэгтэй байдаг. Shallow copy үүсгэх хамгийн түгээмэл аргууд болох `concat()`, `slice()`, болон `spread` операторыг авч үзэцгээе.

#### 1. concat() арга
`concat()` арга нь хоёр буюу түүнээс дээш массивыг нэгтгэж шинэ массив үүсгэдэг. Үүнийг ганц массив дээр ашиглахад үр дүнтэйгээр shallow copy үүсгэж чадна.

```javascript
const originalArray = [1, 2, 3];
const copyArray = [].concat(originalArray);

console.log(copyArray); // [1, 2, 3]
console.log(copyArray === originalArray); // false
```
Энэ жишээнд бид хоосон массивыг `originalArray`-тай нэгтгэж байна. `copyArray` нь ижил элементүүдтэй боловч өөр объект учраас strict equality (`===`) шалгалт нь `false` буцааж байна.

#### 2. slice() арга
`slice()` аргыг ямар нэгэн аргументгүйгээр дуудахад массивыг бүхэлд нь shallow copy болгон буцаадаг.

```javascript
const originalArray = [1, 2, 3];
const copyArray = originalArray.slice();

console.log(copyArray); // [1, 2, 3]
console.log(copyArray === originalArray); // false
```
`originalArray.slice()` нь эх массивын элементүүдийг агуулсан шинэ массив объект үүсгэж байна.

#### 3. Spread Operator (...)
ES6-д нэвтэрсэн `spread` оператор нь shallow copy үүсгэх хамгийн товч бөгөөд ойлгомжтой арга юм.



```javascript
const originalArray = [1, 2, 3];
const copyArray = [...originalArray];

console.log(copyArray); // [1, 2, 3]
console.log(copyArray === originalArray); // false
```
Гурван цэг (`...`) нь `originalArray`-ийн элементүүдийг шинэ массив дотор "задлан" байрлуулж байна. Эдгээр аргуудын тусламжтайгаар та хуулбар массивыг эх хувьд нь нөлөөлөхгүйгээр өөрчлөх боломжтой:

```javascript
const originalArray = [1, 2, 3];
const copyArray = [...originalArray];

copyArray.push(4);
console.log(originalArray); // [1, 2, 3]
console.log(copyArray);     // [1, 2, 3, 4]
```

Дүгнэж хэлэхэд, `concat()`, `slice()`, эсвэл `spread` операторыг ашиглан shallow copy үүсгэх нь эх массивыг хамгаалж, өгөгдөл дээр бие даасан боловсруулалт хийхэд тусалдаг.

---
