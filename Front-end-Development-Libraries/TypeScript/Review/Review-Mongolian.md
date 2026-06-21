# TypeScript тойм (Review)

## TypeScript гэж юу вэ?

1. JavaScript: JavaScript нь динамик төрөлтэй (dynamically-typed) хэл юм. Энэ нь хувьсагчид (variables) ажиллах үед ямар ч утга авч болно гэсэн үг. Динамик төрөлтэй хэлний асуудал нь _type safety_ байхгүйгээс болж алдаа үүсч болдогт оршино.

Жишээлбэл, таны JavaScript function array хүлээж байгаа ч гэсэн та түүнийг number-оор дуудаж болно:

```javascript id="c8q3ye"
const getRandomValue = (array) => {
  return array[Math.floor(Math.random() * array.length)];
};

console.log(getRandomValue(10));
```

Дээрх жишээний console output нь `undefined` болно.

2. TypeScript: TypeScript нь JavaScript хэлийг _static typing_-аар өргөтгөдөг бөгөөд энэ нь кодоо ажиллуулахаас өмнө type mismatch-ээс үүдэлтэй алдаануудыг илрүүлэхэд тусалдаг.

Жишээлбэл, та array parameter-ийн type-ийг дараах байдлаар тодорхойлж болно:

```typescript id="k5m7pj"
const getRandomValue = (array: string[]) => {
  return array[Math.floor(Math.random() * array.length)];
};
```

Энэ _type definition_ нь TypeScript-д array parameter нь string-үүдийн array байх ёстойг хэлж өгч байна. Дараа нь та getRandomValue-ийг дуудаад түүнд number дамжуулах үед _compiler error_ гэж нэрлэгддэг алдаа гарна.

3. Compiler: Та эхлээд TypeScript кодыг энгийн JavaScript руу compile хийх хэрэгтэй. Compiler-ийг ажиллуулах үед TypeScript таны кодыг шалгаж, type-ууд таарахгүй байгаа бүх асуудал дээр алдаа шиднэ.

## TypeScript дахь Data Types

1. TypeScript дахь Primitive Data Types: `string, null, undefined, number, boolean, болон bigint` зэрэг primitive data type-уудын хувьд TypeScript нь тохирох _type keyword_-уудыг санал болгодог.

```typescript id="d1v6uz"
let str: string = "Naomi";
let num: number = 42;
let bool: boolean = true;
let nope: null = null;
let nada: undefined = undefined;
```

2. Array: Та тодорхой type-тэй array-ийг хоёр өөр syntax ашиглан тодорхойлж болно.

```typescript id="r9x5mn"
const arrOne: string[] = ["Naomi"];
const arrTwo: Array<string> = ["Camperchan"];
```

3. Objects: Та object-ийн яг бүтэц (structure)-ийг тодорхойлж болно.

```typescript id="h4w2sl"
const obj: { a: string; b: number } = { a: "Naomi", b: 42 };
```

Хэрэв та ямар ч key-тэй байж болох боловч бүх value нь string байх ёстой object хүсвэл, үүнийг тодорхойлох хоёр арга бий:

```typescript id="m2t7qa"
const objOne: Record<string, string> = {};
const objTwo: { [key: string]: string } = {};
```

4. TypeScript дахь бусад хэрэгтэй Type-ууд:

- any: any нь утга ямар ч type-тэй байж болно гэдгийг илэрхийлдэг. Энэ нь compiler-д тухайн variable-ийн type-д анхаарахаа болихыг хэлдэг.
- unknown: unknown нь TypeScript-д та утгын type-д анхаарч байгаа боловч яг юу болохыг нь мэдэхгүй байгааг хэлдэг. Ерөнхийдөө unknown нь any-аас илүү зөвлөдөг.
- void: Энэ нь тусгай type бөгөөд та ихэвчлэн function тодорхойлох үед ашиглана. Return value-гүй function-ууд void return type ашигладаг.
- never: Энэ нь хэзээ ч оршин байхгүй type-ийг илэрхийлдэг.

