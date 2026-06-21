# `Type Narrowing гэж юу вэ, мөн энэ нь хэрхэн ажилладаг вэ?

Зарим үед танд өргөн хүрээтэй (broad) type-тэй утга байгаад, түүнийг илүү тодорхой type болгон narrow хийх хэрэгтэй болдог. Жишээлбэл, та object-ийг өөрийн тодорхойлсон interface-тэй таарч байгаа эсэхийг баталгаажуулах хэрэгтэй байж болно. Эсвэл string нь тодорхой утгуудын жагсаалт дотор байгаа эсэхийг шалгах шаардлагатай байж болно. Үүнийг хийх нэлээд олон арга байдаг.

Эхний арга нь _truthiness_ ашиглан narrowing хийх юм. Өмнөх хичээлийн жишээг авч үзье:

```typescript id="v9w2e1"
const email = document.querySelector<HTMLInputElement>("#email");
console.log(email.value);
```

email нь null байж болох тул email-ийн value property-д хандах үед compiler error гарч байна. Гэхдээ бид property-д хандахаасаа өмнө email truthy эсэхийг conditional statement ашиглан баталгаажуулж болно:

```typescript id="j3q7zr"
const email = document.querySelector<HTMLInputElement>("#email");
if (email) {
  console.log(email.value);
}
```

Энэ шинэчилсэн жишээнд null нь truthy утга биш тул TypeScript нь conditional block дотор email ЗААВАЛ input element байх ёстой гэж infer хийж чадна. Тиймээс дахиж compiler error шидэхгүй.

Truthiness check нь эсрэг чиглэлд ч мөн ажиллаж болно:

```typescript id="r2k0pc"
const email = document.querySelector<HTMLInputElement>("#email");
if (!email) {
  throw new ReferenceError("Could not find email element!");
}
console.log(email.value);
```

Энэ аргын хувьд, хэрэв email falsy байвал бид алдаа шидэж байна. null нь falsy утга юм. Алдаа шидэх нь энэ кодын логик execution-ийг дуусгадаг бөгөөд энэ нь console.log() call дээр хүрэх үед TypeScript email null байж болохгүй гэдгийг мэддэг гэсэн үг юм.

Optional chaining нь мөн type narrowing-ийн нэг хэлбэр бөгөөд email утга null байвал property access болох боломжгүй гэсэн ижил зарчим дээр ажилладаг.

```typescript id="q8y1sm"
const email = document.querySelector<HTMLInputElement>("#email");
console.log(email?.value);
```

Гэхдээ бусад type-уудын хувьд яах вэ? Та typeof operator ашиглан type-уудыг narrow хийж болно. String ЭСВЭЛ number байж болох хувьсагчийн жишээг авч үзье:

```typescript id="n4w9tl"
const myVal = Math.random() > 0.5 ? 222 : "222";
console.log(myVal / 10);
```

Энэ жишээнд бид string утга дээр arithmetic operation хийж болохгүй тул compiler error харж байна. Гэхдээ бид myVal хувьсагчийн typeof-ийг шалгах conditional ашиглаж болно:

```typescript id="u7f2dz"
const myVal = Math.random() > 0.5 ? 222 : "222";
if (typeof myVal === "number") {
  console.log(myVal / 10);
}
```

Бид typeof keyword ашигласан тул TypeScript одоо myVal нь заавал number байх ёстой гэдгийг мэдэж байгаа бөгөөд бид түүн дээр аюулгүйгээр arithmetic operation хийж чадна.

Гэхдээ илүү complex object type-уудын хувьд яах вэ? Хэрэв тухайн object class-аас үүссэн бол та instanceof keyword ашиглан type-ийг narrow хийж болно. querySelector() жишээ рүүгээ буцъя:

```typescript id="0d8y6v"
const email = document.querySelector("#email");
```

Generic type дамжуулж TypeScript-д element ямар болохыг хэлэхийн оронд бид instanceof ашиглан type-ийг narrow хийж, илүү аюулгүй код бичиж болно:

```typescript id="s4h7xq"
const email = document.querySelector("#email");

if (email instanceof HTMLInputElement) {
  console.log(email.value);
}
```

Энэ арга нь өмнөхтэй маань ижил мэт санагдаж болох ч instanceof нь runtime validation юм — энэ нь хэрэв бид ямар нэг байдлаар TypeScript type-ийг буруу тодорхойлсон байсан ч гэсэн, манай JavaScript код email нь input element мөн эсэхийг баталгаажуулна гэсэн үг юм.

Дараа нь API-аас User object fetch хийгээд мэдээллийг нь хэвлэх жишээг авч үзье:

```typescript id="g6m2yc"
interface User {
  name: string;
  age: number;
}

const printAge = (user: User) =>
  console.log(`${user.name} is ${user.age} years old!`);

const request = await fetch("url");
const myUser = await request.json();
printAge(myUser);
```

API зөв object буцаадаг гэдгийг бид мэдэж байгаа ч TypeScript мэдэхгүй байгаа тул myUser-ийг function рүү дамжуулах гэж оролдох үед compiler error гарна. Мөн .json() method нь generic type авдаггүй.

Энэ асуудлыг шийдэх "амархан" арга нь type-ийг _cast_ хийх явдал юм:

```typescript id="u3q8zl"
interface User {
  name: string;
  age: number;
}

const printAge = (user: User) =>
  console.log(`${user.name} is ${user.age} years old!`);

const request = await fetch("url");
const myUser = (await request.json()) as User;
printAge(myUser);
```

Гэхдээ та _type cast_ хийх болгондоо үндсэндээ TypeScript-ийн _potential error_-уудыг барих чадварыг сулруулж байдаг. Тиймээс _type cast_ хийхийн оронд та _type guard_ бичиж болно:

```typescript id="x7m1rv"
interface User {
  name: string;
  age: number;
}

const isValidUser = (user: unknown): user is User => {
  return !!user && typeof user === "object" && "name" in user && "age" in user;
};
```

Энд байгаа return type нь энэ function definition-ийн хамгийн чухал хэсэг юм. `user is User` syntax нь манай function boolean value буцаадаг бөгөөд true үед user утга User interface-ийг хангаж байна гэсэн утгатай. Дараа нь бид user object-ийн structure таарч байгаа эсэхийг шалгахын тулд хэд хэдэн үндсэн check хийж байна — truthiness (`!!user`) narrowing болон typeof narrowing ашиглаж байгааг анзаараарай. Бид үүнийг хийх ёстой. Учир нь `typeof null` нь `"object"` буцаадаг:

```typescript id="c9p2tw"
interface User {
  name: string;
  age: number;
}

const isValidUser = (user: unknown): user is User => {
  return !!user && typeof user === "object" && "name" in user && "age" in user;
};

const printAge = (user: User) =>
  console.log(`${user.name} is ${user.age} years old!`);

const request = await fetch("url");
const myUser = (await request.json()) as User;
if (isValidUser(myUser)) {
  printAge(myUser);
}
```

Одоо хэрэв бид бүх логикоороо нэгтгэвэл, дахиж compiler error авахгүй бөгөөд кодоо амжилттай build хийж чадна.

Type narrowing нь илүү аюулгүй, алдаа багатай код бичихэд тусалдаг хүчирхэг feature юм — гэхдээ TypeScript type-ууд бүрэн rigid биш гэдгийг санаарай. Тиймээс narrowing хийхгүйгээр утгын type-ийг cast хийх зэрэг practices-ээс зайлсхийгээрэй.
