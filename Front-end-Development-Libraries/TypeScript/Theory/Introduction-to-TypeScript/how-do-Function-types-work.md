# Function Types хэрхэн ажилладаг вэ?

Энэ хичээлээр та function type-уудтай хэрхэн ажиллахыг сурах болно. Эхлээд parameter type annotation-уудаас эхэлье.

Доорх нь энгийн function-ийн жишээ юм:

```javascript id="5wd6o9"
function circleArea(radius) {
  return Math.PI * radius * radius;
}
```

Одоогоор TypeScript нь `Parameter 'radius' implicitly has an 'any' type.` гэсэн message харуулна. _any_ type гэдэг нь утга ямар ч төрөлтэй байж болно гэсэн утгатай. Та энэ төрлийн талаар дараагийн хичээлээр илүү ихийг сурах болно.

Алдааг арилгаж, parameter-д explicit type өгөхийн тулд дараах байдлаар type хийж болно:

```typescript id="4bg4e4"
function circleArea(radius: number) {
  return Math.PI * radius * radius;
}
```

Хэрэв та circleArea функцийг number биш өөр төрлөөр дуудах гэж оролдвол TypeScript дараахтай төстэй алдаа харуулна:

```typescript id="n44qum"
function circleArea(radius: number) {
  return Math.PI * radius * radius;
}

// Argument of type 'string' is not assignable to parameter of type 'number'
circleArea("3");
```

Хэрэв та function-ийн хүлээж байгаагаас олон argument дамжуулах гэж оролдвол TypeScript алдаа харуулна:

```typescript id="t7gvmr"
function circleArea(radius: number) {
  return Math.PI * radius * radius;
}

// Expected 1 arguments, but got 2.
circleArea(3, 4);
```

Хэрэв та хэт цөөн argument дамжуулбал мөн TypeScript алдаа харуулна:

```typescript id="ytx0kh"
function circleArea(radius: number) {
  return Math.PI * radius * radius;
}

// Expected 1 arguments, but got 0.
// An argument for 'radius' was not provided.
circleArea();
```

Та parameter-ийн хажууд ? тэмдэг ашиглан parameter-уудыг optional болгож болно:

```typescript id="3z7r7t"
function area(radius: number, height?: number): number {
  const baseArea = Math.PI * radius * radius;

  if (height !== undefined) {
    const sideArea = 2 * Math.PI * radius * height;
    return baseArea + sideArea;
  }

  return baseArea;
}
```

Optional parameter-ууд үргэлж required parameter-уудын дараа байрлах ёстойг санаарай. Optional parameter-ийн дараа required parameter байрлуулах нь TypeScript алдаа үүсгэнэ.

Function доторх conditional check нь height argument дамжуулагдаагүй тохиолдолд зориулсан юм.

Хэрэв та return value-уудаа type хийхийг хүсвэл return type annotation-уудыг дараах байдлаар нэмж болно:

```typescript id="mxt79h"
function circleArea(radius: number): number {
  return Math.PI * radius * radius;
}
```

Return type annotation нь parameter list-ийн дараа байрладаг. Variable type annotation-уудтай адил, ихэнх тохиолдолд TypeScript return type-ийг ухаалгаар infer хийдэг. Тиймээс function-ийн зорилгыг (intent) илүү тодорхой болгох эсвэл return value санамсаргүйгээр өөрчлөгдөхөөс сэргийлэхийг хүсэж байвал explicit return type annotation ашиглаарай.

Дараагийн жишээ asynchronous function болон promise-уудтай холбоотой байх болно. Хэрэв таны function promise буцаах гэж байвал Promise type-ийг дараах байдлаар ашиглаж болно:

```typescript id="8yq5si"
async function getCityTemperature(city: string): Promise<number> {
  const response = await fetch(`https://api.example.com/weather?city=${city}`);
  const data = await response.json();
  return data.temperature;
}
```

Энэ тохиолдолд хэрэв та return type-ийг хасвал TypeScript return-ийг Promise<any> гэж infer хийж магадгүй. Тиймээс энэ нь return value-д explicit type өгөхөд тохиромжтой нөхцөл юм.

Одоог хүртэл бид зөвхөн named function жишээнүүдийг харсан. Гэхдээ anonymous function-уудтай type-ууд хэрхэн ажилладаг вэ?

Доорх нь forEach рүү дамжуулсан callback дотор anonymous function ашигласан жишээ юм:

```typescript id="9fpjlwm"
const languages = ["JavaScript", "Python", "TypeScript"];

languages.forEach((lang) => {
  console.log(`${lang.toUpperCase()} has ${lang.length} characters`);
});
```

lang parameter-д type annotation байхгүй байна. Үүний оронд _TypeScript contextual typing_ ашигладаг бөгөөд энэ нь тухайн parameter-ийн төрлийг гарч ирж буй context-оос нь _infer_ хийдэг гэсэн үг юм.