5. type Keyword: Энэ keyword нь const-той төстэй боловч variable зарлахын оронд та type зарлаж болно.

Энэ нь union type эсвэл зөвхөн тодорхой утгуудыг агуулсан type зэрэг custom type-уудыг зарлахад хэрэгтэй байдаг:

```typescript id="g8f1pr"
type stringOrNumber = string | number;
type bot = "camperchan" | "camperbot" | "naomi";
```

6. interface: Interface-ууд нь type-д зориулсан class-уудтай төстэй. Тэд бусад interface-уудыг implement эсвэл extend хийж чадна, тусгайлан object type байдаг бөгөөд type declaration-ийн тодорхой feature хэрэггүй л бол ерөнхийдөө илүү зөвлөдөг.

```typescript id="u6n4ez"
interface wowie {
  zowie: boolean;
  method: () => void;
}
```

7. Return Type тодорхойлох: Та мөн function-ийн return type-ийг тодорхойлж болно.

Доорх жишээ return value-ийг string гэж тодорхойлж байна. Хэрэв та өөр зүйл буцаах гэж оролдвол TypeScript compiler error өгнө.

```typescript id="z3m8dy"
const getRandomValue = (array: string[]): string => {
  return array[Math.floor(Math.random() * array.length)];
};
```

## Generics

1. Generic Type тодорхойлох: Та generic type тодорхойлоод function дотроо түүнд хандаж болно. Үүнийг function-ийн type definition-ийн үйлдлийг удирдах зориулалттай function-д өгдөг тусгай parameter гэж ойлгож болно.

Доорх нь function-д generic type тодорхойлсон жишээ юм:

```typescript id="y7c5qv"
const getRandomValue = <T>(array: T[]): T => {
  return array[Math.floor(Math.random() * array.length)];
};
const val = getRandomValue([1, 2, 4]);
```

<T> syntax нь TypeScript-д та function-д зориулж T гэсэн generic type тодорхойлж байгааг хэлж байна. T нь generic type-уудын түгээмэл нэр боловч та ямар ч нэр ашиглаж болно.

Дараа нь та TypeScript-д array parameter нь generic type-тэй таарч буй утгуудын array бөгөөд return value нь мөн тэр ижил type-ийн ганц element гэдгийг хэлж байна.

2. Function Call дээр Type Argument зааж өгөх: Та function name болон parameter-уудын хооронд angle bracket ашиглан function call-д type argument дамжуулж болно.

Доорх нь function call-д type argument дамжуулсан жишээ юм:

```typescript id="w1l9bx"
const email = document.querySelector<HTMLInputElement>("#email");
console.log(email.value);
```

Энэ нь TypeScript-д таны олох гэж буй element input element байна гэдгийг хэлж өгч байна.

## Type Narrowing

1. Truthiness ашиглан Narrowing хийх: Доорх жишээнд email нь null байж болох тул email-ийн value property-д хандах үед compiler error гарч байна.

```typescript id="g2v8rp"
const email = document.querySelector<HTMLInputElement>("#email");
console.log(email.value);
```

Property-д хандахаасаа өмнө email truthy эсэхийг баталгаажуулахын тулд conditional statement ашиглаж болно:

```typescript id="m7y3qw"
const email = document.querySelector<HTMLInputElement>("#email");
if (email) {
  console.log(email.value);
}
```

Truthiness check нь эсрэг чиглэлд ч мөн ажиллаж болно:

```typescript id="w4l6tx"
const email = document.querySelector<HTMLInputElement>("#email");
if (!email) {
  throw new ReferenceError("Could not find email element!");
}
console.log(email.value);
```

Алдаа (error) шидэх нь энэ кодын логик execution-ийг дуусгадаг бөгөөд энэ нь console.log() call дээр хүрэх үед TypeScript email null байж болохгүй гэдгийг мэддэг гэсэн үг юм.

