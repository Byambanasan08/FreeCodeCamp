CRUD гэж юу гэсэн үг вэ, мөн үндсэн үйлдлүүд (basic operations) хэрхэн ажилладаг вэ?

CRUD нь Create, Read, Update, Delete гэсэн үгсийн товчлол (acronym) юм. Эдгээр нь persistent storage-ийн дөрвөн үйлдэл юм.

Persistent storage гэдэг нь цахилгаан унтарсан эсвэл төхөөрөмж дахин асаагдсан ч өгөгдлийг хадгалж үлдэх байдлаар хадгалахыг хэлнэ.

CRUD-ийн үндсэн үйлдлүүд хэрхэн ажилладгийг ойлгох нь web development-д маш чухал бөгөөд энэ нь database-тэй ажиллах, мөн хэрэглэгчид өгөгдөл нэмэх, харах, өөрчлөх, устгах боломжтой application бүтээх үндэс суурь болдог.

Одоо CRUD-ийн хэсэг бүрийг илүү дэлгэрэнгүй харцгаая

```
Create гэдэг нь шинэ өгөгдөл үүсгэх үйл явцыг хэлнэ. Жишээлбэл, web app дээр хэрэглэгч блогт шинэ нийтлэл (post) нэмэх үед энэ нь create үйлдэл юм.

Read нь database-аас өгөгдлийг авах (retrieve) үйлдэл юм. Жишээлбэл, та блогийн нийтлэл үзэх эсвэл вэбсайт дээр өөрийн profile-ийг харах үед database-д хадгалагдсан өгөгдлийг татаж (fetch) харуулж байгаа нь read үйлдэл юм.

Update нь database дахь байгаа өгөгдлийг өөрчлөх (modify) үйлдэл юм. Жишээ нь блогийн нийтлэлийг засах эсвэл profile мэдээллээ шинэчлэх.

Delete нь database-аас өгөгдлийг устгах үйлдэл юм. Жишээлбэл, та блогийн нийтлэл эсвэл account устгах үед delete үйлдэл хийж байна.
```

CRUD нь database, UI, болон RESTful APIs-тэй ажиллах үед ашиглагддаг. RESTful APIs гэдэг нь web service-үүдийг бүтээхэд ашиглагддаг дүрэм (conventions)-ийн цуглуулга бөгөөд client нь стандарт HTTP method-уудыг ашиглан CRUD үйлдлүүдийг хийж database эсвэл back-end системтэй харилцах боломжийг олгодог.

HTTP гэдэг нь Hypertext Transfer Protocol гэсэн үг бөгөөд web дээр өгөгдөл дамжуулах (data communication)-ын үндэс суурь юм. HTTP method-ууд нь web дээр resource-ууд дээр ямар үйлдэл хийж болохыг тодорхойлдог. Түгээмэл method-ууд нь GET, POST, PUT, PATCH, DELETE юм.

Та ирээдүйн хичээлүүд дээр RESTful APIs болон HTTP-ийн талаар илүү дэлгэрэнгүй сурах болно, харин одоо CRUD нь HTTP method-уудтай хэрхэн холбогддогийг товч харцгаая.

```
POST нь шинэ resource үүсгэхэд ашиглагддаг.

GET нь өгөгдлийг авах (retrieve) эсвэл унших (read) үед ашиглагддаг.

PUT нь resource-ийг бүрэн солих (replace entirely) замаар шинэчлэхэд ашиглагддаг.

PATCH нь resource-ийг хэсэгчлэн (partially) шинэчлэхэд ашиглагддаг.

DELETE нь resource-ийг устгахад ашиглагддаг.
```

JavaScript дээр энгийн array ашиглан CRUD үйлдлүүдийг кодоор хэрхэн илэрхийлж болох жишээг харцгаая:

```js id="5v2n0f"
let items = [];

// Create
function createItem(item) {
  items.push(item);
}

// Read
function readItems() {
  return items;
}

// Update
function updateItem(index, newItem) {
  items[index] = newItem;
}

// Delete
function deleteItem(index) {
  items.splice(index, 1);
}

// Example Usage
createItem('Book');
console.log(readItems()); // ['Book']
updateItem(0, 'Magazine');
console.log(readItems()); // ['Magazine']
deleteItem(0);
console.log(readItems()); // []
```

Энэ жишээнд:

```
Бид элементийг array-д push() хийж create үйлдэл хийж байна.

Бид array-г буцааж read үйлдэл хийж байна.

Бид өгөгдсөн index дээрх array-ийн элементийг өөрчилж update үйлдэл хийж байна.

Бид splice() ашиглан array-аас элементийг устгаж delete үйлдэл хийж байна.
```

Энэ нь CRUD үйлдлүүд концепцийн (conceptual) түвшинд хэрхэн ажилладгийн үндсэн жишээ юм.
