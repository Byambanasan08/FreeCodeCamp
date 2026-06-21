 removeEventListener арга хэрхэн ажилладаг вэ?

Өмнөх хичээлээр та `addEventListener()` аргыг ашиглан "click" болон "input" үйл явдлуудтай ажиллаж сурсан. Энэ хичээлээр та `removeEventListener()` аргыг ашиглан event listener-ийг хэрхэн устгах талаар сурах болно.

`removeEventListener()` арга нь өмнө нь `addEventListener()`-ээр элементэд нэмсэн event listener-ийг устгахад ашиглагддаг. Энэ нь тухайн элемент дээрх тодорхой үйл явдлыг сонсохоо зогсоохыг хүссэн үед маш хэрэгтэй байдаг.



`removeEventListener()` аргын үндсэн синтакс:

```javascript
element.removeEventListener("event", listener);
```

`addEventListener()`-тэй яг адилхан `removeEventListener()` арга нь хоёр аргумент авдаг: устгахыг хүсэж буй **event** болон өмнө нь нэмсэн **listener** функц.

Мөн `removeEventListener()`-д дамжуулж болох нэмэлт, сонголтын (optional) гуравдагч аргумент байдаг. Энэ нь `options` эсвэл `useCapture` байж болно.
* **options:** Энэ нь event listener-ийн тохиргоог (жишээ нь, passive эсвэл нэг удаа ажиллах - once эсэх) заадаг объект юм.
* **useCapture:** Энэ нь event-ийг "тархах" (propagation) үе шатны явцад барьж авах эсэхийг заадаг Boolean утга юм.

Ихэнх тохиолдолд танд зөвхөн "event" болон "listener" аргументуудыг дамжуулахад л хангалттай.

#### Хэрхэн ажилладагийг жишээгээр ойлгоцгооё:

Эхлээд HTML болон CSS хэсгийг бэлдье:

```html
<link rel="stylesheet" href="styles.css" />
<h1>Event Listener examples</h1>
<button id="btn">Change background color</button>
```

```css
button {
  background: linear-gradient(135deg, #4da3ff, #007bff);
  color: white;
  border: none;
  padding: 12px 20px;
  border-radius: 8px;
  font-size: 16px;
  font-weight: 500;
  cursor: pointer;
  transition: all 0.25s ease;
  box-shadow: 0 4px 10px rgba(0, 123, 255, 0.2);
}
```

Хэрэв бид арын дэвсгэр өнгийг саарал болон цэнхэр өнгөний хооронд шилжүүлэхийг (toggle) хүсвэл үүнд зориулж event listener ашиглаж болно.
Эхлээд бид `body` элемент болон `button` элементэд хандах хэрэгтэй:

```javascript
const bodyEl = document.querySelector("body");
const btn = document.getElementById("btn");
```

Дараа нь саарал болон цэнхэр өнгийг сэлгэх үүрэгтэй функцийг үүсгэнэ:

```javascript
let isBgColorGrey = true;

function toggleBgColor() {
  bodyEl.style.backgroundColor = isBgColorGrey ? "blue" : "grey";
  isBgColorGrey = !isBgColorGrey;
}
```

Бид одоогийн өнгийг хянахын тулд `isBgColorGrey` гэсэн Boolean хувьсагчийг ашиглаж байна. Хэрэв саарал байвал цэнхэр болгож, эсрэгээр нь сольж байна.
Одоо товчлуур дарагдах үед `toggleBgColor` функцийг дуудах event listener-ийг нэмье:

```javascript
btn.addEventListener("click", toggleBgColor);
```

Одоо товчлуур дарах бүрт өнгө солигдох болно. Одоо HTML-ээ шинэчилж, дээр нь хулгана аваачихад (hover) дээрх event listener-ийг устгах үүрэгтэй параграф элемент нэмье:

```html
<p id="para">MouseOver this text to remove the event listener</p>
```

Параграф дээр хулгана очих үед event listener-ийг устгахын тулд бид параграф элементэд "mouseover" event нэмнэ. Уг функц дотор товчлуураас event listener-ийг устгах кодыг бичнэ:

```javascript
const para = document.getElementById("para");
const btn = document.getElementById("btn");

para.addEventListener("mouseover", () => {
  // Товчлуурын click event-ийг сонсохоо зогсоож байна
  btn.removeEventListener("click", toggleBgColor);
});
```

Параграф дээр хулгана очих үед товчлуурын "click" event listener устах бөгөөд товчлуур дээр дарахад өнгө дахин өөрчлөгдөхгүй болно.



#### Бүрэн жишээ код:

```javascript
const bodyEl = document.querySelector("body");
const para = document.getElementById("para");
const btn = document.getElementById("btn");
let isBgColorGrey = true;

function toggleBgColor() {
  bodyEl.style.backgroundColor = isBgColorGrey ? "blue" : "grey";
  isBgColorGrey = !isBgColorGrey;
}

// Эхлээд нэмнэ
btn.addEventListener("click", toggleBgColor);

// Параграф дээр очиход устгана
para.addEventListener("mouseover", () => {
  btn.removeEventListener("click", toggleBgColor);
});
```

#### Бодит амьдрал дээрх жишээ:

`removeEventListener()`-ийг хэзээ ашиглах вэ?
* Вэб аппликейшн дээр **Модал цонх (modal)** хаагдах үед түүнтэй холбоотой үйлдлүүдийг зогсоох.
* Хэрэглэгч системээс **гарах (logout)** үед хувийн мэдээлэлтэй холбоотой event-үүдийг идэвхгүй болгох.

---

**Чухал санамж:** `removeEventListener` ажиллахын тулд та заавал **нэрлэсэн функц (named function)** ашиглах ёстой. Хэрэв та `addEventListener`-д шууд аноним функц (anonymous function) бичсэн бол түүнийг дараа нь устгах боломжгүй байдаг. Энэ тал дээр асуух зүйл байна уу?