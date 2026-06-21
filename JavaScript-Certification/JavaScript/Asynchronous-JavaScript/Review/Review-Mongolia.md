# Asynchronous JavaScript-ийн тойм (Review)

- Synchronous JavaScript (синхрон JavaScript) нь дарааллын дагуу гүйцэтгэгддэг бөгөөд дараагийн үйлдэл рүү шилжихээс өмнө өмнөх үйлдэл дуусахыг хүлээдэг.
- Asynchronous JavaScript (асинхрон JavaScript) нь үндсэн урсгалыг (main thread) хаахгүйгээр олон үйлдлийг background (арын хэсэгт) зэрэг гүйцэтгэх боломжийг олгодог.
- Thread (урсгал) гэдэг нь үндсэн програмын урсгалаас (main program flow) хамааралгүйгээр гүйцэтгэгдэж болох зааврын (instructions) дараалал юм.
- Callback function (callback функц) нь өөр функцэд аргумент (argument) болгон дамжуулагддаг функц бөгөөд үйлдэл дууссаны дараа эсвэл event (үйл явдал)-ийн үр дүнд гүйцэтгэгддэг.

1. JavaScript engine болон JavaScript runtime

   1.1 JavaScript engine нь вэб браузер дотор JavaScript кодыг гүйцэтгэдэг програм юм. Энэ нь таны кодыг авч, компьютер ойлгож гүйцэтгэх боломжтой заавар болгон хувиргадаг хөрвүүлэгч (converter) шиг ажилладаг.
   1.2 V8 JavaScript Engine нь Google-аас хөгжүүлсэн JavaScript engine-ийн жишээ юм.
   1.3 JavaScript runtime нь JavaScript код гүйцэтгэгдэж буй орчин (environment) юм. Энэ нь кодыг боловсруулах, гүйцэтгэх JavaScript engine-ийг болон нэмэлт боломжуудыг (жишээ нь вэб браузер эсвэл Node.js) агуулдаг.

2. Fetch API

   2.1 Fetch API нь вэб аппликейшнуудад сүлжээний хүсэлт (network requests) хийх боломжийг олгодог бөгөөд ихэвчлэн серверээс өгөгдөл авах (retrieve) эсвэл илгээх (send) зорилготой ашиглагддаг. Энэ нь эдгээр хүсэлтийг хийхэд ашиглах fetch() method-ийг өгдөг.
   2.2 Та Fetch API ашиглан text (текст), images (зураг), audio (дуу), JSON болон бусад төрлийн өгөгдлийг авч болно.

3. Fetch API-д ашиглагддаг HTTP method-ууд

Fetch API нь сервертэй харилцахад төрөл бүрийн HTTP method-уудыг дэмждэг. Хамгийн түгээмэл method-ууд нь:

```
3.1 GET: Серверээс өгөгдөл авахад ашиглагддаг. Анхдагчаар (default), Fetch API нь өгөгдөл авахдаа GET method-ийг ашигладаг.
```

fetch('https://api.example.com/data')

Fetch-ээр авсан өгөгдлийг ашиглахын тулд .json() method ашиглан JSON формат руу хөрвүүлэх шаардлагатай:

fetch('https://api.example.com/data')
.then(response => response.json())
.then(data => console.log(data))

Энэ кодонд Fetch API-аас ирж буй response нь Promise бөгөөд .then handler нь тухайн response-ийг JSON формат руу хөрвүүлж байна.

3.2 POST: Сервер рүү өгөгдөл илгээхэд ашиглагддаг. POST method нь сервер дээр шинэ resource (нөөц) үүсгэхэд ашиглагддаг.

fetch('https://api.example.com/users', {
method: 'POST',
headers: {
'Content-Type': 'application/json',
},
body: JSON.stringify({
name: 'John Doe',
email: 'mailto:john@example.com'
})
})

Энэ жишээнд бид шинэ хэрэглэгч үүсгэхийн тулд POST хүсэлт илгээж байна. Бид method-ийг POST гэж тодорхойлж, тохирох headers-ийг (толгой хэсэг) тохируулж, илгээхийг хүссэн өгөгдлийг body-д оруулсан. Body нь string (тэмдэгт мөр) байх шаардлагатай тул бид JSON.stringify() ашиглан объектоо JSON string болгон хөрвүүлж байна.

