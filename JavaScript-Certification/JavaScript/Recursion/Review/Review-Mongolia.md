# Recursion тойм (Review)

1. Recursion нь programming-ийн ойлголт бөгөөд function-ийг base-case-д хүрэх хүртэл давтан (repeatedly) дуудах боломжийг олгодог.

Доорх нь тооны factorial-ийг тооцоолдог recursive function-ийн жишээ:
Example Code

```js id="r5n2vt"
function findFactorial(n) {
  if (n === 0) {
    return 1;
  }
  return n * findFactorial(n - 1);
}
```

Дээрх жишээнд findFactorial function нь n 0 болох хүртэл recursive байдлаар дуудагдана. n нь 0 болох үед base case-д хүрч, function 1-ийг буцаана. Дараа нь function нь n болон findFactorial(n - 1)-ийн recursive call-ийн үр дүнгийн үржвэрийг буцаана.

2. Recursion нь гүн нь тодорхойгүй (unknown depth) бүтэцтэй зүйлсийг, жишээлбэл гүн nested object/array-ууд эсвэл file tree-тэй ажиллах боломжийг олгодог.
3. Call stack нь recursive function доторх function call-уудыг хянахад (track) ашиглагддаг. Function дуудагдах бүрд энэ нь call stack дээр нэмэгддэг. Base case-д хүрэхэд function call-ууд stack-аас хасагддаг.
4. Та base case-ийг маш анхааралтай тодорхойлох хэрэгтэй, учир нь function-ийг төгсгөлгүй (indefinitely) дуудах нь таны кодыг crash болгох боломжтой. Учир нь recursion нь call stack дээр function call-уудыг тасралтгүй нэмсээр байгаад системийн санах ой дуусахад хүргэдэг.
5. Recursion нь factorial болон Fibonacci зэрэг математик асуудлуудыг шийдэх, tree болон graph-уудыг гатлах (traverse), permutation болон combination үүсгэх зэрэг олон хэрэглээтэй.
