Class Inheritance гэж юу вэ, мөн хэрхэн ажилладаг вэ?

Програмчлалд inheritance гэдэг нь нэг class-аас property болон method-уудыг өвлөж (inherit) авах class-уудыг тодорхойлох боломжийг олгодог.

Жишээлбэл, Car нь Vehicle-ийн нэг төрөл тул та бүх төрлийн тээврийн хэрэгсэлд (vehicles) нийтлэг property болон method-уудыг агуулсан Vehicle class тодорхойлж, дараа нь Vehicle class-ийн property болон method-уудыг өвлөж авсан Car class-ийг тодорхойлж болно.

Энэ “is a” харилцаа (relationship) нь inheritance-ийн онцлог шинж юм. Энэ жишээнд Car нь Vehicle-ийн илүү нарийссан (specialized) хэлбэр юм.

Inheritance-тэй ажиллаж эхлэхийн тулд та мэдэх ёстой хоёр үндсэн ойлголт бий: parent class болон child class.

Parent class гэдэг нь бусад class-уудын загвар (blueprint) болж өгдөг class юм. Энэ нь бусад class-уудын өвлөж авах property болон method-уудыг тодорхойлдог.

Child class гэдэг нь өөр class-ийн property болон method-уудыг өвлөж авдаг class юм. Child class-ууд мөн шинэ property болон method нэмж parent class-ийнхаа боломжийг (functionality) өргөтгөж (extend) чадна.

Бидний өмнөх жишээнд Vehicle нь Car class-ийн parent class байх бөгөөд Car нь Vehicle-ийн child class болно.

Нэг parent class олон child class-тай байж болно.

JavaScript-д inheritance хэрэгжүүлэхийн тулд extends keyword-ийг ашигладаг. Энэ keyword нь тухайн class нь өөр class-ийн child class болохыг илэрхийлдэг.

Дараах жишээнд, class тодорхойлолтын эхний мөрүүдийг харуулсан бөгөөд Car class нь Vehicle class-ийг extends хийж байгаа тул Car нь Vehicle-ээс өвлөж байна.

```js id="p4x7tn"
class Vehicle {
  // Implementation of Vehicle...
}

class Car extends Vehicle {
  // Implementation of Car...
}
```

Vehicle class нь brand болон year гэсэн хоёр property-тэй гэж үзье. Үүнийг шинэчилсэн код дээр харж болно.

Car нь honk гэсэн method-тэй. Гэхдээ Car class өөрийн гэсэн constructor байхгүй байгааг анзаараарай. Энэ нь property-уудыг өвлөж авч байгаа эсэхийг харцгаая.

```js id="c7x2mv"
class Vehicle {
  constructor(brand, year) {
    this.brand = brand;
    this.year = year;
  }
}

class Car extends Vehicle {
  honk() {
    console.log("Honk! Honk!");
  }
}
```

Car-ийн instance үүсгэхийн тулд та хоёр аргумент дамжуулах хэрэгтэй: brand болон year. Энэ тохиолдолд brand нь freeCodeCamp Motors, харин year нь 2019.

```js id="p5n9wr"
let myCar = new Car("freeCodeCamp Motors", 2019);
```

Хэрэв та эдгээр property-уудыг авах болон method-ийг дуудахын тулд dot notation ашиглавал:

```js id="m3t8qy"
console.log(myCar.brand);
console.log(myCar.year);
myCar.honk();
```

Дараах нь бүтэн жишээ:

```js id="z4k1lp"
class Vehicle {
  constructor(brand, year) {
    this.brand = brand;
    this.year = year;
  }
}

class Car extends Vehicle {
  honk() {
    console.log("Honk! Honk!");
  }
}

let myCar = new Car("freeCodeCamp Motors", 2019);
console.log(myCar.brand);
console.log(myCar.year);
myCar.honk();
```

Үнэхээр output нь зөв гарч байна, тиймээс эдгээр property болон method нь Car instance дотор тодорхойлогдсон байна, мөн та эдгээр property-уудыг Vehicle class-оос өвлөснөөр маш их код давтах (code repetition)-аас өөрийгөө аварч байна.

