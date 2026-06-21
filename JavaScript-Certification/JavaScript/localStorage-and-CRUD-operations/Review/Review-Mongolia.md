# Local Storage болон CRUD тойм (Review)

1. Persistent Storage

   1.1 Тодорхойлолт (Definition): Persistent storage гэдэг нь цахилгаан унтарсан эсвэл төхөөрөмж дахин асаагдсан ч өгөгдлийг хадгалж, ашиглах боломжтой хэвээр байлгах хадгалалтын арга юм.

2. Create, Read, Update, Delete (CRUD)

   2.1 Create: Энэ нь шинэ өгөгдөл үүсгэх үйл явцыг хэлнэ. Жишээлбэл, web app дээр хэрэглэгч блогт шинэ нийтлэл нэмэх үед.
   2.2 Read: Энэ нь database-аас өгөгдлийг авах үйлдэл юм. Жишээлбэл, та блогийн нийтлэл үзэх эсвэл вэбсайт дээр өөрийн profile-ийг харах үед database-д хадгалагдсан өгөгдлийг татаж (fetch) харуулж байгаа нь read үйлдэл юм.
   2.3 Update: Энэ нь database дахь байгаа өгөгдлийг өөрчлөх үйлдэл юм. Жишээ нь блогийн нийтлэлийг засах эсвэл profile мэдээллээ шинэчлэх.
   2.4 Delete: Энэ нь database-аас өгөгдлийг устгах үйлдэл юм. Жишээлбэл, та блогийн нийтлэл эсвэл account устгах үед delete үйлдэл хийж байна.

3. HTTP Methods

   3.1 Тодорхойлолт (Definition): HTTP гэдэг нь Hypertext Transfer Protocol гэсэн үг бөгөөд web дээр өгөгдөл дамжуулах үндэс суурь юм. HTTP method-ууд нь web дээр resource-ууд дээр ямар үйлдэл хийж болохыг тодорхойлдог. Түгээмэл method-ууд нь GET, POST, PUT, PATCH, DELETE юм.
   3.2 GET Method: Энэ нь серверээс өгөгдөл авахад ашиглагддаг.
   3.3 POST Method: Энэ нь сервер рүү өгөгдөл илгээж шинэ resource үүсгэхэд ашиглагддаг.
   3.4 PUT Method: Энэ нь resource-ийг бүрэн солих замаар шинэчлэхэд ашиглагддаг.
   3.5 PATCH Method: Энэ нь resource-ийг хэсэгчлэн шинэчлэхэд ашиглагддаг.
   3.6 DELETE Method: Энэ нь database-аас бичлэгүүдийг (records) устгахад ашиглагддаг.

4. localStorage болон sessionStorage Properties

   4.1 Web Storage API: Энэ API нь browser-д key-value хосуудыг хадгалах механизмыг олгодог бөгөөд developer-уудад page reload болон session-уудын хооронд ашиглагдах мэдээллийг хадгалах боломжийг олгодог. Web Storage API-ийн хоёр үндсэн бүрэлдэхүүн нь localStorage болон sessionStorage property-ууд юм.
   4.2 localStorage Property: localStorage нь Web Storage API-ийн нэг хэсэг бөгөөд browser цонх хаагдсан эсвэл page refresh хийгдсэн ч өгөгдлийг хадгалж үлдэх боломжийг олгодог. Энэ өгөгдөл нь application эсвэл хэрэглэгч тодорхой устгах хүртэл хадгалагдсаар байна.
   4.3 localStorage.setItem() Method: Энэ method нь localStorage-д key-value хос хадгалахад ашиглагддаг.

```js id="q4x7mt"
localStorage.setItem("username", "Jessica");
```

```
4.4 localStorage.getItem() Method: Энэ method нь localStorage-оос тухайн key-ийн утгыг авахад ашиглагддаг.
```

```js id="r9p2dv"
localStorage.setItem("username", "codingRules");

let username = localStorage.getItem("username");
console.log(username); // codingRules
```

```
4.5 localStorage.removeItem() Method: Энэ method нь localStorage-оос тодорхой key ашиглан элемент устгахад ашиглагддаг.
```

```js id="n6k8xz"
localStorage.removeItem("username");
```

```
4.6 localStorage.clear() Method: Энэ method нь localStorage-д хадгалагдсан бүх өгөгдлийг цэвэрлэхэд ашиглагддаг.
```

