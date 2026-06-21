### WAI-ARIA-гийн зорилго юу вэ, мөн хэрхэн ажилладаг вэ?

Статик (static) контентыг хүртээмжтэй болгох нь харьцангуй энгийн байж болох ч, **динамик (dynamic) контент** нь илүү төвөгтэй байдаг. Энэ үед **WAI-ARIA** хэрэгтэй болдог.

Одоо WAI-ARIA гэж юу болох, түүний зорилго, хэрхэн ажилладаг болон зарим жишээг авч үзье.

---

**WAI-ARIA** гэдэг нь **Web Accessibility Initiative – Accessible Rich Internet Applications** гэсэн үгийн товчлол юм. Энэ нь динамик контент болон UI (User Interface) бүрэлдэхүүн хэсгүүдийн хүртээмжийг сайжруулахад чиглэсэн **тодорхойлолт (specification)** юм.

WCAG болон WAI-ARIA хоёр адил зүйл биш гэдгийг анхаарах хэрэгтэй.

* **WCAG** нь вэбийн хүртээмжийн ерөнхий заавар, удирдамжийг өгдөг
* Харин **WAI-ARIA** нь туслах технологи (assistive technologies) ашигладаг хэрэглэгчдэд зориулан динамик, интерактив контентыг хүртээмжтэй болгох **тодорхой дүрэм, механизм**-ийг санал болгодог

Тиймээс WAI-ARIA-гийн **үндсэн зорилго** нь:

> HTML-д анхнаасаа (native) тохирох элемент байхгүй динамик контент болон UI бүрэлдэхүүн хэсгүүдийн хүртээмжийг сайжруулах явдал юм.

---

### WAI-ARIA хэрхэн ажилладаг вэ?

WAI-ARIA нь HTML элементүүдэд нэмэлт **семантик (semantic) мэдээлэл** өгөх боломжтой атрибутуудын цуглуулгыг нэвтрүүлснээр ажилладаг.

Эдгээр атрибутууд нь дараах гурван ангилалд хуваагдана:

* **roles**
* **states**
* **properties**

---

### ARIA role

ARIA role нь тухайн элемент вэб сайт эсвэл вэб аппликейшнд ямар үүрэгтэйг тодорхойлдог.

Жишээ нь, `div` элементэд `button` role оноож болно:

```html
<div role="button">Click Me</div>
```

Ингэснээр та туслах технологид энэ элемент нь **товч (button)** гэдгийг зааж өгч байна.

Гэхдээ **role нь ямар ч функциональ байдал (functionality) нэмдэггүй**. Зөвхөн `div`-д `button` role өгснөөр энэ нь жинхэнэ товч шиг ажиллахгүй.

Товч шиг **харагдаж**, **ажиллахын** тулд та CSS болон JavaScript ашиглах шаардлагатай.

---

### Custom button үүсгэх жишээ (HTML, CSS, JavaScript)

> **ТАЙЛБАР:** CSS болон JavaScript кодыг яг одоо ойлгох гэж санаа зовох хэрэггүй. Та эдгээр хэлнүүдийг дараагийн модулиудад сурах болно.

```html
<link href="styles.css" rel="stylesheet">
<div id="custom-btn" role="button">Click Me</div>
<script src="index.js"></script>
```

```css
#custom-btn {
  display: inline-block;
  padding: 0.4em 1em;
  font-size: 1rem;
  font-family: sans-serif;
  color: buttontext;
  background-color: buttonface;
  border: 1px solid #ccc;
  border-radius: 4px;
  cursor: pointer;
  user-select: none;
  text-align: center;
}

#custom-btn:focus {
  outline: 2px solid Highlight;
  outline-offset: 2px;
}

#custom-btn:active {
  background-color: #ddd;
}
```

```javascript
const button = document.getElementById("custom-btn");

button.addEventListener("click", () => {
  alert("Button clicked!");
});

button.addEventListener("keydown", (e) => {
  if (e.key === "Enter" || e.key === " ") {
    e.preventDefault(); 
    button.click();
  }
});
```

Гэсэн хэдий ч **анхнаасаа HTML-д байдаг `button` элемент** эсвэл `input type="button"`-ийг ашиглах нь **үргэлж илүү сайн сонголт** юм.

---

### ARIA properties

ARIA properties нь элементүүдийн талаар **нэмэлт мэдээлэл** өгдөг.

Жишээ нь, `aria-labelledby` property нь тухайн элементийг тодорхой label-тэй холбох боломж олгодог:

```html
<h2 id="header-id">About freeCodeCamp</h2>
<button id="button-id" aria-labelledby="header-id button-id">Learn More</button>
```

Ингэснээр эдгээр элементүүд нь туслах технологи ашигладаг хэрэглэгчдэд **ойлгомжтой**, **навигейц хийхэд хялбар** болдог.

---

### WAI-ARIA ашиглах зөвлөмж

* Боломжтой үедээ **native HTML** элементүүдийг ашиглаарай — тэдгээр нь анхнаасаа хүртээмжийг сайн дэмждэг
* HTML хүрэлцэхгүй үед л **WAI-ARIA** ашигла
* Screen reader зэрэг туслах технологиор заавал тест хий, эсвэл хөгжлийн бэрхшээлтэй хүмүүсээр туршуул
* ARIA-гийн **state** болон **property**-ууд нь контент өөрчлөгдөх үед **real-time**-аар шинэчлэгдэж байх ёстой
* **ARIA-г хэтрүүлэн ашиглахаас зайлсхий**, учир нь буруу хэрэглэвэл илүү төөрөгдөл үүсгэдэг