```
3.3 PUT: Сервер дээрх өгөгдлийг шинэчлэхэд ашиглагддаг. PUT method нь сервер дээрх байгаа resource-ийг шинэчлэхэд ашиглагддаг.
```

fetch('https://api.example.com/users/45', {
method: 'PUT',
headers: {
'Content-Type': 'application/json',
},
body: JSON.stringify({
name: 'John Smith',
email: 'mailto:john@example.com'
})
})

Энэ жишээнд бид URL-ийн төгсгөлд заасан ID 45-тэй өгөгдлийг шинэчилж байна. Бид код дээр PUT method ашигласан бөгөөд мөн body-д өгөгдлийг тодорхойлж өгсөн ба энэ нь тухайн өгөгдлийг шинэчлэхэд ашиглагдана.

```
3.4 DELETE: Сервер дээрх өгөгдлийг устгахад ашиглагддаг. DELETE method нь сервер дээрх resource-ийг устгахад ашиглагддаг.
```

fetch('https://api.example.com/users/45', {
method: 'DELETE'
})

Энэ жишээнд бид ID 45-тэй хэрэглэгчийг устгахын тулд DELETE хүсэлт илгээж байна. 4. Promise болон promise chaining

4.1 Promise (промис) нь асинхрон үйлдлийн (asynchronous operation) эцсийн амжилт (completion) эсвэл алдаа (failure) болон түүний үр дүнгийн утгыг илэрхийлдэг объект (object) юм. Promise-ийн утга нь асинхрон үйлдэл дууссаны дараа л тодорхой болдог.
Энд энгийн Promise үүсгэх жишээ байна:

const promise = new Promise((resolve, reject) => {
setTimeout(() => {
resolve('Data received successfully');
}, 2000);
});

```
.then() method нь Promise амжилттай биелэх (fulfilled) үед юу хийхийг тодорхойлоход ашиглагддаг бол .catch() нь гарч болзошгүй алдааг боловсруулахад ашиглагддаг.
Энд Promise-тэй .then() болон .catch() ашиглах жишээ байна:
```

promise
.then(data => {
console.log(data);
})
.catch(error => {
console.error(error);
});

Дээрх жишээнд .then() method нь Promise-оос ирсэн өгөгдлийг console дээр хэвлэхэд ашиглагдаж байгаа бол .catch() method нь гарсан аливаа алдааг хэвлэхэд ашиглагдаж байна.

```
4.2 Promise chaining: Promise-ийн нэг хүчирхэг боломж нь олон асинхрон үйлдлийг дараалан (chain) холбож гүйцэтгэх боломж юм. .then() бүр шинэ Promise буцааж чаддаг бөгөөд ингэснээр та асинхрон үйлдлүүдийг дарааллан гүйцэтгэж чадна.
Энд Promise chaining-ийн жишээ байна:
```

fetch('https://api.example.com/data')
.then(response => response.json())
.then(data => {
console.log(data);
return fetch('https://api.example.com/other-data');
})
.then(response => response.json())
.then(otherData => {
console.log(otherData);
})
.catch(error => {
console.error(error);
});

Дээрх жишээнд бид эхлээд нэг URL-аас өгөгдөл авч, дараа нь эхний response дээр үндэслэн өөр URL-аас өгөгдөл авч, эцэст нь хоёр дахь өгөгдлийг хэвлэж байна.

.catch method нь процессын явцад гарсан аливаа алдааг боловсруулах болно. Энэ нь та алхам бүр дээр алдаа боловсруулах код бичих шаардлагагүй болгодог бөгөөд ингэснээр таны кодыг ихээхэн хялбар болгоно.

5. async/await ашиглан promise боловсруулах

Async/await нь Promise дээр суурилсан бөгөөд асинхрон код бичих болон уншихыг илүү хялбар болгодог.

