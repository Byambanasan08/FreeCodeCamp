# Generics гэж юу вэ, мөн тэдгээр нь хэрхэн ажилладаг вэ?

Та өмнөх хичээл дээр _generic type_-ийн жишээ харсан байгаа: `Array<string>`. Гэхдээ та ихэвчлэн generic type-уудыг function-ууд дээр ашиглах болно. Үнэндээ тэдгээрийг function-ийн _type definition_-ийн үйлдлийг удирдах зориулалттай function-д өгдөг тусгай _parameter_ гэж ойлгож болно.

Array-аас random утга авах өмнөх function-ийн жишээ рүүгээ буцаж оръё:

```typescript id="x3m1c8"
const getRandomValue = (array: string[]): string => {
  return array[Math.floor(Math.random() * array.length)];
};
```

Манай function string-үүдийн array хүлээж аваад string буцааж байна. Гэхдээ хэрэв бид number-уудын array дамжуулаад number буцаахыг хүсвэл яах вэ?

Та union type ашиглаж болно:

```typescript id="r7z5jk"
const getRandomValue = (array: (string | number)[]): string | number => {
  return array[Math.floor(Math.random() * array.length)];
};
const val = getRandomValue([1, 2, 4]);
```

Гэхдээ энэ аргын хувьд, бид зөвхөн number-уудаас бүрдсэн array дамжуулсан ч гэсэн TypeScript нь val хувьсагчийг number ЭСВЭЛ string байж болно гэж тодорхойлдог.

Үүний оронд та function-д generic type тодорхойлж болно:

```typescript id="v2l6d4"
const getRandomValue = <T>(array: T[]): T => {
  return array[Math.floor(Math.random() * array.length)];
};
const val = getRandomValue([1, 2, 4]);
```

Манай шинэ жишээнд хэд хэдэн чухал хэсэг байна. Нэгдүгээрт, <T> syntax нь TypeScript-д та function-д зориулж T гэсэн generic type тодорхойлж байгааг хэлж байна. T нь generic type-уудын түгээмэл нэр боловч та үнэндээ үүнийг хүссэнээрээ нэрлэж болно (JavaScript-ийн variable naming convention-ийн хүрээнд).

Дараа нь бид TypeScript-д array parameter нь generic type-тэй таарч буй утгуудын array бөгөөд return value нь мөн тэр ижил type-ийн ганц element гэдгийг хэлж байна. Энэ нь TypeScript-д val нь number болно гэдгийг зөв ойлгох боломж олгодог. Учир нь бидний дамжуулсан array зөвхөн number-уудаас бүрдэж байгаа.

Гэхдээ таны удирддаггүй function-уудын хувьд яах вэ? document.querySelector() method-ийг авч үзье:

```typescript id="x9s3pl"
const email = document.querySelector("#email");
console.log(email.value);
```

Бид ID selector ашиглан query хийж байгаа тул TypeScript яг ямар төрлийн element query хийж байгааг мэдэхгүй байна. Энэ нь ямар нэгэн Element гэдгийг мэдэж байгаа боловч value property-д хандах оролдлого алдаа шиднэ. Учир нь дээд түвшний element interface нь тэр property-г агуулдаггүй.

Аз болоход, бид function call-д type argument дамжуулж болно:

```typescript id="y4v7jq"
const email = document.querySelector<HTMLInputElement>("#email");
console.log(email.value);
```

Бид _angle bracket syntax_ (<HTMLInputElement>)-ийг дахин ашиглаж байгааг анзаараарай. Гэхдээ энэ удаа function call дотор ашиглаж байна. Энэ нь TypeScript-д бидний олох гэж буй element input element байна гэдгийг хэлж байгаа бөгөөд input element-үүд value property-тэй байдаг тул бид value property дээр дахиж алдаа авахгүй.

Мэдээж хэрэг, хэрэв element олдохгүй бол querySelector нь null буцааж болно. Мөн бид тэр нөхцөлийг handle хийгээгүй байгаа тул энд TypeScript compiler error шиднэ.

Гэхдээ та энэ талаар дараагийн хичээлээр сурах болно.
