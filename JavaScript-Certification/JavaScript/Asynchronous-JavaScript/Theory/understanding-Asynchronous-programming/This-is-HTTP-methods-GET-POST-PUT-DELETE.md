How Does the Fetch API Work with Common HTTP Methods and res.json()?

Өмнөх хичээл дээр бид Fetch API гэж юу болох болон хэрхэн ашиглахыг үзсэн. Энэ хичээл дээр бид Fetch API-ийн GET, POST, PUT болон DELETE HTTP method-уудын талаар ярилцана.

Хамгийн түгээмэл HTTP method болох GET method-оос эхэлье. Энэ нь серверээс өгөгдөл (data) авахад ашиглагддаг. Та fetch()-ийг method заалгүй ашиглах үед анхдагчаар (default) GET болдог.

```javascript
fetch('https://api.example.com/data')
```

Энэ код дээр бид [https://api.example.com/data](https://api.example.com/data) руу GET хүсэлт (GET request) хийж байна. Одоо анхаарах зүйл бол та энэ өгөгдлийг шууд ашиглаж болохгүй, эхлээд response-ийг JSON формат руу хөрвүүлэх шаардлагатай. Зөвхөн дараа нь та үүнийг өөрийн төслийн хаана ч ашиглаж болно. Үүнийг хэрхэн хийх жишээг харъя:

```javascript
fetch('https://api.example.com/data')
  .then(response => response.json())
  .then(data => console.log(data))
```

Энэ код дээр Fetch API-аас ирж буй response нь Promise бөгөөд бид .then handler ашиглан response-ийг JSON формат руу хөрвүүлж байна. Өмнөх хичээл дээр та Promise гэдэг нь асинхрон процессын (asynchronous process) эцсийн гүйцэтгэл (completion) эсвэл алдаа (failure)-г илэрхийлдэг object бөгөөд түүний утгыг агуулдаг гэдгийг сурсан.

Promise-ийн утга нь promise үүсэх үед тодорхой биш байдаг. Энэ нь асинхрон процесс дууссаны дараа л тодорхой болдог. Бид fetch дуудлагад хоёр .then handler-ийг холбож (chain) байгаа нь promise chaining гэж нэрлэгддэг бөгөөд энэ талаар дараагийн хичээлд үзнэ.

Одоог хүртэл бид серверээс нөөц (resources) авч байсан. Харин сервер рүү өгөгдөл илгээж болдгийг та мэдэх үү? POST method нь сервер рүү өгөгдөл илгээж шинэ нөөц (resource) үүсгэхэд ашиглагддаг. Сервер дээр өгөгдөл үүсгэхэд ашиглах POST method-ийн жишээг харъя:

```javascript
fetch('https://api.example.com/users', {
  method: 'POST',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    name: 'John Doe',
    email: 'john@example.com'
  })
})
```

Энэ жишээнд бид шинэ хэрэглэгч үүсгэхийн тулд POST хүсэлт илгээж байна. Бид method-ийг POST гэж зааж, тохирох headers-ийг тохируулж, илгээх өгөгдлөө body-д оруулсан. Body нь string байх шаардлагатай тул бид JSON.stringify()-ийг ашиглан object-оо JSON string болгон хөрвүүлж байна.

PUT method нь сервер дээрх аль хэдийн байгаа (existing) нөөцийг шинэчлэхэд (update) ашиглагддаг. Жишээ нь:

```javascript
fetch('https://api.example.com/users/45', {
  method: 'PUT',
  headers: {
    'Content-Type': 'application/json',
  },
  body: JSON.stringify({
    name: 'John Smith',
    email: 'john@example.com'
  })
})
```

Энэ жишээнд URL-ийг анхааралтай харвал төгсгөлд нь 45 гэж байна. Энэ нь ихэвчлэн шинэчлэх гэж буй өгөгдлийг таних өвөрмөц ID (unique ID) болгон ашиглагддаг. Бид код дээр PUT method ашиглаж, мөн шинэчлэх өгөгдлөө body-д оруулсан.

DELETE method нь серверээс нөөц (resource) устгахад ашиглагддаг. Жишээ нь:

```javascript
fetch('https://api.example.com/users/45', {
  method: 'DELETE',
})
```

Энэ код дээр бид DELETE method-ийг ашиглаж, мөн URL-ийн төгсгөлд ID өгч устгах шаардлагатай өгөгдлийг тодорхойлж байна.