```js id="t1m5yc"
localStorage.clear();
```

```
4.7 sessionStorage Property: Энэ нь зөвхөн тухайн session-ийн хугацаанд хадгалагдах өгөгдлийг хадгалдаг бөгөөд browser tab эсвэл цонх хаагдах үед устгагдана.
4.8 sessionStorage.setItem() Method: Энэ method нь sessionStorage-д key-value хос хадгалахад ашиглагддаг.
```

```js id="p8w3la"
sessionStorage.setItem("cart", "3 items");
```

```
4.9 sessionStorage.getItem() Method: Энэ method нь sessionStorage-оос тухайн key-ийн утгыг авахад ашиглагддаг.
```

```js id="c7v2bx"
sessionStorage.setItem("cart", "3 items");

let cart = sessionStorage.getItem("cart");
console.log(cart); // '3 items'
```

```
4.10 sessionStorage.removeItem() Method: Энэ method нь sessionStorage-оос тодорхой key ашиглан элемент устгахад ашиглагддаг.
```

```js id="z5q9rn"
sessionStorage.removeItem("cart");
```

```
4.11 sessionStorage.clear() Method: Энэ method нь sessionStorage-д хадгалагдсан бүх өгөгдлийг цэвэрлэхэд ашиглагддаг.
```

```js id="k2d6hs"
sessionStorage.clear();
```

5. Cookies-тэй ажиллах

   5.1 Тодорхойлолт (Definition): Cookies буюу web cookies эсвэл browser cookies гэж нэрлэгддэг зүйлс нь серверээс хэрэглэгчийн web browser руу илгээдэг жижиг хэмжээний өгөгдлийн хэсгүүд юм. Эдгээр cookies нь хэрэглэгчийн төхөөрөмж дээр хадгалагдаж, дараагийн хүсэлтүүд (subsequent requests)-ийн үед сервер рүү буцаан илгээгддэг. Cookies нь web application-ууд төлөв (state) хадгалах, хэрэглэгчийн мэдээллийг санахад маш чухал үүрэгтэй бөгөөд HTTP нь stateless protocol байдагтай холбоотойгоор онцгой чухал юм.
   5.2 Session Cookies: Эдгээр cookies нь хэрэглэгчийн вэбсайт дээрх session-ийн хугацаанд л хадгалагдана. Хэрэглэгч browser эсвэл tab-ийг хаах үед session cookie устгагдана. Эдгээр cookies нь ихэвчлэн хэрэглэгчийг тухайн visit-ийн турш нэвтэрсэн хэвээр байлгах зэрэг зорилгоор ашиглагддаг.
   5.3 Secure Cookies: Эдгээр cookies нь зөвхөн HTTPS-ээр илгээгддэг бөгөөд дамжуулалтын явцад (in transit) халдагчид (attacker) барьж авах боломжгүй болгодог.
   5.4 HttpOnly Cookies: Эдгээр cookies нь browser дээр ажиллаж буй JavaScript-аар хандах эсвэл өөрчлөх боломжгүй тул cross-site scripting (XSS) халдлагын эсрэг илүү хамгаалалттай байдаг.
   5.5 Set-Cookie Header: Та вэбсайт руу ороход сервер HTTP response-д Set-Cookie header илгээж болно. Энэ header нь таны browser-д тодорхой мэдээлэл бүхий cookie хадгалахыг заадаг. Жишээлбэл, дараагийн удаа таныг танихад (recognize) туслах өвөрмөц ID хадгалж болно.

Та JavaScript ашиглан document.cookie-ээр cookie-г гараар (manually) тохируулж болно:

```js id="f2k9mz"
document.cookie =
  "organization=freeCodeCamp; expires=Fri, 31 Dec 2021 23:59:59 GMT; path=/";
```

Cookie устгахын тулд түүний expiration date-ийг өнгөрсөн хугацаанд тохируулна:

```js id="n3v8qx"
document.cookie = "username=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/";
```

6. Cache API

   6.1 Тодорхойлолт (Definition): Caching гэдэг нь файлуудын хуулбарыг түр хадгалах (temporary storage) байршилд хадгалж, илүү хурдан хандах боломжийг олгох үйл явц юм. Cache API нь network request болон response-уудыг хадгалж, web application-уудыг илүү үр ашигтай ажиллуулах, мөн offline үед ч ажиллах боломжийг олгодог. Энэ нь Service Worker API-ийн өргөн хүрээний хэсэг бөгөөд найдвартай бус эсвэл удаан network нөхцөлд ажиллах чадвартай Progressive Web Apps (PWAs)-ийг бүтээхэд маш чухал юм.

