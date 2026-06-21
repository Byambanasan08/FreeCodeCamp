Classes дахь Static properties болон methods гэж юу вэ?

Static properties болон methods нь class өөрт нь хамаарах бөгөөд тухайн class-ийн instance-уудад хамаарахгүй. Та тэдгээрийг class-ийн instance үүсгэхгүйгээр шууд class-ийн нэр дээрээс хандаж болно. Эдгээр нь холбогдох (related) functionality-г нэгтгэн (encapsulate) хадгалахын тулд class дотор тодорхойлогддог.

Та static method тодорхойлохын тулд method-ийн нэрийн өмнө static keyword бичнэ.

```js id="p4k8mv"
class MyClass {
  static staticMethod() { ... }
}
```

Дараа нь та static method-ийг class дээр шууд, dot notation ашиглан, шаардлагатай аргументуудыг дамжуулж дуудаж болно:

```js id="z7n2qx"
MyClass.staticMethod();
```

Та class-ийн instance үүсгэхгүйгээр method-ийг дуудаж байгааг анзаараарай. Энэ нь static method-ийн гол онцлогуудын нэг юм.

Жишээ авч үзье. Бид movies application хийж байна гэж бодъё, мөн бид movies-ийг rating-аар нь харьцуулахыг хүсэж байна.

Бид энэ харьцуулалтын method-ийг ямар нэгэн тодорхой movie-д хамаарахгүй, илүү ерөнхий түвшний method гэж үзэж болно:

```js id="c9v1tr"
if (movieA.rating < movieB.rating) {
  console.log(`${movieB.title} has a higher rating.`);
} 
```

Энэ нь Movie class-тэй холбоотой илүү ерөнхий method юм.

Уншихад ойлгомжтой байдал (readability) болон арчлахад хялбар байдал (maintainability)-ын үүднээс энэ method-ийг Movie class дотор тодорхойлох нь зүйтэй бөгөөд ингэснээр холбогдох method-уудыг нэг дор ойр байлгах боломжтой.

Тиймээс энэ нь static method-д маш тохиромжтой жишээ юм. Үүнийг доорх кодонд constructor-ын доор харж болно:

```js id="n2m6ks"
class Movie {

  constructor(title, rating) {
    this.title = title;
    this.rating = rating;
  }

  static compareMovies(movieA, movieB) {
    if (movieA.rating > movieB.rating) {
      console.log(`${movieA.title} has a higher rating.`);
    } else if (movieA.rating < movieB.rating) {
      console.log(`${movieB.title} has a higher rating.`);
    } else {
      console.log("These movies have the same rating.");
    }
  }

}

let movieA = new Movie("Movie A", 80);
let movieB = new Movie("Movie B", 45);
console.log(movieA);
```

Static method нь static keyword ашиглан тодорхойлогдсон бөгөөд compareMovies гэж нэрлэгдсэн. Энэ нь movieA болон movieB гэсэн хоёр параметртэй. Эдгээр нь Movie class-ийн instance-ууд байх болно.

Бид эдгээрийг 0-ээс 100 хүртэлх үнэлгээ (rating)-ийн хүрээнд харьцуулах болно. Энэ логик нь conditional ашиглан хэрэгжсэн бөгөөд аль кино өндөр үнэлгээтэй байгаагаас хамаарч тохирох message-ийг хэвлэнэ.

Method тодорхойлогдсоны дараа та үүнийг class дээрээс дуудаж болно. Гэхдээ эхлээд аргументуудыг бэлэн болгож, програмдаа тодорхойлсон байх хэрэгтэй.

Энэ тохиолдолд method нь хоёр movie instance-ийг аргумент болгон авдаг тул бид эдгээр instance-уудыг энд тодорхойлж байна:

```js id="k9t3pz"
let movieA = new Movie("Movie A", 80);
let movieB = new Movie("Movie B", 45);
```

Та movieA нь movieB-ээс илүү өндөр үнэлгээтэй байгааг харж болно. Одоо энэ method-ийн output-ийг харцгаая.

Method-ийг дуудахын тулд та class өөр дээр нь dot notation ашиглахад л хангалттай. Та class-ийн нэр (Movie)-ийг бичиж, дараа нь цэг (dot), дараа нь static method-ийн нэр (compareMovies)-ийг бичнэ.

Дараа нь аргументуудыг хаалт (parentheses) дотор дамжуулна. Энэ тохиолдолд эдгээр нь method-д шаардлагатай хоёр movie instance юм.

```js id="p6v1qc"
Movie.compareMovies(movieA, movieB);
```

Шинэчилсэн жишээ:

