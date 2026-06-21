# The any, never, unknown болон void types хэрхэн ажилладаг вэ?

Өмнөх хичээлүүдээр та primitive type-ууд, мөн union type-ууд болон interface-уудтай хэрхэн ажиллахыг сурсан.

Гэхдээ TypeScript-д таны мэдэж байх ёстой зарим _тусгай type(special types)_-ууд байдаг. Эхлээд any type-ийг авч үзье.

1. `any` type нь ямар ч төрлийн утгыг илэрхийлэхэд ашиглагддаг.

```typescript id="5z8p2k"
let randomValue: any;

randomValue = 42;

randomValue = "Hello";

randomValue = true;

randomValue = { name: "Alice" };
```

Энэ type-ийг ашиглахдаа болгоомжтой байх хэрэгтэй. Учир нь үүнийг хэт их, буруу ашиглахад амархан байдаг. Та зүгээр л TypeScript-ийн алдааны message-үүдийг чимээгүй болгохын тулд бүх зүйлийг any type-ээр type хийхийг хүсэхгүй. Энэ нь TypeScript ашиглаж, анхнаасаа _type safety_ нэмэх зорилгыг үгүй хийдэг.

2. any type-ийн илүү аюулгүй _counterpart_ нь _unknown type_ юм. unknown нь any-тэй төстэй боловч unknown type-ийн хувьд та variable-ийг ашиглахаасаа өмнө _type check_ хийх ёстой байдаг.

Доорх нь жишээ юм:

```typescript id="r2k5yy"
function doubleValue(value: unknown) {
  if (typeof value === "number") {
    console.log(value * 2);
  } else if (typeof value === "string") {
    console.log(value + value);
  }
}

doubleValue(10);
doubleValue("Hi ");
doubleValue(true);
```

Энэ жишээнд type check-үүд нь зөвхөн зөв type-тэй утгууд дээр operation хийхийг баталгаажуулж байна. Хүлээгдэж буй type-уудтай таарахгүй утгуудыг үл тоомсорлодог.

3. Дараагийн авч үзэх type бол _never type_ юм. Энэ type нь хэзээ ч тохиолдохгүй зүйлийг илэрхийлдэг.

Ихэнх нөхцөлд та never ашигласан type annotation-уудыг өөрөө бичихгүй. Үүний оронд never type нь дараах шиг алдааны message-үүд дээр гарч ирэхийг ихэвчлэн харах болно:

```typescript id="l9c3we"
function processValue(value: string | number) {
  if (typeof value === "string") {
    console.log("String value:", value.toUpperCase());
  } else if (typeof value === "number") {
    console.log("Number value:", value * 2);
  } else {
    console.log(value);
  }
}
```

Дээрх жишээний `else clause` дотор value нь `never type`-тэй байна. Учир нь else branch-д хүрэх боломжгүй болсон бөгөөд үлдсэн type байхгүй болсон гэсэн үг юм. Хэрэв та function-ийг string эсвэл number-оос өөр утгаар дуудах гэж оролдвол дараахтай төстэй алдаа гарна:

```typescript id="95nrw5"
function processValue(value: string | number) {
  if (typeof value === "string") {
    console.log("String value:", value.toUpperCase());
  } else if (typeof value === "number") {
    console.log("Number value:", value * 2);
  } else {
    console.log(value);
  }
}

// Argument of type 'boolean' is not assignable to parameter of type 'string | number'.
processValue(true);
```

4. Сүүлд авч үзэх type бол _void type_ юм. Хэрэв танд утга буцаадаггүй function байвал тэр нь _void type_ болно.

Доорх нь жишээ юм:

```typescript id="jlwmq5"
type Status = "loading" | "success" | "error";

type Handler = {
  status: Status;
  onChange: (newStatus: Status) => void;
};
```

Энэ жишээнд Handler type-ийн onChange property нь юу ч буцаадаггүй тул void ашиглаж байна.
