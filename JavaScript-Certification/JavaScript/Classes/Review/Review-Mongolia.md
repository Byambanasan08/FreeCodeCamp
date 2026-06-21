# JavaScript Classes тойм (Review)

1. Classes-тэй ажиллах үндэс (Basics of Working with Classes)

   1.1 Тодорхойлолт (Definition): JavaScript дахь classes нь object үүсгэх blueprint (загвар) тодорхойлох болон өгөгдлийг нэгтгэн (encapsulate) хадгалахад ашиглагддаг. Classes нь constructor агуулдаг бөгөөд энэ нь class-аас шинэ object үүсэх үед автоматаар дуудагддаг тусгай method юм. Энэ нь object-ийн property-уудыг эхлүүлэх (initialize) зориулалттай. Энд this keyword нь class-ийн одоогийн instance-ийг заахад ашиглагддаг. Constructor-ын доор methods байж болно. Methods нь class дотор тодорхойлогдсон function-ууд бөгөөд class-ийн өгөгдөл эсвэл төлөв (state)-д үйлдэл хийхэд ашиглагддаг. Эдгээр нь class-ийн instance-ууд ямар зан төлөв (behavior) үзүүлэхийг тодорхойлдог.

```js id="m2k9qv"
class Dog {
  constructor(name) {
    this.name = name;
  }

  bark() {
    console.log(`${this.name} says woof!`);
  }
}

const dog = new Dog("Gino");
console.log(dog.name); // Gino
```

Class-ийн шинэ instance үүсгэхийн тулд та new keyword-ийг class-ийн нэртэй хамт ашиглана:

```js id="p7v3xt"
const dog = new Dog("Gino");
```

Та мөн classes-ийг class expression хэлбэрээр үүсгэж болно. Энэ тохиолдолд class нь нэргүй (anonymous) бөгөөд хувьсагчид оноогддог.

```js id="z8k1qm"
const Dog = class {
  constructor(name) {
    this.name = name;
  }

  bark() {
    console.log(`${this.name} says woof!`);
  }
};

const dog = new Dog("Gino");
console.log(dog.name); // Gino
dog.bark(); // Gino says woof!
```

2. Class Inheritance

   2.1 Тодорхойлолт (Definition): Програмчлалд inheritance нь parent class-уудаас property болон method-уудыг өвлөж (inherit) авах class-уудыг тодорхойлох боломжийг олгодог. Энэ нь кодыг дахин ашиглах (code reuse)-ыг дэмжиж, class-уудын хооронд шаталсан (hierarchical) харилцаа үүсгэдэг. Parent class нь бусад class-уудын загвар (blueprint) болдог бөгөөд бусад class-ууд өвлөж авах property болон method-уудыг тодорхойлдог. Child class нь өөр class-ийн property болон method-уудыг өвлөж авдаг class юм. Child class-ууд мөн шинэ property болон method нэмснээр parent class-ийнхаа боломжийг (functionality) өргөтгөж (extend) чадна. JavaScript-д inheritance хэрэгжүүлэхийн тулд extends keyword-ийг ашигладаг. Энэ keyword нь тухайн class нь өөр class-ийн child class болохыг илэрхийлдэг.

```js id="x4t9lp"
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

const myCar = new Car("freeCodeCamp Motors", 2019);
console.log(myCar.brand); // freeCodeCamp Motors
console.log(myCar.year); // 2019
myCar.honk(); // Honk! Honk!
```

super keyword нь parent class-ийн method-ууд, constructor, болон field-үүдэд хандахад ашиглагддаг.

```js id="n6v2qr"
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

const myCar = new Car("freeCodeCamp Motors", 2019, 4);
console.log(myCar.brand); // freeCodeCamp Motors
console.log(myCar.year); // 2019
console.log(myCar.numDoors); // 4
```

3. Static Methods болон Static Properties-тэй ажиллах

   3.1 Static methods: Эдгээр method-ууд нь ихэвчлэн тухайн object-ийн тодорхой төлөв (state)-д хандах шаардлагагүй utility function-уудад ашиглагддаг. Эдгээр нь холбогдох (related) functionality-г нэгтгэн (encapsulate) хадгалахын тулд class дотор тодорхойлогддог.

```js id="k3m9vt"
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

Movie.compareMovies(movieA, movieB); // Movie A has a higher rating.
```

Static method-ууд нь мөн "factory" method хэрэгжүүлэхэд ашигтай. Factory method гэдэг нь constructor-оос гадна тодорхой нөхцөл (criteria)-д тулгуурлан object үүсгэхэд ашиглагддаг method юм.

```js id="n7q2xp"
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
console.log(myPizza); // Pizza { type: "Margherita", price: 6.99 }
console.log(myPizza.type); // Margherita
```

```
3.2 Static Properties: Эдгээр property-ууд нь тухайн class-ийн instance-уудад биш, харин class өөрт нь хамаарах утга эсвэл шинж чанарыг (attributes) тодорхойлоход ашиглагддаг. Static property-ууд нь class-ийн бүх instance-уудын хооронд хуваалцагддаг (shared) бөгөөд class-ийн instance үүсгэхгүйгээр хандаж болно.
```

```js id="p5v8rz"
class Car {
  // Static property
  static numberOfWheels = 4;

  constructor(make, model) {
    this.make = make;
    this.model = model;
  }

  // Instance method
  getCarInfo() {
    return `${this.make} ${this.model}`;
  }

  // Static method
  static getNumberOfWheels() {
    return Car.numberOfWheels;
  }
}

// Static property-д class-оос шууд хандах
console.log(Car.numberOfWheels); // 4
```
