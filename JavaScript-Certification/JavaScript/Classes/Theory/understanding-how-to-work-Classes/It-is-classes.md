JavaScript дахь Classes гэж юу вэ, мөн хэрхэн ажилладаг вэ?

Орчин үеийн JavaScript-д classes нь нэг төрлийн олон object үүсгэхэд ашиглагддаг blueprint (загвар) шиг ойлголт юм.

Жишээлбэл, хэрэв та inventory system загварчилж байгаа бол бүтээгдэхүүний төрөл бүрт олон object үүсгэх шаардлагатай болно.

Тухайн бүтээгдэхүүн бүр өөрийн гэсэн property болон action-уудтай байх боловч ижил төрлийн бүтээгдэхүүнүүдийг нэг ижил "blueprint"-оос үүсгэж болно. Classes нь үүнийг хийхэд ашиглагддаг.

Classes-ийг class expression эсвэл class declaration хэлбэрээр тодорхойлж болно.

Дараах нь class declaration-ийн үндсэн синтакс:

```js id="m4k8xy"
class MyClassName {
  // Class Methods
  constructor() { ... }
  method1() { ... }
  method2() { ... }
  ...
}
```

Та эхлээд class гэсэн keyword бичиж, дараа нь class-ийн нэрийг өгнө. Class нэрлэхдээ camelCase биш, PascalCase naming convention ашиглах хэрэгтэй.

Тахир хаалт (curly braces) доторх агуулгыг class body гэж нэрлэдэг. Энд constructor болон method-ууд байрлана.

Constructor нь class-аас шинэ object үүсэх үед автоматаар дуудагддаг тусгай method юм. Энэ нь ихэвчлэн object-ийн property-уудыг эхлүүлэх (initialize) зориулалттай.

Энэ жишээнд constructor-той Dog class-ийг харж болно.

```js id="p7v2qw"
class Dog {
  constructor(name) {
    this.name = name;
  }
}
```

Энд this keyword нь Dog class-ийн тухайн instance-ийг зааж байгаа бөгөөд үүсгэгдэж буй object-д name property-г оноох боломжийг олгож байна. Та this keyword-ийн талаар дараагийн хичээл дээр илүү дэлгэрэнгүй сурах болно.

Constructor-ын доор methods гэж нэрлэгддэг зүйлс байж болно. Methods нь class дотор тодорхойлогдсон function-ууд бөгөөд тодорхой үйлдэл эсвэл ажиллагаа (operations)-г гүйцэтгэдэг. Эдгээр нь class-ийн instance-ууд ямар зан төлөв (behavior) үзүүлэхийг тодорхойлдог.

Dog class-д bark нэртэй method нэмэх жишээ:

```js id="x9c3lm"
class Dog {
  constructor(name) {
    this.name = name;
  }

  bark() {
    console.log(`${this.name} says woof!`);
  }
}
```

bark method дуудагдах үед дамжуулсан бодит нэрийг ашиглан console-д message хэвлэгдэнэ. Хэрэв та "Buddy" нэртэй Dog instance үүсгээд bark() method-ыг дуудах юм бол console дээр "Buddy says woof!" гэж хэвлэгдэнэ.

Та class-аа тодорхойлсны дараа new keyword, class-ийн нэр, мөн аргументуудыг ашиглан instance үүсгэж болно.

Энэ жишээнд бид Gino нэртэй шинэ Dog instance үүсгээд dog хувьсагчид оноож байна.

```js id="t5n1pr"
const dog = new Dog("Gino");
```

Та код дээр new Dog("Gino") гэж бичихэд шинэ object үүсгэгдэж, constructor өгөгдсөн аргументуудтайгаар автоматаар дуудагдана.

Дараах кодын мөрөнд харж байгаачлан та энэ property-д dot notation ашиглан хандаж болно:

```js id="y2k7dm"
console.log(dog.name);
```

Дараах нь бүтэн жишээ:

```js id="q8v1xp"
class Dog {
  constructor(name) {
    this.name = name;
  }

  bark() {
    console.log(`${this.name} says woof!`);
  }
}

const dog = new Dog("Gino");
console.log(dog.name);
```

Та мөн method-уудыг дуудаж болно. Энэ жишээнд бид dog instance дээр bark() method-ыг дуудаж байна.

```js id="n4c9sj"
dog.bark();
```

Method call орсон бүтэн жишээ:

```js id="t7m3rk"
class Dog {
  constructor(name) {
    this.name = name;
  } 
  bark() {
    console.log(`${this.name} says woof!`);
  }
}

const dog = new Dog("Gino");
console.log(dog.name);
dog.bark();
```

Өмнө дурдсанчлан, та classes-ийг class expression хэлбэрээр мөн тодорхойлж болно. Энэ тохиолдолд class нь нэргүй (anonymous) бөгөөд хувьсагчид оноогддог.

Өмнөх жишээг class expression хэлбэрээр харуулбал:

```js id="p6x2vh"
const Dog = class {
  constructor(name) {
    this.name = name;
  }

  bark() {
    console.log(`${this.name} says woof!`);
  }
};
```

Ихэнх тохиолдолд та class declaration ашиглах боловч class expression-ийг ойлгох нь мөн чухал бөгөөд ялангуяа dynamic programming нөхцөлд илүү уян хатан (flexibility) боломж олгодог.

Classes ашиглах болон тэдгээрийн үндсэн синтаксийг ойлгосноор та дахин ашиглах боломжтой код бичих, кодоо логик нэгжүүдэд хуваарилах, мөн кодын модульчлалыг (modularity) сайжруулах боломжтой болно.
