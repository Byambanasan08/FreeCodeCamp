Bracket Notation гэж юу вэ, мөн string-ээс тэмдэгтүүдийг хэрхэн авах вэ?

JavaScript-д string нь тэмдэгтүүдийн дараалал гэж үзэгддэг бөгөөд string доторх тэмдэгт бүрийг bracket notation ашиглан хандаж болно. Энэ нь тухайн тэмдэгтийн байрлал (index)-аар нь хандах боломжийг олгодог.

Index гэдэг нь string доторх тэмдэгтийн байрлал бөгөөд 0-ээс эхэлдэг. Өөрөөр хэлбэл эхний тэмдэгт нь index 0, дараагийнх нь 1 гэх мэт.

Жишээ нь "hello" string-д:

* h → index 0
* e → index 1
* l → index 2
* l → index 3
* o → index 4

Bracket notation нь дөрвөлжин хаалт ([]) ашиглан, хүссэн index-ийг зааж өгдөг.

Жишээ:

```
let greeting = "hello";
console.log(greeting[1]); // "e"
```

Энд index 1 дээрх тэмдэгт болох "e"-г авч байна.

String-ийн сүүлийн тэмдэгтийг авахын тулд string-ийн length-ээс 1 хасна. length нь нийт тэмдэгтийн тоог өгдөг.

```
let greeting = "hello";
console.log(greeting[greeting.length - 1]); // "o"
```

"hello" нь 5 тэмдэгттэй тул хамгийн сүүлийн тэмдэгтийн index нь 4 (5 - 1) байна.

Хэрэв олон тэмдэгт авахыг хүсвэл bracket notation-ийг хослуулж ашиглаж болно:

```
let greeting = "hello";
let firstTwo = greeting[0] + greeting[1]; // "he"
console.log(firstTwo);
```

Энд эхний хоёр тэмдэгтийг нийлүүлж "he" болгож байна.

Bracket notation нь string доторх тодорхой тэмдэгтүүдийг авахад хэрэгтэй. Жишээ нь нэрийн эхний үсгүүдийг авах, эсвэл тодорхой үсгийг шалгах зэрэгт ашиглагддаг.
