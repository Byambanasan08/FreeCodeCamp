String-ийн хэсгийг өөр string-ээр хэрхэн солих вэ?

JavaScript-д string-тэй ажиллах үед зарим хэсгийг өөр текстээр солих шаардлага гардаг.

Жишээ нь URL өөрчлөх, огнооны формат засах, эсвэл хэрэглэгчийн оруулсан алдаатай текстийг засах гэх мэт.

Үүнийг хийхэд `replace()` method ашигладаг.

`replace()` method нь string доторх тодорхой утгыг хайж, өөр утгаар сольж, шинэ string буцаадаг. Эх string өөрчлөгдөхгүй (immutable).

Синтакс:

```id="d3k8f0"
string.replace(searchValue, newValue);
```

* `searchValue` → хайх утга (string эсвэл regex байж болно)
* `newValue` → орлуулах утга

Жишээ:

```id="7r9k1x"
let text = "I love JavaScript!";
let newText = text.replace("JavaScript", "coding");

console.log(newText);  // "I love coding!"
```

Энд "JavaScript"-ийг "coding"-оор сольж байна.

Анхаарах зүйл:

`replace()` нь case-sensitive буюу том, жижиг үсгийг ялгадаг.

```id="6u2w9m"
let sentence = "I enjoy working with JavaScript.";
let updatedSentence = sentence.replace("javascript", "coding");

console.log(updatedSentence);  // өөрчлөгдөхгүй
```

"javascript" (жижиг j) нь "JavaScript"-тай таарахгүй тул солигдохгүй.

Мөн default байдлаар зөвхөн эхний тааралдсан хэсгийг л солино:

```id="p5x8nv"
let phrase = "Hello, world! Welcome to the world of coding.";
let updatedPhrase = phrase.replace("world", "universe");

console.log(updatedPhrase);
// "Hello, universe! Welcome to the world of coding."
```

Зөвхөн эхний "world" солигдсон байна.

Дүгнэж хэлбэл:

* `replace()` нь string-ийн хэсгийг солиход ашиглагдана
* Шинэ string буцаадаг, эх string өөрчлөгдөхгүй
* Том, жижиг үсгийг ялгана
* Анхдагчаар зөвхөн эхний тааралтыг солино

`replace()` нь тэмдэгт, үг, эсвэл илүү нарийн загвар (regex)-аар string өөрчлөхөд маш хэрэгтэй method юм.
