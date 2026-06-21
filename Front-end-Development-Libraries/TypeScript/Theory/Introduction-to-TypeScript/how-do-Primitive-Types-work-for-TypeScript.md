# TypeScript-д Primitive Types хэрхэн ажилладаг вэ?

Энэ хичээлээр та үндсэн primitive төрлүүдтэй (primitive types) хэрхэн ажиллах болон хувьсагчдын `type annotation`-ууд хэрхэн ажилладгийг сурах болно.

`string`, `null`,` undefined`, `number`, `boolean`, болон `bigint` зэрэг _primitive_ өгөгдлийн төрлүүдийн (primitive data types) хувьд TypeScript нь тохирох _type keyword_ -уудыг санал болгодог.

Энэ хичээл дээр бид түгээмэл ашиглагддаг primitive төрлүүд дээр төвлөрөх бөгөөд bigint-ийн талаар нэг их дэлгэрэнгүй ярихгүй. bigint өгөгдлийн төрөл (bigint data type) нь JavaScript дахь стандарт integer төрлөөс илүү том тоонуудыг илэрхийлэх зориулалттай _numeric data type_ юм.

Эдгээр primitive төрлүүдийг string-ээс эхлэн тус бүрээр нь авч үзье. TypeScript дээр string төрлийг дараах байдлаар тодорхойлж болно:

```typescript
let firstName: string = "Angie";
```

Энгийн JavaScript (vanilla JavaScript)-ээс ялгаатай нь firstName хувьсагч string төрөл (string type) хүлээж байна. Тиймээс хэрэв та түүнд number утга дахин оноох гэж оролдвол дараахтай төстэй алдаа авна:

```typescript
let firstName: string = "Angie";
firstName = 9; // Type 'number' is not assignable to type 'string'.
```

Дараагийн авч үзэх төрөл бол number төрөл юм. Жишээ нь:

```typescript
let age: number = 16;
```

Та integer болон float утгуудыг number төрөлд оноож болно. Харин хэрэв та bigint төрлийн утга дахин оноох гэж оролдвол дараахтай төстэй алдаа гарна:

```typescript
let age: number = 16;

// Type 'bigint' is not assignable to type 'number'.
age = 123n;
```

Дараагийн авч үзэх төрөл бол boolean төрөл юм. Жишээ нь:

```typescript
let isLoggedIn: boolean = true;
let isAdmin: boolean = false;
```

Сүүлийн хоёр төрөл бол `null` болон `undefined` төрлүүд юм.

Өмнөх JavaScript хичээлүүдээс санаж байгаачлан, null нь утга зориудаар байхгүй байгааг (intentional absence of a value) илэрхийлдэг. undefined гэдэг нь хувьсагч зарлагдсан боловч түүнд утга оноогоогүй гэсэн үг юм.

Та `function type` болон `union type`-ийн талаар сурах үедээ эдгээр төрлүүдтэй хэрхэн ажиллах жишээнүүдийг дараа нь харах болно.

Одоо та _type annotation_-ууд хувьсагчидтай хэрхэн ажилладгийг харсан болохоор, хувьсагчдаа үргэлж ил тод _explicitly_ төрөлжүүлэх шаардлагатай юу гэсэн асуулт гарч ирж магадгүй.

Хэрэв танд ийм энгийн `type annotation` байвал `explicit type` ашиглах шаардлагагүй байж болно.

```typescript
let firstName: string = "Angie";
```

Учир нь TypeScript нь утгад нь үндэслэн төрлийг автоматаар _infer_ хийхийг оролддог. Тиймээс хэрэв та ингэж бичвэл, TypeScript үүнийг string гэдгийг ойлгоно.

```typescript
let firstName = "Angie";
```

TypeScript төрөл (type)-ийг тодорхой _infer_ хийж чадахгүй үед эсвэл _function parameter_, _complex object_ зэрэг нөхцөлүүдэд тодорхой төрөл хүчээр хэрэгжүүлэхийг _enforce_ хүсэж байвал хувьсагчдаа explicit type ашиглан тодорхойлох хэрэгтэй.
