# Type Aliases гэж юу вэ, мөн тэдгээр нь хэрхэн ажилладаг вэ?

Өмнөх хичээлээр та union type-уудтай хэрхэн ажиллахыг сурсан. Union type-уудтай ажиллах түгээмэл аргуудын нэг нь `type alias` ашиглах юм.

Type alias гэдэг нь type-д өгсөн нэр юм. Доорх нь union type-д нэр өгсөн жишээ юм:

```typescript id="6lyx4j"
type ID = number | string;
```

Төслүүд дээрээ та ихэвчлэн type alias-ууд үүсгээд, тэдгээрийг програмынхаа туршид дараах байдлаар ашиглах болно:

```typescript id="u4d80l"
type ID = number | string;

type User = {
  id: ID;
  name: string;
};

function getUserId(user: User): ID {
  return user.id;
}
```

Энэ жишээ нь ID болон User нэртэй хоёр type ашиглаж байна. ID нь number эсвэл string гэсэн union type байх бол User нь id болон name property-тэй object type юм. id нь ID type-ээр тодорхойлогдсон бол name нь string type-тэй байна.

getUserId function нь user нэртэй нэг parameter-тэй бөгөөд түүний type нь User юм. getUserId function-ийн return type нь ID байна.

Type alias-ууд нь object-ийн хэлбэрийг (shape) тодорхойлох маш сайн арга юм. Object type-ууд үүсгээд тэдгээрийг array дотор дараах байдлаар ашиглах нь түгээмэл байдаг:

```typescript id="0s0d60"
type User = {
  id: number | string;
  name: string;
};

const users: User[] = [
  { id: 101, name: "Alice" },
  { id: "A102", name: "Bob" },
  { id: 103, name: "Charlie" },
];
```

Энэ жишээнд users array нь зөвхөн User object-уудаар дүүрсэн байх ёстой. Хэрэв та object-уудын аль нэг дээр property мартвал TypeScript дараахтай төстэй алдаа шиднэ:

```typescript id="fdzjlwm"
type User = {
  id: number | string;
  name: string;
};

const users: User[] = [
  // Property 'name' is missing in type '{ id: number; }' but required in type 'User'.
  { id: 101 },
  { id: "A102", name: "Bob" },
  { id: 103, name: "Charlie" },
];
```

Та type alias-уудын нэршил дээр _PascalCase_ ашиглаж байгааг анзаарсан байж магадгүй. Учир нь convention-ийн дагуу PascalCase ашиглах нь type-уудыг variable-уудаас ялгахад тусалдаг. Мөн уншихад илүү ойлгомжтой болгодог. Жишээлбэл, User[] гэж харахад та үүнийг User type-тэй object-уудын array гэдгийг ойлгоно.