```js id="n4r8xm"
class Movie {

  constructor(title, rating) {
    this.title = title;
    this.rating = rating;
  }

  static compareMovies(movieA, movieB) {
    if (movieA.rating > movieB.rating) {
      console.log(`${movieA.title} has a higher rating.`);
    } else if (movieA.rating < movieB.rating) {
      console.log(`${movieB.title} has a higher rating.`);
    } else {
      console.log("These movies have the same rating.");
    }
  }

}

let movieA = new Movie("Movie A", 80);
let movieB = new Movie("Movie B", 45);
Movie.compareMovies(movieA, movieB);
console.log(movieA);
```

Static method-ууд нь "factory" method хэрэгжүүлэхэд мөн ашигтай байдаг. Factory method гэдэг нь constructor-оос гадна тодорхой нөхцөл (criteria)-д тулгуурлан object үүсгэхэд ашиглагддаг method юм.

Pizza class-тай жишээ харцгаая. createMargherita нэртэй static method нь factory method бөгөөд та үүнийг дуудаж type болон price аль хэдийн тохируулагдсан Margherita pizza instance үүсгэж болно.

```js id="t7m2qy"
class Pizza {
  constructor(type, price) {
    this.type = type;
    this.price = price;
  }

  static createMargherita() {
    return new this("Margherita", 6.99);
  }
}
```

Энэ нь static method-уудын тухай маш чухал нэг ойлголтыг мөн харуулж байна.

Static method дотор this keyword-ийн утга нь class өөрөө байдаг, учир нь static method нь class-д хамаардаг.

Тиймээс бид this ашиглан Pizza class-ийн шинэ instance үүсгэж чаддаг.

Хэрэв та энэ method-ийг Pizza class өөр дээр нь дуудаж, буцаасан instance-ийг хувьсагчид оноовол, дараах жишээ шиг:

```js id="m8q2xr"
let myPizza = Pizza.createMargherita();
```

Та үүнийг кодынхоо хэрэгтэй хэсэг бүрт ашиглаж болно. Жишээлбэл, та үүнийг console-д хэвлэж болно:

```js id="p4n7vs"
console.log(myPizza);
```

Үр дүн нь:

```
Pizza { type: 'Margherita', price: 6.99 }
```

Мөн та dot notation ашиглан method-уудыг нь дуудаж, property-уудад нь хандаж болно, жишээлбэл:

```js id="z3k9mt"
console.log(myPizza.type);
```

Дараах нь бүтэн жишээ:

```js id="t6v1qc"
class Pizza {
  constructor(type, price) {
    this.type = type;
    this.price = price;
  }

  static createMargherita() {
    return new this("Margherita", 6.99);
  }
}

let myPizza = Pizza.createMargherita();
console.log(myPizza);
console.log(myPizza.type);
```

Method-уудаас гадна, та static keyword ашиглан static property-уудыг мөн тодорхойлж болно.

Энэ жишээнд бид numberOfPizzasSold гэсэн static property-тэй.

```js id="r9x3pl"
class Pizza {
  static numberOfPizzasSold = 0;

  constructor(type) {
    this.type = type;
    Pizza.numberOfPizzasSold++;
  }
}
```

Энэ нь static, учир нь энэ нь тодорхой нэг pizza instance-д хамаарахгүй, харин class өөрт нь хамаардаг.

Энэ нь эхний утга (initial value) 0-той бөгөөд шинэ instance үүсэх бүрд шинэчлэгддэг.

Хэрэв та хоёр pizza instance үүсгэвэл, энэ утга хоёр удаа шинэчлэгдэнэ:

```js id="k2m8vy"
let pizza1 = new Pizza("Margherita");
let pizza2 = new Pizza("Neapolitan");
```

Static property-ийн утгад хандахын тулд та class өөр дээр нь dot notation ашиглахад л хангалттай, учир нь property нь class-д хамаардаг.

```js id="n5p7zr"
class Pizza {
  static numberOfPizzasSold = 0;

  constructor(type) {
    this.type = type;
    Pizza.numberOfPizzasSold++;
  }
}

let pizza1 = new Pizza("Margherita");
let pizza2 = new Pizza("Neapolitan");

console.log(Pizza.numberOfPizzasSold);
```

Энэ тохиолдолд output нь 2 байна, учир нь хоёр pizza зарагдсан байна.

Эдгээр нь JavaScript дахь static properties болон methods-ийн үндсэн ойлголтууд юм. Static гишүүдийг (members) ойлгох нь дахин ашиглах боломжтой, үр ашигтай class-ууд бүтээхэд маш чухал.
