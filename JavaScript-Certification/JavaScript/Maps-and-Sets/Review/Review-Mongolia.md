# JavaScript Maps болон Sets-ийн тойм (Review)

1. JavaScript дахь Sets

```
Set нь өгөгдлийн цуглуулгыг (data collection) удирдахад зориулсан built-in сонголт юм.
Set нь доторх утга бүр зөвхөн нэг удаа оршихыг баталгаажуулдаг тул array-аас давхардсан утгуудыг устгах эсвэл ялгаатай утгуудын цуглуулгыг (collections of distinct values) боловсруулахад ашигтай.
Та Set()-ийн constructor ашиглан Set үүсгэж болно:
```

```js id="m1q7op"
const set = new Set([1, 2, 3, 4, 5]);
console.log(set); // Set { 1, 2, 3, 4, 5 }
```

```
Set-ийг дараах method-уудаар удирдаж (manipulate) болно:
    add(): Set-д шинэ элемент нэмнэ.
    delete(): Set-ээс элемент устгана.
    has(): Тухайн элемент Set-д байгаа эсэхийг шалгана.
    clear(): Set доторх бүх элементүүдийг устгана.
    keys() болон values(): Аль аль нь Set-ийн утгуудыг агуулсан SetIterator буцаана. Эдгээр нь ижил, учир нь keys() нь values()-ийн alias (өөр нэр) юм.
    forEach(): Set-ийн утгууд дээр давталт (iterate) хийхэд ашиглагдана.
```

2. JavaScript дахь WeakSets

```
WeakSet нь weakly held object-уудыг хадгалах боломжтой object-уудын цуглуулга (collection) юм.
```

3. Sets vs WeakSets

```
Set-ээс ялгаатай нь WeakSet нь numbers эсвэл strings зэрэг primitive төрлүүдийг дэмждэггүй.
WeakSet нь зөвхөн object-уудыг хадгалдаг бөгөөд тэдгээр object-уудын reference нь "weak" байдаг. Энэ нь хэрэв тухайн object таны кодын өөр хэсэгт ашиглагдахгүй байвал санах ойг (memory) чөлөөлөхийн тулд автоматаар устгагдана гэсэн үг юм.
```

4. JavaScript дахь Maps

```
Map нь object-тэй адил key-value хосуудыг хадгалдаг built-in object юм.
Map нь стандарт JavaScript object-оос ялгаатай нь key болгон ямар ч төрлийг, тэр дундаа object болон function-уудыг ашиглах боломжийг олгодог.
Map нь key-value хосуудыг байнга нэмэх, устгах (frequent addition and removals) үед стандарт object-оос илүү сайн гүйцэтгэл (performance) үзүүлдэг.
Та Map()-ийн constructor ашиглан Map үүсгэж болно:
```

```js id="kzq2sm"
const map = new Map([
  ["flower", "rose"],
  ["fruit", "apple"],
  ["vegetable", "carrot"],
]);
console.log(map); // Map(3) { 'flower' => 'rose', 'fruit' => 'apple', 'vegetable' => 'carrot' }
```

```
Map-ийг дараах method-уудаар удирдаж болно:
    set(): Map-д шинэ key-value хос нэмнэ.
    get(): Map-оос тухайн key-ийн value-г авна.
    delete(): Map-оос key-value хосыг устгана.
    has(): Тухайн key Map-д байгаа эсэхийг шалгана.
    clear(): Map доторх бүх key-value хосуудыг устгана.
```

Map болон Set аль аль нь size property-тэй бөгөөд доторх давтагдашгүй (unique) элементүүдийн тоог буцаадаг гэдгийг анхаарна уу.

5. JavaScript дахь WeakMaps

```
WeakMap нь Map-тэй адил key-value хосуудын цуглуулга боловч key-үүддээ weak reference ашигладаг. Key нь заавал object байх ёстой бөгөөд value нь таны хүссэн ямар ч төрлийн байж болно.
```

6. Maps vs WeakMaps

```
WeakMap нь WeakSet-тэй төстэй бөгөөд зөвхөн object-уудыг хадгалдаг ба тэдгээр object-уудын reference нь "weak" байдаг.
```
