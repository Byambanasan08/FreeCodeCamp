IndexedDB гэж юу вэ, мөн хэрхэн ажилладаг вэ?

IndexedDB нь browser дотор structured data хадгалах хэрэгсэл (tool) юм. Энэ нь орчин үеийн web browser-уудад built-in байдлаар байдаг бөгөөд web app-ууд JavaScript object-уудыг үр ашигтайгаар хадгалах болон авах боломжийг олгодог.

localStorage зэрэг бусад storage механизмуудаас ялгаатай нь, localStorage нь зөвхөн string хадгалах боломжтой байдаг бол IndexedDB нь JavaScript object-ууд, файлууд, мөн бараг ямар ч төрлийн өгөгдлийг хадгалах боломжтой. Энэ нь том хэмжээтэй, нарийн бүтэцтэй өгөгдөлтэй (large and complex data structures) ажиллах шаардлагатай web application-уудад маш тохиромжтой болгодог.

Одоо IndexedDB хэрхэн ажилладгийг харцгаая.

Эхний алхам нь database нээх юм. Дараах нь жишээ:

```js id="y6n2pd"
let request = indexedDB.open("Sample DB", 1);

request.onerror = function(event) {
  console.log("Error opening database");
};

request.onsuccess = function(event) {
  let db = event.target.result;
  console.log("Database opened successfully");
};
```

Энэ код дээр бид "Sample DB" нэртэй database-ийг version 1-тэйгээр нээж байна. Бид хоёр callback function өгч байна: нэг нь алдаа (error) боловсруулахад, нөгөө нь database амжилттай нээгдэх үед ажиллана. success callback дотор авсан db object нь database-тэй харилцахад ашиглагдана.

Хэрэв та browser-ийн dev tools-ийн application interface-ийг шалгавал IndexedDb хэсэгт таны Sample DB нээгдсэн байгааг харах болно. Database-аа нээсний дараа object store-уудтай ажиллаж эхэлж болно.

IndexedDB дахь object store нь уламжлалт database-ийн table-тэй төстэй. Эдгээр нь таны хадгалах бодит өгөгдлийг агуулдаг. Object store үүсгэх жишээ:

```js id="q9x3ld"
let request = indexedDB.open("Sample DB", 1);

request.onupgradeneeded = function(event) {
  let db = event.target.result;
  let objectStore = db.createObjectStore("customers", { keyPath: "id" });
};
```

Энэ код нь "customers" нэртэй object store үүсгэж, "id"-г key path болгон тохируулж байна. Key path нь уламжлалт database-ийн primary key-тэй адил бөгөөд record бүрийг өвөрмөц (unique) байдлаар тодорхойлоход ашиглагддаг.

Object store-д өгөгдөл нэмэхийн тулд дараах байдлаар хийж болно. Энэ жишээнд db нь IndexedDB database instance-ийг илэрхийлнэ.

```js id="n4c7xz"
let transaction = db.transaction(["customers"], "readwrite");
let objectStore = transaction.objectStore("customers");
let request = objectStore.add({ id: 1, name: "John Doe", email: "john@example.com" });

request.onerror = function(event) {
  console.log("Error adding data");
};

request.onsuccess = function(event) {
  console.log("Data added successfully");
};
```

Энэ код нь "customers" object store-д шинэ customer нэмэж байна. Бид transaction эхлүүлж (энэ нь database үйлдлүүдийг бүлэглэх арга юм), object store-ийн reference авч, дараа нь өгөгдлийг нэмэж байна.

Өгөгдөл авах (retrieve) нь мөн төстэй байдлаар ажиллана. Бид transaction эхлүүлж, object store авч, дараа нь get зэрэг method-уудыг ашиглан өгөгдлийг авна:

```js id="z2v8hk"
let transaction = db.transaction(["customers"]);
let objectStore = transaction.objectStore("customers");
let request = objectStore.get(1);

request.onerror = function(event) {
  console.log("Error retrieving data");
};

request.onsuccess = function(event) {
  console.log("Customer:", request.result);
};
```

Энэ код нь "customers" object store-оос id нь 1-тэй customer-ийг авч байна.

IndexedDB-ийн гол онцлогуудын нэг нь энэ нь asynchronous байдаг.

Энэ нь IndexedDB-тэй харилцах үед үйлдлүүд web application-ийн main thread-ийг блоклохгүй гэсэн үг юм. Ингэснээр их хэмжээний өгөгдөлтэй ажиллаж байсан ч таны web application responsive хэвээр байна.

IndexedDB нь маш хүчирхэг боломжуудтай боловч бусад энгийн storage API-уудтай харьцуулахад сурахад илүү төвөгтэй (steeper learning curve) бөгөөд энэ нь эхлэгчдэд хэцүү байж болно. Гэсэн хэдий ч client-side дээр их хэмжээний structured data боловсруулах шаардлагатай application-уудад IndexedDB нь онцгой боломжуудыг (unparalleled capabilities) санал болгодог.