Cache API нь Request болон Response object-уудыг хадгалдаг storage механизм юм. Сервер рүү request илгээгдэх үед application тухайн response-ийг хадгалж, дараа нь шинэ network request хийхийн оронд cache-аас буцаан авах боломжтой. Энэ нь load time-ийг багасгаж, bandwidth хэмнэж, нийт хэрэглэгчийн туршлагыг сайжруулдаг.

```
6.2 Cache Storage: Энэ нь HTTP request болон тэдгээрийн response-уудыг key-value хос хэлбэрээр хадгалахад ашиглагддаг. Энэ нь өмнө нь хүсэлт хийсэн resource-уудыг үр ашигтайгаар буцаан авах боломжийг олгож, дараагийн удаа network-оос дахин авах шаардлагыг багасган, гүйцэтгэлийг сайжруулдаг.
6.3 Cache-Control: Developer-ууд cache-д хадгалагдсан resource хэр удаан хадгалагдах, мөн дахин баталгаажуулах (revalidate) эсвэл шууд cache-аас өгөх эсэхийг тодорхойлж болно.
6.4 Offline Support: Cache API-г ашигласнаар та offline-first web application-ууд бүтээж болно. Жишээлбэл, PWA нь хэрэглэгч network-ээс салсан үед cache-д хадгалагдсан asset-уудыг ашиглан ажиллах боломжтой.
```

7. Negative Patterns болон Client Side Storage

```
7.1 Excessive Tracking: Энэ нь client-side storage (cookies, local storage, session storage гэх мэт)-д хэрэглэгчийн өгөгдлийг хэт их хэмжээгээр, тодорхой зөвшөөрөл (consent) эсвэл бодит хэрэгцээгүйгээр цуглуулах, хадгалах практикийг хэлнэ. Энэ нь ихэвчлэн хэрэглэгчийн зан төлөв, preference, болон үйлдлүүдийг олон сайт эсвэл session-уудын хооронд хянахыг агуулдаг бөгөөд хэрэглэгчийн нууцлалыг (privacy) зөрчих эрсдэлтэй.
7.2 Browser Fingerprinting: Энэ нь cookies эсвэл уламжлалт tracking аргуудын оронд хэрэглэгчийн төхөөрөмж болон browser-ийн өвөрмөц шинж чанарууд дээр үндэслэн хэрэглэгчийг таних, хянахад ашиглагддаг техник юм. Cookies-оос ялгаатай нь, fingerprinting нь хэрэглэгчийн төхөөрөмж дээр хадгалагдахгүй, харин хэрэглэгчийн browser session-ийн өвөрмөц “fingerprint” үүсгэхэд ашиглагдах олон төрлийн мэдээллийг цуглуулдаг.
7.3 Setting Passwords in LocalStorage: Энэ нь илүү ойлгомжтой сөрөг хэв маяг мэт харагдаж болох ч passwords зэрэг мэдрэмтгий (sensitive) өгөгдлийг localStorage-д хадгалах нь аюулгүй байдлын эрсдэлтэй. Local Storage нь шифрлэгдээгүй (not encrypted) бөгөөд амархан хандаж болдог. Тиймээс ямар ч төрлийн мэдрэмтгий өгөгдлийг тэнд хадгалах ёсгүй.
```

8. IndexedDB

```
8.1 Тодорхойлолт (Definition): IndexedDB нь browser дотор structured data хадгалахад ашиглагддаг. Энэ нь орчин үеийн web browser-уудад built-in байдлаар байдаг бөгөөд web app-ууд JavaScript object-уудыг үр ашигтай хадгалах болон авах боломжийг олгодог.
```

9. Cache / Service Workers

```
9.1 Тодорхойлолт (Definition): Service Worker нь background-д ажилладаг script бөгөөд таны web page-ээс тусдаа ажиллана. Энэ нь network request-уудыг intercept хийх, cache-д хандах, мөн web app-ийг offline ажиллах боломжтой болгодог. Энэ нь Progressive Web Apps-ийн гол бүрэлдэхүүн юм.
```
