# What Are Promises, and How Does Promise Chaining Work?

Promise нь асинхрон үйлдлийн (asynchronous operation) эцсийн гүйцэтгэл (completion) эсвэл алдаа (failure)-г илэрхийлдэг object юм. Эхэндээ энэ нь pending төлөвт байдаг. Дараа нь үйлдэл амжилттай болвол fulfilled төлөв рүү, эсвэл алдаа гарвал rejected төлөв рүү шилждэг. Promise үүсгэх жишээг харъя:

```javascript
const aPromise = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve("Operation successful!");
  }, 1000);
});
```

Энэ жишээнд бид setTimeout ашиглан асинхрон үйлдлийг дуурайлгасан promise үүсгэж байна. Нэг секундын дараа promise нь "Operation successful!" гэсэн мессежтэйгээр resolve хийгдэнэ.

Promise-тэй ажиллах өөр нэг арга нь .then болон .catch method-уудыг ашиглах юм.

.then() method нь promise fulfilled болсон үед юу хийхийг заахад ашиглагддаг бол, .catch() нь гарч болох алдааг (error) боловсруулахад ашиглагддаг. Одоо .then болон .catch-ийг манай promise дээр хэрхэн ашиглахыг харъя:

```javascript
aPromise
  .then((result) => {
    console.log(result); // Outputs: "Operation successful!"
  })
  .catch((error) => {
    console.error(error);
  });
```

Энэ код дээр promise fulfilled болох үед юу хийх заавар (instructions)-д, .then() руу дамжуулсан function нь promise-ийн resolved утгыг авч дуудагдана. Хэрэв алдаа гарвал, .catch() руу дамжуулсан function дуудагдана.

Одоо promise chaining-ийн талаар ярья. Promise-ийн хүчирхэг боломжуудын нэг нь олон асинхрон үйлдлийг дарааллуулан (chain) холбож чаддаг явдал юм. .then() бүр шинэ promise буцааж чаддаг тул та асинхрон үйлдлүүдийг нэгнийх нь дараа нөгөөг гүйцэтгэх байдлаар гүйцэтгэж болно. Жишээ нь:

```javascript
fetch("https://api.example.com/data")
  .then((response) => response.json())
  .then((data) => {
    console.log(data);
    return fetch("https://api.example.com/data2");
  })
  .then((response) => response.json())
  .then((data2) => console.log(data2))
  .catch((error) => console.error("Error:", error));
```

Энэ жишээнд бид хоёр API дуудлагыг дарааллан хийж байна. Эхний .then() нь response-ийг JSON болгон хөрвүүлнэ. Хоёр дахь .then() нь өгөгдлийг console дээр хэвлээд дараагийн API дуудлагыг хийнэ. Гурав дахь .then() нь хоёр дахь API дуудлагын response-ийг JSON болгон хөрвүүлнэ, харин дөрөв дэх .then() нь тэр өгөгдлийг хэвлэнэ. Хэрэв энэ гинжин холбооны (chain) аль ч шатанд алдаа гарвал, төгсгөлд байгаа .catch() түүнийг барьж авна.

Анхаарах нэг чухал зүйл бол .catch() нь гинжин холбооны өмнөх бүх алхмуудаас гарсан алдааг барьж авдаг. Энэ нь алхам бүр дээр тус тусад нь error handling хийх шаардлагагүй болгодог тул таны кодыг ихээхэн хялбар болгодог.
