# TypeScript гэж юу вэ, мөн яагаад салбарт (industry) ашиглагддаг вэ?

_JavaScript_ нь динамик төрөлтэй _dynamically-typed_ хэл гэж тооцогддог. Энэ нь хувьсагчид (variables) ажиллах үеэр (run time) ямар ч утга авч болно гэсэн үг юм — хувьсагчийг тоо (number) гэж зарласан ч дараа нь түүнд string утга оноохоос сэргийлэхгүй, мөн функцийн параметрүүдэд (function parameters) ямар ч утга дамжуулж болно.

Динамик төрөлтэй хэлний (dynamically-typed language) асуудал нь төрөл хамгаалалт _type safety_ байхгүйгээс болж, хэрэв анхааралгүй байвал алдаа үүсгэж болдогт оршино. _TypeScript_ нь `JavaScript` хэлийг статик төрөлжилтөөр _static typing_ өргөтгөдөг бөгөөд энэ нь таны кодыг `deploy` хийхээс өмнө алдаануудыг илрүүлэхэд тусалдаг. Гэхдээ энэ нь хэрхэн ажилладаг вэ?

Дараах JavaScript функцийг авч үзье:

```javascript
const getRandomValue = (array) => {
  return array[Math.floor(Math.random() * array.length)];
};
```

Манай `getRandomValue` функц нь array авч, тухайн array-аас санамсаргүй утга буцаадаг. Гэхдээ `JavaScript` төрөл (type)-ийг шалгадаггүй учраас, энэ функцийг тоо (number)-оор дуудахыг хориглох зүйл байхгүй:

```javascript
console.log(getRandomValue(10));
```

Одоогийн жишээний console output нь undefined буцаах болно. Учир нь энэ нь number биш array хүлээж байсан.

Харин TypeScript ашиглавал та array параметрт төрөл (type) тодорхойлж өгч болно:

```typescript
const getRandomValue = (array: string[]) => {
  return array[Math.floor(Math.random() * array.length)];
};
```

Энэ төрөл тодорхойлолт (type definition) нь array аргумент `string`-үүдийн array байх ёстойг TypeScript-д хэлж өгч байна. Ингээд та `getRandomValue` функцийг дуудаад түүнд number дамжуулах үед `compiler error` гэж нэрлэгддэг өөр төрлийн алдаа гарч ирнэ.

`Browser` эсвэл `Node.js` зэрэг ихэнх `JavaScript runtime environment`-ууд _TypeScript_-ийг шууд (natively) ажиллуулж чаддаггүй. Үүний оронд та эхлээд TypeScript кодоо энгийн JavaScript руу `compile` буюу хөрвүүлэх хэрэгтэй болдог. Үүнийг та `TypeScript` хэлтэй хамт ирдэг `built-in compiler` ашиглан хийж болно. Compiler-ийг ажиллуулах үед TypeScript таны кодыг шалгаж, төрөл (types) таарахгүй байгаа бүх асуудал дээр алдаа гаргана — жишээлбэл, array хүлээж буй функц руу number дамжуулах гэх мэт.

Дараагийн хэдэн хичээлээр та эдгээр төрлүүд (types) хэрхэн ажилладаг талаар илүү ихийг сурах болно. Гэхдээ яг энэ нэмэлт хамгаалалт _extra safety_ нь `TypeScript`-ийг олон хөгжүүлэгчид болон байгууллагуудад сонирхолтой хэл болгодог юм.
