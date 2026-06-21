# What Is Currying, and How Does It Work?

_Currying_ гэдэг нь олон аргумент авдаг function-ийг нэг аргумент авдаг function-уудын дараалал болгон хувиргах техник юм.

Эхлээд энгийн жишээгээр эхэлье. Бид хоёр тоог нэмдэг function байна гэж төсөөлье:

```javascript id="m8j0c0"
function add(a, b) {
  return a + b;
}

console.log(add(3, 4)); // 7
```

Энэ нь хоёр аргумент авч, тэдний нийлбэрийг буцаадаг function юм. Одоо энэ function-ийг хэрхэн curry хийхийг харъя:

```javascript id="t0a3h0"
function curriedAdd(a) {
  return function (b) {
    return a + b;
  };
}

console.log(curriedAdd(3)(4)); // 7
```

Энэ curry болгосон кодонд хоёр аргументыг нэг дор авахын оронд эхний аргументыг авдаг function байна, дараа нь тэр нь өөр нэг function буцаадаг. Буцаагдсан function нь дараагийн аргументыг авч, нэмэх үйлдлийг гүйцэтгэнэ. Бид үүнийг curriedAdd(3)(4) гэж дууддаг бөгөөд хаалт бүр нь function дуудлагыг илэрхийлдэг.

Гэхдээ бид яагаад үүнийг хийх ёстой вэ?

Currying нь бидэнд зарим онцгой function-уудыг амархан үүсгэх боломж олгодог. Жишээ нь, бид ямар ч тоонд үргэлж 5 нэмдэг function үүсгэж болно:

```javascript id="v5j3fi"
function curriedAdd(a) {
  return function (b) {
    return a + b;
  };
}

const addFive = curriedAdd(5);
console.log(addFive(10)); // 15
console.log(addFive(20)); // 25
```

Энд addFive гэдэг нь бид ямар ч тоо өгсөн бай, үргэлж 5 нэмэхэд бэлэн function юм. Энэ нь partial application-ийн энгийн жишээ бөгөөд бид function-ийн зарим аргументыг тогтмол болгож, бага аргумент шаарддаг шинэ function үүсгэдэг.

Манай жишээнүүд хоёр аргументтай function дээр төвлөрсөн боловч currying нь хэдэн ч аргументтай function-д хэрэглэгдэж болно.

JavaScript суралцах явцдаа currying нь таны кодыг илүү цэвэр, илүү илэрхий болгох олон нөхцөлд хэрэг болохыг та анзаарах болно.
