# Types нь Object болон Array-уудтай хэрхэн ажилладаг вэ?

Энэ хичээлээр та object болон array-д type хэрхэн нэмэхийг сурах болно.

Эхлээд array-уудыг авч үзье.

Доорх нь programming language-уудын array-ийн жишээ юм:

```typescript id="bg7xg9"
const programmingLanguages = ["Java", "C++", "Python"];
```

Хэрэв та энэ array-ийг string-үүдийн array гэж explicit type хийхийг хүсвэл string[] гэж type хийж болно:

```typescript id="i7v4k2"
const programmingLanguages: string[] = ["Java", "C++", "Python"];
```

Өмнө нь сурсанчлан, хэрэв та зүгээр ингэж бичвэл TypeScript үүнийг string-үүдийн array гэж ухаалгаар infer хийх болно:

```typescript id="5phw8p"
const programmingLanguages = ["Java", "C++", "Python"];
```

Гэхдээ explicit type хийх нь дараах шиг array-д өөр төрлийн утга нэмэхийг оролдсон үед тус болно:

```typescript id="b5aq9q"
// Type 'number' is not assignable to type 'string'.(2322)
const programmingLanguages: string[] = ["Java", 9, "Python"];
```

Array-д type өгөх өөр нэг арга бол энэ syntax-ийг ашиглах юм:

```typescript id="4jlwmr"
const programmingLanguages: Array<string> = ["Java", "C++", "Python"];
```

Үндсэндээ эдгээр хоёр syntax ижил бөгөөд алийг нь сонгох нь ерөнхийдөө _preference_-ийн асуудал юм.

Одоо object-уудыг type хийхийг авч үзье.

Доорх нь object literal-ийн жишээ юм:

```typescript id="j6blc5"
const developer = {
  firstName: "Jessica",
  isEmployed: true,
};
```

Object property-уудыг explicit type хийхийн тулд дараах syntax-ийг ашиглаж болно:

```typescript id="m1m9s7"
const developer: { firstName: string; isEmployed: boolean } = {
  firstName: "Jessica",
  isEmployed: true,
};
```

Хэрэв та object-оос property нэмэх эсвэл хасах гэж оролдвол дараахтай төстэй алдаа гарна:

```typescript id="g65n1u"
// Property 'isEmployed' is missing in type '{ firstName: string; }' but required in type '{ firstName: string; isEmployed: boolean; }'
const developer: { firstName: string; isEmployed: boolean } = {
  firstName: "Jessica",
};
```

Та property name-ийн ард _?_ ашиглан object property-уудыг optional болгож болно:

```typescript id="5fhf9n"
const developer: { firstName: string; isEmployed?: boolean } = {
  firstName: "Jessica",
};
```

isEmployed property _optional_ гэж тэмдэглэгдсэн тул TypeScript дахиж алдаа харуулахгүй.

Одоог хүртэлх бүх object жишээнүүд restrictive property-уудтай байсан. Энэ нь object-д байж болох бүх property-г бид explicit байдлаар жагсаасан гэсэн үг юм:

```typescript id="wbw4qq"
const developer: { firstName: string; isEmployed: boolean } = {
  firstName: "Jessica",
  isEmployed: true,
};
```

Гэхдээ хэрэв та бүх property name-уудыг урьдчилж мэдэхгүй бол яах вэ? Хэрэв та хэдэн ч property байж болох боловч бүх value нь тодорхой type дагах ёстой object хүсвэл яах вэ?

Үүнийг хийх хоёр арга бий.

1. Эхний арга нь _Record_ ашиглах бөгөөд энэ нь TypeScript дахь _built-in generic utility_ type юм.

Доорх нь үндсэн syntax:

```typescript id="n80m8s"
Record<Keys, ValueType>;
```

Эхний type нь key-үүдийн type-ийг, харин хоёр дахь type нь value-үүдийн type-ийг илэрхийлдэг.

Доорх нь userRoles object-д Record ашигласан жишээ юм:

```typescript id="e6djtx"
const userRoles: Record<string, string> = {
  admin: "full-access",
  editor: "limited-access",
  viewer: "read-only",
};
```

Энэ userRoles object нь ямар ч string key-тэй байж болох бөгөөд бүх value нь string байх ёстой. Хэрэв та string биш value оноох гэж оролдвол алдаа авна:

```typescript id="xep2zu"
// Type 'number' is not assignable to type 'string'
const userRoles: Record<string, string> = {
  admin: 1,
};
```

2. Ижил санааг бичих хоёр дахь арга нь _index signature_ ашиглах юм:

```typescript id="srbhm4"
const obj: { [key: string]: string } = {};
```

Дээрх syntax нь string key-тэй ямар ч property string value-тэй байх ёстой гэж хэлж байна. Доорх нь settings object-ийн жишээ юм:

```typescript id="o8tbyh"
const settings: { [key: string]: string } = {
  theme: "dark",
  language: "en",
  layout: "grid",
};
```

Яг өмнөхтэй адил, хэрэв буруу value type ашиглавал TypeScript алдааны message харуулна:

```typescript id="6wb1oy"
// Type 'boolean' is not assignable to type 'string'
const settings: { [key: string]: string } = {
  darkMode: true,
};
```

_Record_ болон _index signature_ хоёулаа үндсэндээ ижил зүйл юм. Тиймээс алийг нь сонгох нь ихэвчлэн preference-ийн асуудал байдаг.