Энэ жишээнд child class нь нэмэлт property байхгүй байсан. Тиймээс class нь constructor-гүй, зөвхөн method-тэй байсан.

Хэрэв та нэмэлт property нэмэх шаардлагатай бол constructor тодорхойлох хэрэгтэй болно.

Жишээг харцгаая.

```js id="n8r2vc"
class Vehicle {
  constructor(brand, year) {
    this.brand = brand;
    this.year = year;
  }
}

class Car extends Vehicle {
  constructor(brand, year, numDoors) {
    super(brand, year);
    this.numDoors = numDoors;
  }
}
```

Энэ удаа бид Car subclass-д numDoors property нэмэж байна.

Шинэчилсэн код дээр энэ class constructor-той болсныг харж болно. Constructor дотор super() дуудагдаж, brand болон year аргументууд дамжуулагдаж байна.

super() нь superclass-ийн constructor-ийг дуудаж байгаа тул super(brand, year) ашигласнаар та үндсэндээ superclass-ийн property-уудыг subclass дотор тодорхойлж байна гэсэн үг. Энд өөр нэг нэр томъёо бий — superclass нь parent class, харин subclass нь child class юм.

Дараа нь this.numDoors = numDoors мөр нь зөвхөн Car class-д хамаарах шинэ property буюу хаалганы тоо (numDoors)-г тодорхойлж байна.

Энэ нь Vehicle class-ийг өргөтгөж (extend), зөвхөн Car instance-уудад хамаарах property нэмэх арга юм.

Энэ бол extensibility-ийн жишээ бөгөөд inheritance-ийн хамгийн чухал давуу талуудын нэг юм.

Одоо, хэрэв та Car class-ийн instance үүсгэвэл энэ нь brand, year, болон numDoors гэсэн гурван property-тэй байгааг харах болно. Мөн instance үүсгэхдээ шаардлагатай аргументуудыг дамжуулах хэрэгтэй.

```js id="k8v2xp"
let myCar = new Car("freeCodeCamp Motors", 2019, 4);
```

Хэрэв та эдгээр property-уудын утгыг console.log() ашиглан хэвлэвэл:

```js id="p3n7wr"
console.log(myCar.brand);
console.log(myCar.year);
console.log(myCar.numDoors);
```

Дараах нь бүтэн жишээ:

```js id="z1m9qc"
class Vehicle {
  constructor(brand, year) {
    this.brand = brand;
    this.year = year;
  }
}

class Car extends Vehicle {
  constructor(brand, year, numDoors) {
    super(brand, year);
    this.numDoors = numDoors;
  }
}

let myCar = new Car("freeCodeCamp Motors", 2019, 4);
console.log(myCar.brand);
console.log(myCar.year);
console.log(myCar.numDoors);
```

Inheritance-ийн гол давуу талууд нь code reusability, modularity, extensibility, болон сайжруулсан кодын бүтэц (improved code structure) юм.

Hierarchy ашигласнаар та parent class-д аль хэдийн бичсэн кодыг child class-д дахин ашиглаж, давталтаас (repetition) зайлсхийж чадна.

Inheritance нь мөн modularity-г дэмждэг бөгөөд hierarchy дотор төвөгтэй системийг илүү энгийн бүрэлдэхүүн хэсгүүдэд хуваах боломжийг олгодог.

Мөн parent class-ийн боломжийг (functionality) өргөтгөх чадвар нь хөгжүүлэлтийн явцад өөрчлөгдөж буй шаардлагад дасан зохицох, шинэ feature нэмэхийг илүү хялбар болгодог.

Эцэст нь, hierarchical бүтэц нь таны кодыг илүү ойлгомжтой, арчлахад (maintain) хялбар болгодог.

Эдгээр нь inheritance-ийн үндсэн ойлголтууд юм. Inheritance хэрхэн ажилладгийг ойлгосноор та сайн бүтэцтэй, арчлахад хялбар, мөн өргөтгөх боломжтой object-oriented програмуудыг зохион бүтээж чадна.
