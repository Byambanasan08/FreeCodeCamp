# Interfaces гэж юу вэ, мөн тэдгээр нь хэрхэн ажилладаг вэ?

Өмнөх хичээлүүдийн нэгэнд та type alias-уудтай хэрхэн ажиллахыг сурч, object type-уудад хэрхэн нэр өгөх жишээнүүдийг үзсэн.

Санаж байгаачлан, object type-д нэр өгөх нэг арга нь _type keyword_ ашиглах явдал юм:

```typescript id="dcv2z4"
type ID = number | string;

type User = {
  id: ID;
  name: string;
};
```

Object type-д нэр өгөх өөр нэг арга нь _interface declaration_ ашиглах юм:

```typescript id="hmy1zv"
type ID = number | string;

interface User {
  id: ID;
  name: string;
}
```

_type_ болон _interface_ нь төстэй боловч нэг чухал ялгаа нь interfaces нь бусад interface эсвэл type дээр суурилж өргөжүүлэхдээ _extends_ keyword ашигладаг, харин type alias-ууд нь type-уудыг нэгтгэхдээ _intersection type (&)_-ийг ашигладаг явдал юм.

Хэдэн жишээ авч үзье:

```typescript id="jlwmqm"
interface User {
  id: number | string;
  name: string;
}

interface Admin extends User {
  role: string;
}

const adminUser: Admin = {
  id: 101,
  name: "Alice",
  role: "superadmin",
};
```

Энэ жишээнд User нь id болон name-тай эхэлж байна. Admin interface нь User-ийг extends хийж байгаа бөгөөд энэ нь id болон name-ийг агуулж, role нэртэй шинэ property нэмдэг гэсэн үг юм.

Хэрэв та type-ийг extend хийхийг хүсвэл intersection type (&)-ийг дараах байдлаар ашиглана:

```typescript id="vtzjlwm"
type User = {
  id: number | string;
  name: string;
};

type Admin = User & {
  role: string;
};

const adminUser: Admin = {
  id: 101,
  name: "Alice",
  role: "superadmin",
};
```

Admin нь User type-ийг role агуулсан шинэ object type-тэй нэгтгэж байна. Үр дүн нь interface жишээтэй ижил shape-тэй бөгөөд энэ нь id, name, болон role property-уудтай object юм.

    type болон interface хоёулаа object-ийн shape-ийг тодорхойлж чадна. Хэрэв та алийг нь ашиглахаа мэдэхгүй байвал, interface нь object shape-д тусгайлан зориулагдсан байдаг бол type нь илүү уян хатан бөгөөд union type, primitive type, мөн илүү complex type combination-уудыг ч илэрхийлж чаддаг гэдгийг санаарай.
