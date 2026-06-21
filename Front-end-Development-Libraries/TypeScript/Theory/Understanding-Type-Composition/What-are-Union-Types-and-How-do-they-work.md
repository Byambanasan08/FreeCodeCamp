# Union Types гэж юу вэ, мөн тэдгээр нь хэрхэн ажилладаг вэ?

Өмнөх хичээлүүдээр та string болон boolean зэрэг primitive type-уудтай хэрхэн ажиллахыг сурсан. Гэхдээ TypeScript нь одоо байгаа type-уудаас шинэ type үүсгэх боломж олгодог. Үүний нэг жишээ нь _union type_ юм.

_Union_ type гэдэг нь хоёр эсвэл түүнээс олон өөр type-ийг нэгтгэсэн `type` юм.

Доорх нь үндсэн syntax:

```typescript id="y3t5xw"
type1 | type2 | type3;
```

Ойлголтыг илүү сайн ойлгохын тулд хэдэн жишээ авч үзье.

Доорх нь string эсвэл number гэсэн union type-тэй id нэртэй хувьсагчийн жишээ юм:

```typescript id="0wh6g0"
let id: string | number = "user_783";
```

Энэ утгыг number болгон шинэчилж болох бөгөөд энэ нь union type-ийн хувьд мөн хүчинтэй хэвээр байна:

```typescript id="l6sp9q"
let id: string | number = 1024;
```

Хэрэв та string эсвэл number биш өөр утга оноох гэж оролдвол TypeScript алдааны message харуулна:

```typescript id="l5l69v"
// Type 'string[]' is not assignable to type 'string | number'.
let id: string | number = ["Java", "Python"];
```

Union type-уудтай ажиллах үед бүх type дээр ажиллах method-уудыг ашиглах нь чухал байдаг. Үгүй бол TypeScript дараахтай төстэй алдаа шиднэ:

```typescript id="j3x5yl"
function getId(id: string | number) {
  // Property 'toUpperCase' does not exist on type 'string | number'.
  return id.toUpperCase();
}
```

Үүний шийдэл бий бөгөөд энэ нь union-ийг _narrowing_ хийхтэй холбоотой. Гэхдээ та энэ талаар болон union type-ууд _type alias_-уудтай хэрхэн ажилладгийг дараагийн хичээлүүдээр илүү дэлгэрэнгүй сурах болно.

Union type-ууд нь null болон undefined утгуудтай ажиллах үед мөн хэрэгтэй байдаг.

Доорх нь хувьсагч string утга агуулж болох эсвэл одоогоор ямар ч утга тохируулагдаагүй бол null байж болох жишээ юм:

```typescript id="hhj2i0"
let username: string | null;

// Type 'number' is not assignable to type 'string | null'.
username = 42;
```

Энэ тохиолдолд username нь string эсвэл null байж болохоос өөр зүйл байж болохгүй. Та утга байхгүй байгааг зориудаар (intentionally) илэрхийлэхийг хүсэж байвал null ашиглаж болно.

Доорх нь undefined ашигласан өөр нэг жишээ юм:

```typescript id="40d7gb"
let score: number | undefined;

score = undefined;

// Type 'string' is not assignable to type 'number | undefined'.
score = "high";
```

Энэ жишээнд score нь number эсвэл undefined байж болно. Та утга хараахан оноогдоогүй үед undefined ашиглаж болно.

Union type-уудыг null болон undefined-тэй хамт ашиглах нь утга байхгүй байж болох нөхцөлийг ойлгомжтой болгодог бөгөөд үүний зэрэгцээ TypeScript буруу assignment-уудыг илрүүлэх боломжтой хэвээр байдаг.
