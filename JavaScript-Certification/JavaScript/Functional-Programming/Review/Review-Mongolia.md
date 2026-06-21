# JavaScript Functional Programming тойм

1. Pure болон Impure Functions

   Pure function гэдэг нь ижил input-д үргэлж ижил output гаргадаг бөгөөд ямар ч side effect-гүй байдаг function юм. Түүний output нь зөвхөн input-оосоо хамаардаг бөгөөд ямар ч гадаад төлөв (external state)-ийг өөрчилдөггүй.

   Impure functions нь side effects-тэй байдаг бөгөөд энэ нь function-оос гадна харагдах програмын төлөвт (state) гарч буй өөрчлөлтүүдийг хэлнэ.

2. Functional programming

   Functional Programming нь асуудлыг шийдэхдээ function-уудыг ашиглахад төвлөрдөг software development-ийн хандлага бөгөөд “яаж хийх вэ” гэхээс илүү “юу хийх вэ” дээр анхаардаг.

   Functional programming нь side effects-оос зайлсхийхэд туслах техникүүдийг ашиглахыг дэмждэг, жишээ нь immutable data structures болон higher-order functions ашиглах.

   Зөв ашигласан тохиолдолд functional programming-ийн зарчмууд нь илүү цэвэр, арчлахад хялбар код руу хөтөлдөг.

3. Currying

   Currying нь functional programming-ийн техник бөгөөд олон аргумент авдаг function-ийг нэг аргумент авдаг function-уудын дараалал болгон хувиргадаг.

Ердийн function болон curried function-ийн жишээ:

```javascript id="fdc3sd"
// Regular function
function average(a, b, c) {
  return (a + b + c) / 3;
}

console.log(average(2, 3, 4)); // 3

// Curried function
function curriedAverage(a) {
  return function (b) {
    return function (c) {
      return (a + b + c) / 3;
    };
  };
}

console.log(curriedAverage(2)(3)(4)); // 3
```

Currying нь олон аргумент авдаг function-ууд дээр ажиллах үед маш хүчтэй (powerful) байж чаддаг.

Currying нь таны кодыг илүү уян хатан (flexible), дахин ашиглахад (reusable) хялбар болгодог.

Та arrow functions ашиглан curried function-уудыг илүү товч (concise) байдлаар бичиж болно:

```javascript id="a9qk2y"
const curriedAverage = (a) => (b) => (c) => (a + b + c) / 3;
```

Currying нь кодыг илүү уян хатан, дахин ашиглах боломжтой болгодог ч хэт их ашиглавал кодыг уншихад хүндрэлтэй болгож болно.
