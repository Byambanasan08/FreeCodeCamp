sessionStorage гэж юу вэ, мөн нийтлэг method-ууд (methods) нь юу вэ?

Өмнөх хичээл дээр бид localStorage-тэй ажиллах талаар сурч, sessionStorage-той товч танилцсан.

Санахад, sessionStorage нь web application ажиллаж буй tab эсвэл цонхыг хэрэглэгч хаах үед өгөгдөл шууд устдаг. Энэ нь өгөгдөл зөвхөн нэг session-ийн хугацаанд хадгалагдах шаардлагатай нөхцөлд тохиромжтой, жишээлбэл navigation хийх явцад form-ийн өгөгдлийг хадгалах эсвэл checkout процессын үед түр зуурын төлөвийн (temporary state) мэдээллийг хадгалах.

localStorage-тэй адил sessionStorage нь key-value хосуудыг ашиглан өгөгдлийг хадгалж, буцааж авдаг. sessionStorage-тэй ашиглагддаг method-ууд мөн localStorage-тэй адил бөгөөд цорын ганц бодит ялгаа нь өгөгдөл хэр удаан хадгалагдах явдал юм.

Дараах нь эдгээр method-уудтай ажиллах хэд хэдэн жишээ:

```
sessionStorage.setItem(): sessionStorage-д key-value хос хадгална.
```

```js id="p7z1kn"
sessionStorage.setItem('cart', '3 items');
```

```
sessionStorage.getItem(): sessionStorage-оос тухайн key-ийн утгыг авна.
```

```js id="u4d9lm"
let cart = sessionStorage.getItem('cart');
console.log(cart); // Outputs: '3 items'
```

```
sessionStorage.removeItem(): тухайн key-ийг ашиглан sessionStorage-оос тодорхой элемент устгана.
```

```js id="r8x2cw"
sessionStorage.removeItem('cart');
```

```
sessionStorage.clear(): sessionStorage-д хадгалагдсан бүх өгөгдлийг устгана.
```

```js id="t6n5qv"
sessionStorage.clear();
```

Одоо browser-ийн tab эсвэл цонх нээлттэй байх хугацаанд л хадгалагдах sessionStorage-д өгөгдөл хадгалах жишээг харцгаая:

// Store data in sessionStorage

```js id="k3b7xa"
sessionStorage.setItem('currentUser', 'JohnDoe');
```

// Retrieve the stored data

```js id="y9m2sd"
const user = sessionStorage.getItem('currentUser');
console.log(user); // 'JohnDoe'
```

// Remove a specific key from sessionStorage

```js id="c1v8rt"
sessionStorage.removeItem('currentUser');
```

// Clear all sessionStorage data

```js id="n5w4pl"
sessionStorage.clear();
```

Энэ жишээнд бид:

```
Одоогийн хэрэглэгчийн нэрийг (JohnDoe) sessionStorage-д хадгалж байна.

Үүнийг авч console-д харуулж байна.

currentUser key-тэй холбоотой элементийг устгаж байна.

sessionStorage дахь бүх өгөгдлийг цэвэрлэж байна.
```

localStorage-оос ялгарах гол ялгаа нь хэрэглэгч tab-ийг хаахад бүх session өгөгдөл шууд устдаг явдал юм.

sessionStorage нь дараах нөхцөлүүдэд онцгой ашигтай:

```
Олон хуудастай form процессын үед form-ийн оруулсан түр өгөгдлийг хадгалах.

Session-уудын хооронд хадгалах шаардлагагүй түр сонголт эсвэл preference-уудыг хадгалах.

Tab хаагдсаны дараа санах шаардлагагүй single-page application-ийн төлөв (state)-ийг хадгалах.
```

sessionStorage нь хэрэглэгч хуудсыг орхих үед session-ийн өгөгдлийг цэвэрлэдэг бөгөөд энэ нь одоогийн session-оос цааш мэдээллийг хадгалахыг хүсэхгүй нөхцөлд маш тохиромжтой.
