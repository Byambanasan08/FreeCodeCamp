Cookies гэж юу вэ, мөн тэд хэрхэн ажилладаг вэ?

Cookies, мөн web cookies эсвэл browser cookies гэж нэрлэгддэг, нь серверээс (server) хэрэглэгчийн web browser руу илгээдэг жижиг хэмжээний өгөгдлийн хэсгүүд (small pieces of data) юм. Эдгээр cookies нь хэрэглэгчийн төхөөрөмж дээр хадгалагдаж, дараагийн хүсэлтүүд (subsequent requests)-ийн үед сервер рүү буцаан илгээгддэг.

Cookies нь web application-ууд төлөвийг (state) хадгалах, мөн хэрэглэгчийн мэдээллийг санахад маш чухал үүрэгтэй бөгөөд энэ нь HTTP нь stateless protocol байдагтай холбоотойгоор онцгой чухал юм.

Cookies нь хэрэглэгчийн тохиргоо (user preferences), session өгөгдөл (session data), эсвэл tracking мэдээлэл зэрэг төрөл бүрийн мэдээллийг хадгалж чадна.

Cookies нь үргэлж name-value хос (name-value pairs) хэлбэрээр хадгалагддаг. Энэ нь cookie бүр нэр (key) болон түүнд холбогдох утгатай (value) гэсэн үг юм.

Жишээлбэл, cookie нь хэрэглэгчийн session ID-г дараах байдлаар хадгалж болно: sessionId=abc123. Энд key нь sessionId, харин value нь abc123 юм. Browser сервертэй харилцах бүрдээ эдгээр cookies-ийг name-value хос хэлбэрээр илгээдэг.

Хэрэглэгч вэбсайт руу хандах үед сервер HTTP response-д Set-Cookie header-ийг оруулснаар нэг эсвэл хэд хэдэн cookie-г хэрэглэгчийн browser руу илгээж болно. Header гэдэг нь HTTP request эсвэл response-ийн талаар нэмэлт мэдээлэл өгдөг key-value хос юм. Та дараагийн хичээлүүд дээр HTTP request болон response-ийн талаар илүү дэлгэрэнгүй сурах болно.

Cookies тохируулагдсаны дараа browser тэдгээрийг хадгалж, дараагийн ижил domain руу хийсэн бүх хүсэлтүүдэд Cookie header дотор автоматаар оруулж илгээдэг. Энэ нь сервер хадгалагдсан cookies-д хандаж, хэрэглэгчийн session-ийг хадгалах эсвэл preference-уудыг хянах зэрэгт ашиглах боломжийг олгодог.

HTTP response-д cookie хэрхэн тохируулагддаг жишээ:

Set-Cookie: sessionId=abc123; Expires=Wed, 21 Oct 2021 07:28:00 GMT; Secure; HttpOnly

Browser энэ cookie-г хадгалж, дараагийн ижил сервер рүү илгээх хүсэлтүүдэд Cookie header-д оруулж илгээнэ:

Cookie: sessionId=abc123

Дараа нь сервер cookie-г уншиж, хадгалагдсан session ID-г ашиглан хэрэглэгчийн тухай мэдээллийг, жишээлбэл хэрэглэгч нэвтэрсэн эсэхийг тодорхойлж болно.

Одоо cookie-ийн төрөлүүдийг задлан харцгаая.

```
Session Cookies нь хэрэглэгч вэбсайт дээрх session-ийн хугацаанд л хадгалагдана. Хэрэглэгч browser эсвэл tab-ийг хаахад session cookie устгагдана. Эдгээр cookies нь ихэвчлэн хэрэглэгчийг тухайн visit-ийн турш нэвтэрсэн хэвээр байлгах зэрэг зорилгоор ашиглагддаг.

Persistent Cookies нь дуусах хугацаатай (expiration date) бөгөөд тэр хугацаа хүрэх хүртэл хэрэглэгчийн төхөөрөмж дээр хадгалагдсаар байна. Persistent cookies нь ихэвчлэн хэрэглэгчийн тохиргоо эсвэл login мэдээллийг session-уудын хооронд санахад ашиглагддаг.

Secure Cookies нь зөвхөн HTTPS-ээр илгээгддэг бөгөөд дамжуулалтын явцад (in transit) халдагчид (attacker) барьж авах боломжгүй болгодог.

HttpOnly Cookies нь browser дээр ажиллаж буй JavaScript-аар хандах эсвэл өөрчлөх боломжгүй тул cross-site scripting (XSS) халдлагын эсрэг илүү хамгаалалттай байдаг. Cross-site scripting (XSS) халдлага гэдэг нь халдагч web page руу хортой script оруулж, бусад хэрэглэгчид харах үед тухайн script ажиллах явдал юм. Эдгээр script-үүд нь хэрэглэгчийн browser-ийн орчинд (context) ажиллаж, cookies, session өгөгдөл хулгайлах эсвэл хэрэглэгчийн мэдэлгүйгээр хортой үйлдлүүд хийх боломжтой. Cookies-ийг HttpOnly гэж тэмдэглэснээр JavaScript-аар хандахаас хамгаалагдаж, ийм төрлийн халдлагын эрсдэлийг бууруулдаг.
```

Та cookies-ийг серверийн response дээр Set-Cookie header ашиглан эсвэл JavaScript-ийн document.cookie ашиглан үүсгэж болно.

JavaScript ашиглан cookie тохируулах жишээ:

```js id="w6k3sn"
document.cookie = "username=JohnDoe; expires=Fri, 31 Dec 2021 23:59:59 GMT; path=/";
```

Энэ команд нь username нэртэй cookie-г "JohnDoe" утгатайгаар үүсгэж, 2021 оны төгсгөлд дуусах хугацаатай болгоно. Та байгаа cookie-г шинэ утгаар дахин тохируулснаар update хийж болно.

Cookie устгахын тулд түүний expiration date-ийг өнгөрсөн хугацаанд тохируулна:

```js id="v2p8qy"
document.cookie = "username=; expires=Thu, 01 Jan 1970 00:00:00 GMT; path=/";
```

Ингэснээр username cookie browser-оос устгагдана.
