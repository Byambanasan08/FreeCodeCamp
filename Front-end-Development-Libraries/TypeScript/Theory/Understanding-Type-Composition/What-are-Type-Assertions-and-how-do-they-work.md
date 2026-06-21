# Type Assertions гэж юу вэ, мөн тэдгээр нь хэрхэн ажилладаг вэ?

Зарим үед та TypeScript-ээс илүү _type_-ийн талаар мэдэж байх нөхцөлүүд гарч ирдэг. Ийм үед _type assertion_ хэрэг болдог.

Доорх нь submit гэсэн id-тай element-д хандахын тулд querySelector() method ашигласан жишээ юм:

```typescript id="jlwmk8"
const submitBtn = document.querySelector("#submit");
```

Одоогоор TypeScript нь энэ submitBtn-ийг ямар нэг Element эсвэл магадгүй null гэж л мэдэж байна. TypeScript нь үүнийг тодорхойлохын тулд холбогдох HTML-ийг шалгаж үздэггүй.

Энэ нь TypeScript-д энэ ямар төрлийн element болохыг хэлэхийн тулд type assertion ашиглахад тохиромжтой газар юм. Доорх нь жишээ:

```typescript id="z2s2rj"
const submitBtn = document.querySelector("#submit") as HTMLButtonElement;
```

Одоо TypeScript энэ element-ийг type assertion-ийн улмаас button element гэж үзэх болно.

_as_ keyword ашиглахад хязгаарлалт байдаг. Жишээлбэл, та дараах шиг зүйл хийх боломжгүй бөгөөд TypeScript алдаа шиднэ:

```typescript id="mjlwm2"
// Conversion of type 'string' to type 'number' may be a mistake because neither type sufficiently overlaps with the other. If this was intentional, convert the expression to 'unknown' first.
const age = "awesome" as number;
```

Энэ жишээнд "awesome" string-ийг number type гэж үзүүлэхийг оролдох нь нэг их утгагүй байна. TypeScript нь зөвхөн хоорондоо compatible эсвэл overlapping type-уудын хооронд type assertion хийхийг зөвшөөрдөг.

Тэр алдааг арилгах нэг арга нь double assertion ашиглах юм:

```typescript id="m1m1v7"
const age = "awesome" as unknown as number;
```

Хэдийгээр энэ нь TypeScript дээр ажиллах боловч логикийн хувьд нэг их утгагүй тул үүнийг зөвлөдөггүй.

Type assertion бичих өөр нэг арга нь _angle bracket syntax_ ашиглах юм:

```typescript id="y8v9d3"
const submitBtn = <HTMLButtonElement>document.querySelector("#submit");
```

tsx file ашиглах үед энэ syntax дээр болгоомжтой байх хэрэгтэй. Учир нь TypeScript таныг component render хийх гэж байна гэж ойлгоод дараахтай төстэй алдаа шиднэ:

```tsx id="x7r2kp"
// file: index.tsx
// This JSX tag requires 'React' to be in scope, but it could not be found.
// JSX element 'HTMLButtonElement' has no corresponding closing tag.
const submitBtn =  <HTMLButtonElement>document.querySelector("#submit");
```

Ихэнх нөхцөлд та хоёр дахь хувилбараас илүүтэйгээр as keyword ашигласан эхний syntax-ийг ашиглаж байгааг харах болно.
