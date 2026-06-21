How Does the Debugger Statement Work?

debugger statement хэрхэн ажилладаг вэ?

---

debugger statement нь JavaScript-ийн хүчирхэг хэрэгсэл бөгөөд таны кодыг тодорхой мөр дээр түр зогсоож, програм дотор юу болж байгааг шалгах боломжийг олгодог. Зөв ашиглавал debugger statement нь ямар нэг зүйл яагаад зөв ажиллахгүй байгааг ойлгоход зарцуулах цагийг ихээхэн хэмнэдэг.

JavaScript таны кодыг дээрээс доош дарааллаар гүйцэтгэдэг. JavaScript кодыг гүйцэтгэж байхдаа debugger statement-т хүрмэгц тухайн мөр дээр шууд execution-ийг зогсооно. Энэ нь танд хувьсагчдыг шалгах, функцүүдийг хянах, мөн кодын урсгалыг ерөнхийд нь ажиглах боломжийг олгодог.

Үүний ачаар та яг юу зөв, юу буруу байгааг тодорхой харж чадна. Гэхдээ энэ нь зөвхөн таны browser-ийн developer tools нээлттэй үед л ажиллана. Үгүй бол debugger statement үл тоомсорлогдож, код хэвийн үргэлжилж ажиллана.

Мөн debugger statement ашиглах үед орчин үеийн browser-ууд тухайн заасан мөр дээр кодын execution-ийг түр зогсоодог. Түүнчлэн play товч дарж execution-ийг үргэлжлүүлэх боломжтой байдаг, харин хуудсыг автоматаар дахин ачааллахгүй, зөвхөн гараар trigger хийсэн тохиолдолд л reload хийгдэнэ.

debugger statement-ийг ашиглахын тулд код зогсохыг хүссэн мөр дээр байрлуулна. Дараах нь жишээ юм:

```js id="r6p3nx"
let firstNumber = 5;
let secondNumber = 10;
debugger; // Code execution pauses here
let sum = firstNumber + secondNumber;
console.log(sum);
```

Энэ жишээнд, хэрэв код ажиллахаас өмнө console нээгээгүй байж байгаад дараа нь нээвэл тэнд 15 харагдана. Харин console нээлттэй үед хуудсыг дахин ачаалбал execution түр зогсож, та кодыг шалгах боломжтой болно.

Дараах нь арай илүү төвөгтэй жишээ юм:

```js id="q8t4vk"
function calculateTotalPrice(price, discountPercentage) {
 debugger
 let discountAmount = (price * discountPercentage) / 100
 let totalPrice = price - discountAmount

 console.log(`Original Price: ${price}`)
 console.log(`Discount Amount: ${discountAmount}`)
 console.log(`Total Price after Discount: ${totalPrice}`)

 return totalPrice
}

let price = 100
let discount = 15

let finalPrice = calculateTotalPrice(price, discount)
console.log(`Final Price: ${finalPrice}`);
```

Энэ жишээнд debugger statement нь calculateTotalPrice функцийн эхэнд байрласан байна. Функц дуудагдах үед execution тухайн хэсэг дээр түр зогсоно.

Хэрэв console нээлттэй үед хуудсыг дахин ачаалбал хуудас дахин дахин ачаалж байгаа мэт харагдах бөгөөд энэ нь кодын execution зөвхөн түр зогсож байгаа болохоос бүрэн зогсоогүйг илтгэнэ. Хэрэв execution-ийг үргэлжлүүлэхийг хүсвэл play товчийг дарна.

Та JavaScript програмуудаа цаашид хөгжүүлэхдээ debugger statement-ийг ашиглан кодын урсгалыг илүү сайн ойлгох, хувьсагчдыг бодит цаг дээр шалгах, мөн алдаа гарч байгаа хэсгийг хурдан олох боломжтой.
