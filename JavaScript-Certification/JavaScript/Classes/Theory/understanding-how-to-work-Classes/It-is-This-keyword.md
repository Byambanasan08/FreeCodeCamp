this keyword хэрхэн ажилладаг вэ?

Та classes нь object үүсгэхэд ашиглагддаг blueprint (загвар) гэдгийг сурсан.

Эдгээр blueprint-ууд нь код дотор үүсгэгдэж, хандлагдаж, эсвэл өөрчлөгдөж буй тухайн object-ийг заах ерөнхий арга хэрэгтэй байдаг. Үүнийг хийхэд this keyword ашиглагддаг. Энэ нь код ажиллах ёстой context-ийг заадаг. Хэрэв та үүнийг method дотор ашиглавал, this-ийн утга нь тухайн method-тэй холбоотой object-ийг заана. Ингэснээр та class дотор object-ийн property болон method-уудад хандаж, method-ийг өөр өөр object-ууд дээр дахин ашиглах боломжтой болно.

Жишээлбэл, энд бид Dessert class-тай байна. Энэ удаа бид hasPeanuts гэсэн property тодорхойлж байна.

```js id="p9v4zt"
class Dessert {
  constructor(hasPeanuts) {
    this.hasPeanuts = hasPeanuts;
  }
}
```

Энд бид constructor дотор this keyword ашиглаж байгааг анзаараарай. Constructor нь class-аас шинэ object үүсэх үед автоматаар дуудагддаг гэдгийг санаарай.

this keyword нь hasPeanuts нь одоо үүсгэгдэж буй object-ийн property байх ёстойг програмд хэлж байна.

Оноолтын (assignment) баруун талд байгаа hasPeanuts параметрийн утгыг шинэ object-ийн hasPeanuts property-д оноож байна.

```js id="k3m8qy"
this.hasPeanuts = hasPeanuts;
```

Энэ нь constructor-ийн context-д байгаа жишээ боловч та this keyword-ийг бусад method-ууд дотор мөн ашиглаж болно.

Энэ бол бага зэрэг өөрчлөлт орсон бидний Dessert class. Одоо бид name болон price гэсэн хоёр property-той болсон.

```js id="t2x6wr"
class Dessert {
  constructor(name, price) {
    this.name = name;
    this.price = price;
  }

  showPrice() {
    console.log(`The price of ${this.name} is $${this.price}.`);
  }
}
```

Мөн бид шинэ showPrice method-той болсон. Энэ method дотор бид dessert object-ийн нэр болон үнийг ашиглан тайлбарласан message-ийг console-д хэвлэж байна.
showPrice method дотор object-ийн property-уудыг авахын тулд this keyword-ийг хэрхэн ашиглаж байгааг анзаараарай.

Энэ method-ийн context-д this keyword ямар утгатай байх вэ? Энэ нь тухайн method дуудагдаж буй object-ийг заана. Энэ тохиолдолд бид "Brownie" нэртэй, $5.99 үнэтэй шинэ Dessert instance үүсгэж байна:

```js id="n8k3vt"
const brownie = new Dessert("Brownie", 5.99);
```

Хэрэв бид энэ object дээр .showPrice() method-ыг дуудавал:

```js id="q2v7mc"
brownie.showPrice();
```

Дараах нь бүтэн жишээ:

```js id="t5p1xr"
class Dessert {
  constructor(name, price) {
    this.name = name;
    this.price = price;
  }

  showPrice() {
    console.log(`The price of ${this.name} is $${this.price}.`);
  }
}

const brownie = new Dessert("Brownie", 5.99);
brownie.showPrice();
console.log(brownie);
```

Одоогийн object (brownie)-ийн name болон price нь string дотор орлуулж (replaced) тавигдана.

Энэ бүхэн this keyword-ийн ачаар боломжтой бөгөөд энэ нь class дотор одоогийн object-ийг заах ерөнхий аргыг олгодог. Ингэснээр та method-ийг өөр өөр object-ууд дээр дахин ашиглах боломжтой болно.

Энэ нь object method-уудын context-д байгаа тайлбар боловч this keyword нь standalone function болон arrow function-ууд дотор мөн утгатай байдаг.

Standalone function дотор this-ийн утга нь ихэвчлэн global object-ийг (non-strict mode-д) эсвэл undefined-ийг (strict mode-д) заадаг.

Arrow function дотор this keyword-ийн утга арай өөр байдаг. Arrow function нь өөрийн this binding үүсгэдэггүй, харин тодорхойлогдсон (defined) орчны enclosing scope-оос this-ийн утгыг өвлөн авдаг (inherit). Энэ нь this-ийн утга arrow function хаана, хэрхэн дуудагдсанаас бус, хаана тодорхойлогдсоноос хамаарна гэсэн үг юм. Энэ нь arrow function-уудыг callback-д ашиглах эсвэл context хадгалахад (preserving context) тохиромжтой болгодог.

Гэхдээ үүнээс шалтгаалан object method-ууд дотор this нь одоогийн object-ийг заахгүй байж болно, тиймээс arrow function-уудтай ажиллахдаа үүнийг анхаарах хэрэгтэй.

Мөн энэ нь бусад function-ууд дотор тодорхойлогдсон arrow function-уудад адилхан үйлчилнэ. Тэдгээр нь this-ийн утгыг өөрийн parent scope-оос өвлөн авна.

this keyword нь object-уудтай ажиллах, тэдгээрийг удирдах (manipulate) хүчирхэг хэрэгсэл юм. Энэ нь хэрхэн ажилладгийг ойлгох нь JavaScript дахь object-oriented programming-ийг эзэмшихэд маш чухал.