2. Optional Chaining: Optional chaining ?. нь мөн type narrowing-ийн нэг хэлбэр бөгөөд email утга null байвал property access болох боломжгүй гэсэн ижил зарчим дээр ажилладаг.

```typescript id="t1q9hs"
const email = document.querySelector<HTMLInputElement>("#email");
console.log(email?.value);
```

3. typeof Operator: Та typeof operator ашиглан variable-ийн type-ийг шалгах conditional ашиглаж болно.

```typescript id="y6p2dv"
const myVal = Math.random() > 0.5 ? 222 : "222";
if (typeof myVal === "number") {
  console.log(myVal / 10);
}
```

4. instanceof Keyword: Хэрэв object нь class-аас үүссэн бол instanceof keyword ашиглан type-ийг narrow хийж болно.

```typescript id="r8m4kb"
const email = document.querySelector("#email");

if (email instanceof HTMLInputElement) {
  console.log(email.value);
}
```

5. Casting: Доорх жишээний request.json() method-ийн үр дүн шиг TypeScript утгын type-ийг автоматаар тодорхойлж чадахгүй үед compiler error гарна. Үүнийг шийдэх нэг арга нь type cast хийх боловч энэ нь potential error-уудыг барих TypeScript-ийн чадварыг сулруулдаг.

```typescript id="u9x5je"
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

6. Type Guard: Type cast хийхийн оронд та type guard бичиж болно:

```typescript id="k3n7pq"
interface User {
  name: string;
  age: number;
}

const isValidUser = (user: unknown): user is User => {
  return !!user && typeof user === "object" && "name" in user && "age" in user;
};
```

`user is User` syntax нь таны function boolean value буцаадаг бөгөөд true үед user утга User interface-ийг хангаж байна гэсэн утгатай.

## tsconfig File

- tsconfig.json: TypeScript-ийн compiler settings нь таны төслийн root directory дотор байрлах tsconfig.json file-д хадгалагддаг.

```json id="n2q4lw"
{
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./prod",
    "lib": ["ES2023"],
    "target": "ES2023",
    "module": "ES2022",
    "moduleResolution": "Node",
    "esModuleInterop": true,
    "skipLibCheck": true,
    "strict": true
  },
  "exclude": ["test/"]
}
```

Дээрх жишээнд ашиглагдсан compiler option-уудын тайлбарууд:

1. compilerOptions: compilerOptions property нь TypeScript compiler хэрхэн ажиллахыг удирддаг хэсэг юм.

2. rootDir болон outDir: rootDir болон outDir нь аль directory source file-уудыг агуулж байгаа болон аль directory transpile хийгдсэн JavaScript code-ийг агуулж байх ёстойг TypeScript-д хэлдэг.

3. lib: lib property нь compiler ямар type definition-ууд ашиглахыг тодорхойлдог бөгөөд тодорхой ES release, DOM болон бусад зүйлсийн support-ийг оруулах боломж олгодог.

4. module болон moduleResolution: module болон moduleResolution нь таны package module-уудыг хэрхэн ашиглахыг удирдахын тулд хамтран ажилладаг — CommonJS эсвэл ECMAScript ашиглах байдлаар.

5. esModuleInterop: esModuleInterop нь import-уудад namespace object-уудыг автоматаар үүсгэснээр CommonJS болон ES module-уудын хооронд илүү жигд interoperability хангадаг.

6. skipLibCheck: skipLibCheck option нь таны код дахь import-уудаар reference хийгдээгүй .d.ts file-уудыг validate хийхийг алгасдаг.

7. strict: strict flag нь nullable type-уудыг зөв handle хийхийг баталгаажуулах болон TypeScript any руу fallback хийх үед warning өгөх зэрэг хэд хэдэн check-ийг идэвхжүүлдэг.

8. exclude: top-level exclude property нь compiler-д compilation хийх үед эдгээр TypeScript file-уудыг ignore хийхийг хэлдэг.
