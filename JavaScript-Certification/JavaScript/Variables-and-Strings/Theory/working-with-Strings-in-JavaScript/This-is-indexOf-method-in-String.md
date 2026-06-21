String дотор substring-ийн байрлалыг хэрхэн олох вэ?

JavaScript-д string-тэй ажиллах үед заримдаа том string дотор тодорхой substring (дэд string)-ийн байрлалыг олох шаардлага гардаг.

Substring гэдэг нь том string дотор агуулагдсан тэмдэгтүүдийн дараалал юм. Жишээ нь "hello world" string-д "hello" болон "world" нь substring-ууд юм.

Substring-ийн байрлалыг олохын тулд `indexOf()` method-ийг ашиглана. `indexOf()` нь string доторх substring-ийг хайж, эхний тааралдсан байрлалын index-ийг буцаадаг.

Хэрэв substring олдвол тухайн байрлалын index-ийг буцаана. Харин олдохгүй бол -1 буцаана.

`indexOf()` нь хоёр аргумент авдаг:

* Эхнийх нь хайх substring
* Хоёр дахь нь (заавал биш) хайлтыг эхлүүлэх байрлал

Argument гэдэг нь function эсвэл method дуудах үед өгдөг утга юм.

Жишээ:

```id="m3ffcb"
let sentence = "JavaScript is awesome!";
let position = sentence.indexOf("awesome!");
console.log(position); // 14
```

Энд "awesome!" нь 14-р index дээр эхэлж байгаа тул 14 буцааж байна.

Substring байхгүй тохиолдолд:

```id="g5d7sa"
let sentence = "JavaScript is awesome!";
let position = sentence.indexOf("fantastic");
console.log(position); // -1
```

"fantastic" байхгүй тул -1 буцаана.

Мөн хайлтыг тодорхой байрлалаас эхлүүлж болно:

```id="48xg0h"
let sentence = "JavaScript is awesome, and JavaScript is powerful!";
let position = sentence.indexOf("JavaScript", 10);
console.log(position); // 27
```

Энд хайлт 10-р index-ээс эхэлж байгаа тул хоёр дахь "JavaScript" олдож байна.

Анхаарах зүйл:

`indexOf()` нь case-sensitive буюу том, жижиг үсгийг ялгадаг.

```id="klb0re"
console.log("freeCodeCamp".indexOf("F")); // -1
```

"F" том үсэг string дотор байхгүй тул -1 буцаана.

Дүгнэж хэлбэл:

* `indexOf()` нь substring-ийн байрлалыг олдог
* Олдвол index, олдохгүй бол -1 буцаана
* Хайлтыг тодорхой байрлалаас эхлүүлж болно
* Том, жижиг үсгийг ялгадаг

`indexOf()` нь substring байгаа эсэхийг шалгах болон байрлалыг тодорхойлоход маш хэрэгтэй юм.
