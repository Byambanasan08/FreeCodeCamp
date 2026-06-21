String-ээс хоосон зай (whitespace) хэрхэн арилгах вэ?

JavaScript-д string-тэй ажиллах үед эхэнд эсвэл төгсгөлд илүүдэл хоосон зай (whitespace) байх тохиолдол их гардаг. Энэ нь харьцуулалт хийх, хадгалах, эсвэл харуулах үед асуудал үүсгэж болдог.

Whitespace гэдэгт зай (space), tab, мөр шилжилт (newline) зэрэг харагддаггүй тэмдэгтүүд орно.

Жишээ:

```id="8vht5c"
let greeting = "   Hello, world!   ";
```

Энд "Hello, world!"-ийн өмнө ба дараа хоосон зай байна.

trim()

`trim()` method нь string-ийн эхлэл болон төгсгөлөөс бүх whitespace-ийг арилгадаг.

Жишээ:

```id="m6wq0r"
let message = "   Hello!   ";
console.log(message); // "   Hello!   "
let trimmedMessage = message.trim();
console.log(trimmedMessage);  // "Hello!"
```

Энд хоёр талын зай арилж, зөвхөн "Hello!" үлдэж байна.

Анхаарах зүйл: string доторх (дунд байрлах) зайг устгахгүй.

trimStart()

`trimStart()` method нь зөвхөн эхлэл хэсгийн whitespace-ийг арилгана.

```id="1clx3g"
let greeting = "   Hello!   ";
let trimmedStart = greeting.trimStart();
console.log(trimmedStart);  // "Hello!   "
```

trimEnd()

`trimEnd()` method нь зөвхөн төгсгөлийн whitespace-ийг арилгана.

```id="q6mnk9"
let greeting = "   Hello!   ";
let trimmedEnd = greeting.trimEnd();
console.log(trimmedEnd);  // "   Hello!"
```

Дүгнэж хэлбэл:

* `trim()` → эхлэл ба төгсгөлийн зайг арилгана
* `trimStart()` → зөвхөн эхлэлээс арилгана
* `trimEnd()` → зөвхөн төгсгөлөөс арилгана

Эдгээр method-ууд нь хэрэглэгчийн оруулсан өгөгдлийг цэвэрлэх, string-үүдийг зөв харьцуулах, болон текстийг стандарт хэлбэрт оруулахад маш чухал юм.
