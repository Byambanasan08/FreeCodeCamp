**Submit Event нь Form-уудтай хэрхэн ажилладаг вэ?**

Одоо HTML form дээр submit event хэрхэн ажилладгийг сурцгаая. Эхлээд form-ийг хэрхэн submit хийдгийг ойлгох хэрэгтэй. Form-ийг submit хийх гурван арга байдаг.

Эхнийх нь form дотор type="submit" гэсэн attribute-тэй button дээр хэрэглэгч дарах үед.

Хоёр дахь нь form доторх editable input field дээр хэрэглэгч Enter товч дарах үед.

Гурав дахь нь JavaScript ашиглан form element-ийн requestSubmit() эсвэл submit() method-ийг дуудах үед.

Тэгвэл form submit хийхэд яг юу болдог вэ? Хэд хэдэн зүйл болдог бөгөөд form-ийн behavior нь түүний attribute-уудаас хамаардаг.

Эхний авч үзэх attribute бол action attribute юм. action attribute нь URL эсвэл тухайн domain доторх relative path агуулдаг. Энэ утга нь form өгөгдлийг хаашаа илгээхийг тодорхойлдог. Хэрвээ action attribute тохируулаагүй бол form өгөгдлийг одоогийн page-ийн URL рүү илгээнэ. Жишээ нь:

```html id="c1f9x3"
<form action="https://freecodecamp.org">
  <input type="number" id="input" placeholder="Enter a number" name="number" />
  <button type="submit">Submit</button>
</form>
```

Энэ form submit хийгдэхэд өгөгдлийг freeCodeCamp-ийн homepage рүү илгээнэ, магадгүй ямар ч үйлдэл хийхгүй.

Өөр нэг жишээ, relative path ашигласан form:

```html id="f6v2l8"
<form action="/data">
  <input type="number" id="input" placeholder="Enter a number" name="number" />
  <button type="submit">Submit</button>
</form>
```

Энэ нь одоогийн domain дээрх /data path руу илгээнэ. Манай тохиолдолд [http://127.0.0.1:5500/data](http://127.0.0.1:5500/data) руу илгээнэ.

Form submission хэрхэн ажиллахыг удирдах хоёр дахь attribute бол method attribute юм. Энэ attribute нь GET эсвэл POST гэх мэт HTTP method авдаг бөгөөд action URL руу request илгээхдээ тэр method-ийг ашиглана.

HTTP гэдэг нь Hypertext Transfer Protocol бөгөөд web дээр өгөгдөл дамжуулахад ашиглагддаг.

HTTP method-ууд нь resource дээр ямар үйлдэл хийхийг тодорхойлдог, жишээ нь GET, POST, PUT, DELETE гэх мэт. Та эдгээрийг дараагийн хичээлүүдээр илүү гүнзгий судална.

Хэрвээ method тохируулаагүй бол form анхдагчаар (default) GET request ашиглана. GET request нь ямар нэг өөрчлөлт хийхгүйгээр өгөгдлийг авахад ашиглагддаг бөгөөд параметрүүд нь URL дээр query string хэлбэрээр нэмэгддэг.

Form доторх өгөгдөл нь name=value хос (pair) хэлбэрээр URL encode хийгдэж, action URL-ийн query parameter болгон нэмэгддэг. Жишээ нь, өмнөх form дээр input-д 3342 гэсэн утга оруулбал, form дараах URL-ийг GET хийнэ:

[http://127.0.0.1:5500/data?number=3342](http://127.0.0.1:5500/data?number=3342)

Энэ нь хайлт (search) зэрэг өгөгдөл авах зориулалттай form-д тохиромжтой. Харин хэрэглэгч шинэ өгөгдөл илгээх (жишээ нь бүртгэл хийх) үед POST method ашиглах нь зөв (idiomatic) байдаг. POST method нь сервер рүү өгөгдөл илгээж шинэ resource үүсгэх эсвэл update хийхэд ашиглагддаг.

Одоо method attribute-ийг POST болгоё:

```html id="q8m1xw"
<form action="/data" method="POST">
  <input type="number" id="input" placeholder="Enter a number" name="number" />
  <button type="submit">Submit</button>
</form>
```

POST request илгээх үед request-ийн body дотор өгөгдөл багтдаг. GET-тэй адил URL дээр нэмэгддэггүй, харин [http://127.0.0.1:5500/data](http://127.0.0.1:5500/data) руу POST илгээгдэж, өгөгдөл нь request-ийн body дотор URL-encoded хэлбэрээр байдаг.

URL-encoded form data гэдэг нь form өгөгдлийг name=John+Doe&email=john%40example.com гэх мэт key-value хос бүхий string болгон хувиргаж, тусгай тэмдэгтүүдийг encode хийж, web-ээр аюулгүй дамжуулах хэлбэр юм. Та энэ талаар дараа дэлгэрэнгүй судална.

Хэрвээ та өгөгдлийг URL-encoded хэлбэрээр илгээхийг хүсэхгүй байвал яах вэ?

Form элемент enctype attribute-ийг дэмждэг бөгөөд энэ нь өгөгдлийг ямар encoding-оор илгээхийг тодорхойлдог.

Энэ attribute гурван утга авна:
application/x-www-form-urlencoded (default, өгөгдлийг URL-encoded хэлбэрээр илгээнэ),
text/plain (өгөгдлийг энгийн текст хэлбэрээр name=value хосоор, мөрөөр тусгаарлаж илгээнэ),
multipart/form-data (файл upload хийх form-д зориулагдсан).

Энэ хичээлээр та form submit хийх үндсэн ойлголтуудыг сурлаа. Дараагийн хичээлүүдэд form болон серверийн харилцааг илүү гүнзгий судлах болно.
