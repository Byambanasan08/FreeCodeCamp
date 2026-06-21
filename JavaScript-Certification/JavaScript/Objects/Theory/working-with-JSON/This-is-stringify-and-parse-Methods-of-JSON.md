 JSON.parse() болон JSON.stringify() хэрхэн ажилладаг вэ?

JavaScript-д JSON өгөгдөлтэй ажиллах хоёр хүчирхэг арга байдаг: `JSON.parse()` болон `JSON.stringify()`. Эдгээр аргуудыг ихэвчлэн JSON тэмдэгт мөр (string) болон JavaScript объектын хооронд хөрвүүлэлт хийхэд ашигладаг.

#### 1. JSON.stringify()
`JSON.stringify()` нь JavaScript объектыг JSON тэмдэгт мөр болгон хөрвүүлэхэд ашиглагддаг. Энэ нь өгөгдлийг системүүдийн хооронд хялбархан дамжуулах эсвэл хадгалах боломжтой формат руу шилжүүлэхэд маш хэрэгтэй байдаг.



`JSON.stringify()` аргыг хэрхэн ашиглах жишээг энд харуулав:

```javascript
const user = {
  name: "John",
  age: 30,
  isAdmin: true
};

const jsonString = JSON.stringify(user);
console.log(jsonString); // '{"name":"John","age":30,"isAdmin":true}'
```

`JSON.stringify()` арга нь мөн **replacer** (орлуулагч) гэж нэрлэгддэг нэмэлт параметр авч болдог бөгөөд энэ нь функц эсвэл массив байж болно. Нэмэлт `replacer` параметрт массив ашигласан жишээг энд харуулав:

```javascript
const developerObj = {
  firstName: "Jessica",
  isAwesome: true,
  isMusician: true,
  country: "USA",
};

// Үр дүн: {"firstName":"Jessica","country":"USA"}
console.log(JSON.stringify(developerObj, ["firstName", "country"]));
```

Энэ жишээнд бид дөрвөн шинж чанартай `developerObj` объекттой байна. Бид `JSON.stringify()` аргыг ашиглахдаа хоёр дахь параметрт массив дамжуулж, аль шинж чанаруудыг тэмдэгт мөр болгохыг зааж өгч болно. Үр дүн нь зөвхөн `firstName` болон `country` шинж чанаруудыг агуулсан JSON мөр байх болно.

`JSON.stringify()` аргын өөр нэг нэмэлт параметр бол **spacer** (зай авагч) юм. Энэ нь хөрвүүлсэн үр дүнгийн хоосон зайн хэмжээг хянах боломжийг олгодог:

```javascript
const developerObj = {
  firstName: "Jessica",
  isAwesome: true,
  isMusician: true,
  country: "USA",
};

console.log(JSON.stringify(developerObj, null, 2));
/* Үр дүн:
{
  "firstName": "Jessica",
  "isAwesome": true,
  "isMusician": true,
  "country": "USA"
}
*/
```

Ихэнх тохиолдолд та эдгээр нэмэлт параметрүүдийг ашиглахгүй боловч тэдгээрийн талаар мэдэж байх нь хэрэгтэй юм.

#### 2. JSON.parse()
Програмчлалд маш их ашиглах өөр нэг арга бол `JSON.parse()` юм. `JSON.parse()` нь JSON тэмдэгт мөрийг буцаагаад JavaScript объект болгон хөрвүүлдэг. Энэ нь та вэб сервер эсвэл `localStorage`-аас JSON өгөгдөл хүлээн аваад, түүнийгээ програм дотроо ашиглах, өөрчлөх шаардлагатай үед маш хэрэгтэй байдаг. Та `localStorage`-ийн талаар ирээдүйн хичээлүүд дээр илүү ихийг сурах болно.



`JSON.parse()` аргатай ажиллах жишээг энд харуулав:

```javascript
const jsonString = '{"name":"John","age":30,"isAdmin":true}';
const userObject = JSON.parse(jsonString);

console.log(userObject);
// Үр дүн: { name: 'John', age: 30, isAdmin: true }
```

Энэ нь танд өгөгдлийг програм дотроо ердийн JavaScript объект шиг ашиглах, удирдах боломжийг олгоно.

Ирээдүйн модулиудад бид JSON болон `JSON.parse()`, `JSON.stringify()` аргуудын талаар үргэлжлүүлэн илүү ихийг сурах болно.

---
