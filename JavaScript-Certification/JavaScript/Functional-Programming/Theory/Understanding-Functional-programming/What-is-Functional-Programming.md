# What Is Functional Programming?

Functional programming нь цэвэр, урьдчилан таамаглах боломжтой, мөн тест хийх болон алдаа засахад илүү хялбар код бичих тухай юм. Өнөөдөр бид судлах хоёр гол ойлголт бол pure functions болон side effects-оос зайлсхийх явдал юм.

Эхлээд pure functions-оос эхэлье.

_Pure function_ гэдэг нь ижил input өгөгдвөл үргэлж ижил output буцаадаг, мөн өөрөөсөө гадуур ямар ч зүйлийг өөрчилдөггүй function юм.

Pure function-ийн жишээ:

```javascript
function add(a, b) {
  return a + b;
}
```

Энэ function нь pure, учир нь ижил input-д үргэлж ижил үр дүн буцаадаг бөгөөд өөрөөсөө гадуур юу ч өөрчилдөггүй. add(2, 3)-ийг хэдэн ч удаа дуудсан үргэлж 5 буцаана, мөн таны програмын бусад хэсэгт ямар ч нөлөө үзүүлэхгүй.

Одоо үүнийг impure function-тэй харьцуулъя:

```javascript
let total = 0;
function addToTotal(value) {
  total += value;
  return total;
}
```

Энэ function нь impure, учир нь өөрөөсөө гадуур байгаа хувьсагч (total)-ийг өөрчилж байна. addToTotal(5)-ийн үр дүн нь function дуудагдахаас өмнө total ямар байсан гэдгээс хамаарч өөр өөр гарна. Ийм урьдчилан таамаглах боломжгүй байдал нь кодыг ойлгох, алдаа засахыг хүндрүүлдэг.

Энэ нь биднийг дараагийн чухал ойлголт болох side effects рүү авчирна.

_Side effect_ гэдэг нь function дуудагдах үед програмын төлөвт (state) гарч буй аливаа өөрчлөлтийг хэлнэ. Үүнд global хувьсагч өөрчлөх, файл руу бичих, эсвэл API дуудлага хийх зэрэг орно.

Pure functions нь side effects-гүй байдаг, харин impure functions нь ийм өөрчлөлтүүдийг агуулдаг.

Side effects-оос зайлсхийх нь functional programming-ийн гол зарчим юм. Бид side effects-ийг багасгавал код илүү урьдчилан таамаглах боломжтой, мөн тест хийхэд хялбар болдог.

Код бичихдээ бидний гол зорилго нь function-уудыг нэг л зүйл хийхэд төвлөрүүлж, тэрийгээ маш сайн хийх, мөн програмын бусад хэсгийг өөрчлөхгүй байх явдал юм.

Side effect-тэй function-ийн жишээ:

```javascript
function greet(name) {
  console.log(`Hello, ${name}!`);
}

greet("Alice");
```

Энэ function нь side effect-тэй, учир нь console дээр хэвлэх замаар гадаад орчинтой харилцаж байна.

Functional programming-д бид үүнийг дараах байдлаар дахин бичиж болно:

```javascript
function greet(name) {
  return `Hello, ${name}!`;
}
console.log(greet("Alice"));
```

Одоо greet нь зөвхөн string буцаадаг pure function болсон бөгөөд side effect (console дээр хэвлэх)-ийг тусад нь зохицуулж байна.

Functional programming нь биднийг кодоо жижиг, урьдчилан таамаглах боломжтой хэсгүүдэд хувааж, pure functions ашиглан програм бичихийг уриалдаг. Ингэснээр бид илүү ойлгомжтой, тест хийхэд хялбар, мөн арчлахад амархан програмуудыг бүтээж чадна.
