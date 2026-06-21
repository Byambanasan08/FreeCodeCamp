String дотор substring байгаа эсэхийг хэрхэн шалгах вэ?

JavaScript-д string-тэй ажиллах үед тухайн string дотор тодорхой substring (жижиг хэсэг) байгаа эсэхийг шалгах шаардлага их гардаг.

Жишээ нь хэрэглэгчийн оруулсан текст дотор тодорхой үг байгаа эсэхийг шалгах гэх мэт.

Үүнийг шалгах хамгийн энгийн арга бол `includes()` method юм.

`includes()` method нь string дотор тодорхой substring байгаа эсэхийг шалгана. Хэрэв байвал `true`, байхгүй бол `false` буцаана.

Синтакс:

```id="xk1m3a"
string.includes(searchValue);
```

Энд `searchValue` нь хайх substring юм.

Жишээ:

```id="1xkq2z"
let phrase = "JavaScript is awesome!";
let result = phrase.includes("awesome");

console.log(result);  // true
```

Энд "awesome" string дотор байгаа тул `true` буцаана.

Анхаарах зүйл:

`includes()` нь case-sensitive буюу том, жижиг үсгийг ялгадаг.

```id="8xv4yd"
let phrase = "JavaScript is awesome!";
let result = phrase.includes("Awesome");

console.log(result);  // false
```

"Awesome" (том A) нь "awesome" (жижиг a)-тай таарахгүй тул `false` буцаана.

Мөн хайлтыг тодорхой index-ээс эхлүүлж болно:

```id="9n7b2k"
let text = "Hello, JavaScript world!";
let result = text.includes("JavaScript", 7);

console.log(result);  // true
```

Энд хайлт 7-р index-ээс эхэлж байна.

Анхаарах нь:

`includes()` нь зөвхөн `true` эсвэл `false` буцаадаг. Энэ нь substring хаана байрлаж байгааг эсвэл хэдэн удаа давтагдсаныг хэлэхгүй.

Хэрэв байрлал хэрэгтэй бол `indexOf()` зэрэг method ашиглах нь илүү тохиромжтой.

Дүгнэж хэлбэл:

* `includes()` нь substring байгаа эсэхийг шалгана
* Байвал `true`, байхгүй бол `false`
* Том, жижиг үсгийг ялгана
* Хайлтыг тодорхой байрлалаас эхлүүлж болно

Энэ method нь энгийн шалгалт хийхэд маш хэрэгтэй.