```
5.1 async: async түлхүүр үг (keyword) нь асинхрон function тодорхойлоход ашиглагддаг. async function нь Promise буцаадаг бөгөөд энэ Promise нь тухайн async function-оос буцсан утгаар resolve (шийдэгдэх) болно.
5.2 await: await түлхүүр үг нь async function-ийн дотор ашиглагддаг бөгөөд Promise resolve (шийдэгдэх) хүртэл function-ийн гүйцэтгэлийг түр зогсоодог. Энэ нь зөвхөн async function-ийн дотор ашиглагдаж болно.
Энд async/await ашиглах жишээ байна:
```

async function delayedGreeting(name) {
console.log("A Messenger entered the chat...");
await new Promise(resolve => setTimeout(resolve, 2000));
console.log(`Hello, ${name}!`);
}

delayedGreeting("Alice");
console.log("First Printed Message!");

Дээрх жишээнд delayedGreeting function нь async function бөгөөд мэндчилгээ хэвлэхээс өмнө 2 секунд хүлээж байна. await түлхүүр үг нь Promise resolve (шийдэгдэх) хүртэл function-ийн гүйцэтгэлийг түр зогсооход ашиглагдаж байна.

```
async/await-ийн хамгийн том давуу талуудын нэг нь try/catch блок ашиглан алдаа боловсруулах (error handling) боломж юм. Доорх жишээг харна уу:
```

async function fetchData() {
try {
const response = await fetch('https://api.example.com/data');
const data = await response.json();
console.log(data);
} catch (error) {
console.error(error);
}
}

fetchData();

Дээрх жишээнд try блок нь алдаа гарч болзошгүй кодыг агуулж байгаа бөгөөд catch блок нь алдаа гарсан тохиолдолд түүнийг боловсруулж байна. Энэ нь алдаа боловсруулах процессыг илүү ойлгомжтой, уншихад хялбар болгодог. 6. async attribute

```
async attribute нь браузерт (browser) HTML баримтыг (HTML document) parse (задлан унших) хийж байх үед script файлыг асинхрон байдлаар татаж авахыг заадаг.
Script татагдаж дууссаны дараа HTML parsing түр зогсож, script гүйцэтгэгдээд, дараа нь HTML parsing дахин үргэлжилдэг.
Та execution (гүйцэтгэл)-ийн дараалал чухал биш бие даасан script-үүдэд async ашиглах хэрэгтэй.
```

7. defer attribute

```
defer attribute нь мөн script-ийг асинхрон байдлаар татаж авдаг боловч script-ийн гүйцэтгэлийг HTML баримт бүрэн parse хийгдсэний дараа хүртэл хойшлуулдаг (defer).

defer script-үүд нь HTML баримт доторх байрлалынхаа дагуу гүйцэтгэгдэх дарааллаа хадгалдаг.

async болон defer attribute-ууд нь inline script-үүдэд (дотор бичигдсэн script) үйлчлэхгүй бөгөөд зөвхөн external script file (гадаад script файл)-уудад ажилладаг гэдгийг анхаарах нь чухал.

async болон defer attribute хоёулаа хамт байвал async attribute нь давуу эрхтэй (takes precedence) байдаг.
```

8. Geolocation API

```
Geolocation API нь вэбсайтуудад хэрэглэгчийн байршлыг (location) хүсэх боломжийг олгодог.

Доорх жишээ нь хэрэглэгчийн одоогийн байршлыг авахад ашиглагддаг API-ийн getCurrentPosition() method-ийг харуулж байна.
```

navigator.geolocation.getCurrentPosition(
(position) => {
console.log("Latitude: " + position.coords.latitude);
console.log("Longitude: " + position.coords.longitude);
},
(error) => {
console.log("Error: " + error.message);
}
);

Энэ кодонд бид getCurrentPosition-ийг дуудаж, байршил амжилттай авсан үед дуудагдах function-ийг дамжуулж байна.

position объект нь олон төрлийн мэдээлэл агуулдаг боловч энд бид зөвхөн latitude (өргөрөг) болон longitude (уртраг)-ийг сонгож авсан.

Хэрэв байршлыг авахад асуудал гарвал error нь console дээр хэвлэгдэнэ.

```
Хэрэглэгчийн нууцлалыг (privacy) хүндэтгэж, зөвхөн шаардлагатай үед л тэдний байршлыг хүсэх нь чухал.
```
