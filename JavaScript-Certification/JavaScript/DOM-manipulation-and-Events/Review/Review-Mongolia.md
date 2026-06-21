# DOM Manipulation and Click Events with JavaScript Review

---

1. DOM болон Web API-тай ажиллах

1.1 API: API (Application Programming Interface) нь програм хангамжууд хоорондоо харилцаж, өгөгдөл солилцох боломжийг олгодог дүрэм, протоколуудын цогц юм.
1.2 Web API: Web API нь вэб аппликейшнд зориулан тусгайлан бүтээгдсэн байдаг. Эдгээр API-уудыг ихэвчлэн хоёр үндсэн төрөлд хуваадаг: browser API болон third-party API.
1.2.1 Browser APIs: Эдгээр API нь браузераас өгөгдлийг ил гаргадаг. Вэб хөгжүүлэгчийн хувьд та JavaScript ашиглан энэ өгөгдөлд хандаж, өөрчлөлт хийж чадна.
1.2.2 Third-Party APIs: Эдгээр нь анхнаасаа браузерт суулгагдсан байдаггүй. Та тэдгээрийн кодыг ямар нэг аргаар авах хэрэгтэй болдог. Ихэвчлэн тэд өөрсдийн үйлчилгээ хэрхэн ашиглах талаар дэлгэрэнгүй баримт бичигтэй байдаг. Жишээ нь Google Maps API бөгөөд та үүнийг ашиглан вебсайт дээрээ интерактив газрын зураг харуулж болно.
1.3 DOM: DOM нь Document Object Model гэсэн үг. Энэ нь HTML баримт бичигтэй харилцах боломж олгодог програмчлалын интерфэйс юм. DOM ашиглан та веб хуудсан дээр элемент нэмэх, өөрчлөх, устгах боломжтой. DOM модны үндэс нь html элемент юм. Энэ нь HTML баримт бичгийн бүх агуулгыг агуулсан хамгийн дээд түвшний контейнер юм. Бусад бүх node-ууд энэ root node-оос салбарласан байдаг. Дараа нь энэ root node-оос доош hierarchy дотор бусад node-ууд байрлана. Parent node гэдэг нь бусад элементүүдийг агуулдаг элемент юм. Child node гэдэг нь өөр нэг элемент дотор агуулагдаж буй элемент юм.
1.4 navigator Interface: Энэ нь браузерын орчны талаар мэдээлэл өгдөг, жишээ нь user agent string, платформ, браузерын хувилбар гэх мэт. User agent string нь ашиглаж буй браузер болон үйлдлийн системийг тодорхойлдог текст мөр юм.
1.5 window Interface: Энэ нь DOM баримт бичгийг агуулсан браузерын цонхыг илэрхийлдэг. Мөн цонхны хэмжээг өөрчлөх, шинэ цонх нээх, өөр URL руу шилжих зэрэг үйлдлүүдийг хийх боломж олгодог method болон property-уудыг агуулдаг.

---

2. querySelector(), querySelectorAll(), getElementById() method-уудтай ажиллах\*\*

2.1 getElementById() Method: Энэ method нь заасан id-тай HTML элементтэй холбоотой object-ийг авахад ашиглагддаг. id нь HTML баримт бичигт давтагдашгүй байх ёстой тул энэ method зөвхөн нэг Element object буцаана.

```
<div id="container"></div>
<script src="./index.js"></script>

const container = document.getElementById("container");
console.log(container)
```

2.2 querySelector() Method:\*\* Энэ method нь өгөгдсөн CSS selector-т таарах HTML баримт бичгийн эхний элементийг авахад ашиглагддаг.

```
<section class="section"></section>
<script src="./index.js"></script>

const section = document.querySelector(".section");
console.log(section)
```

2.3 querySelectorAll() Method: Энэ method нь тодорхой CSS selector-т таарах бүх DOM элементүүдийн жагсаалтыг авахад ашиглагддаг.

```
<ul class="ingredients">
  <li>Sugar</li>
  <li>Milk</li>
  <li>Eggs</li>
</ul>
<script src="./index.js"></script>

const ingredients = document.querySelectorAll('ul.ingredients li');
console.log(ingredients)
```

---

3. innerText(), innerHTML(), createElement(), textContent() method-уудтай ажиллах

3.1 innerHTML Property: Энэ нь Element-ийн property бөгөөд HTML markup-ийн хэсгийг тохируулах эсвэл шинэчлэхэд ашиглагддаг.

```
<div id="container">
  <!-- Add new elements here -->
</div>
<script src="./index.js"></script>

const container = document.getElementById("container");
container.innerHTML = '<ul><li>Cheese</li><li>Tomato</li></ul>';
```

3.2 createElement Method: HTML элемент үүсгэхэд ашиглагддаг.

```
const img = document.createElement("img");
```

3.3 innerText: HTML элементийн болон түүний descendant-уудын харагдах текст агуулгыг илэрхийлдэг.

```
<div id="container">
  <p>Hello, World!</p>
  <p>I'm learning JavaScript</p>
</div>
<script src="./index.js"></script>

const container = document.getElementById("container");
console.log(container.innerText);
```

3.4 textContent: Элементийн бүх текст агуулгыг (түүний descendant-ууд доторх бүх текстийг) буцаадаг.

```
<div id="container">
  <p>Hello, World!</p>
  <p>I'm learning JavaScript</p>
</div>
<script src="./index.js"></script>

const container = document.getElementById("container");
console.log(container.textContent);
```

---

4. appendChild() болон removeChild() method-уудтай ажиллах

4.1 appendChild() Method: Энэ method нь тодорхой parent node-ийн children жагсаалтын төгсгөлд шинэ node нэмэхэд ашиглагддаг.

```
<ul id="desserts">
  <li>Cake</li>
  <li>Pie</li>
</ul>
<script src="./index.js"></script>

const dessertsList = document.getElementById("desserts");
const listItem = document.createElement("li");

listItem.textContent = "Cookies";
dessertsList.appendChild(listItem);
```

4.2 removeChild() Method: DOM-оос node устгахад ашиглагддаг.

```
<section id="example-section">
  <h2>Example sub heading</h2>
  <p>first paragraph</p>
  <p>second paragraph</p>
</section>
<script src="./index.js"></script>

const sectionEl = document.getElementById("example-section");
const lastParagraph = document.querySelector("#example-section p:last-of-type");

sectionEl.removeChild(lastParagraph);
```

---

5. setAttribute() Method-тэй ажиллах

5.1 Тодорхойлолт: Энэ method нь өгөгдсөн элементэд attribute тохируулахад ашиглагддаг. Хэрэв attribute аль хэдийн байгаа бол утга нь шинэчлэгдэнэ. Үгүй бол шинэ attribute утгатайгаар нэмэгдэнэ.

```
<p id="para">I am a paragraph</p>
<script src="./index.js"></script>

const para = document.getElementById("para");
para.setAttribute("class", "my-class");
```

---

6. Event Object

6.1 Тодорхойлолт: Event object нь хэрэглэгч таны веб хуудстай ямар нэг байдлаар харилцах үед үүсдэг payload юм. Энэ харилцаа нь товч дарах, input дээр focus хийх, гар утсаа сэгсрэх гэх мэт юу ч байж болно. Бүх Event object-ууд type property-той байдаг. Энэ property нь ямар төрлийн event payload-ийг үүсгэсэн болохыг харуулдаг (жишээ нь keydown эсвэл click). Эдгээр утгууд нь addEventListener() method-д дамжуулдаг утгуудтай ижил байдаг бөгөөд та Event object-ийг барьж авч ашиглаж чадна.

---

7. addEventListener() болон removeEventListener() method-ууд

7.1 addEventListener Method: Энэ method нь event сонсох (listen хийх) зориулалттай. Энэ нь хоёр аргумент авна: сонсохыг хүсэж буй event болон event тохиолдох үед дуудагдах function. Түгээмэл жишээ нь click, input, change event-ууд юм.

```
<button id="btn">Click Me</button>
<script src="./index.js"></script>

const btn = document.getElementById("btn");

btn.addEventListener("click", () => alert("You clicked the button"));
```

7.2 removeEventListener() Method: Энэ method нь өмнө нь addEventListener() ашиглан нэмсэн event listener-ийг устгахад ашиглагддаг. Энэ нь тодорхой event-ийг сонсохоо зогсоох үед хэрэгтэй.

```
<body>
  <p id="para">Hover over me to disable the button's click event</p>
  <button id="btn">Toggle Background Color</button>
</body>
<script src="./index.js"></script>

const bodyEl = document.querySelector("body");
const para = document.getElementById("para");
const btn = document.getElementById("btn");

let isBgColorGrey = true;

function toggleBgColor() {
  bodyEl.style.backgroundColor = isBgColorGrey ? "blue" : "grey";
  isBgColorGrey = !isBgColorGrey;
}

btn.addEventListener("click", toggleBgColor);

para.addEventListener("mouseover", () => {
  btn.removeEventListener("click", toggleBgColor);
});
```

8. Inline Event Handlers: Inline event handler нь HTML элемент дээрх тусгай attribute бөгөөд event тохиолдох үед JavaScript код ажиллуулахад ашиглагддаг. Орчин үеийн JavaScript-д inline event handler ашиглах нь сайн практик гэж тооцогддоггүй. Үүний оронд addEventListener method ашиглахыг зөвлөдөг.

```
<button onclick="alert('Hello World!')">Show alert</button>
```

---

9. Change Event

9.1 Тодорхойлолт: change event нь хэрэглэгч тодорхой input элементүүдийн утгыг өөрчлөх үед үүсдэг event юм. Жишээ нь checkbox эсвэл radio button сонгох үед, эсвэл date picker, dropdown menu-аас сонголт хийх үед.

```
<label>
  Choose a programming language:
  <select class="language" name="language">
    <option value="">---Select One---</option>
    <option value="JavaScript">JavaScript</option>
    <option value="Python">Python</option>
    <option value="C++">C++</option>
  </select>
</label>

<p class="result"></p>
<script src="./index.js"></script>

const selectEl = document.querySelector(".language");
const result = document.querySelector(".result");

selectEl.addEventListener("change", (e) => {
  result.textContent = `You enjoy programming in ${e.target.value}.`;
});
```

---

10. Event Bubbling

10.1 Тодорхойлолт: Event bubbling (эсвэл propagation) нь event үүсэхэд parent объектууд руу “дээш хөвөх” үйл явцыг хэлнэ.
10.2 stopPropagation() Method: Энэ method нь event-ийн цааш дамжих процессыг зогсооно.

---

11. Event Delegation

11.1 Тодорхойлолт: Event delegation нь event-ийг шууд тухайн элемент дээр нь биш, харин parent дээр нь хүлээн авч боловсруулах процесс юм.

---

12. DOMContentLoaded

12.1 Тодорхойлолт: DOMContentLoaded event нь HTML баримт бичиг бүрэн ачаалагдаж, parse хийгдсэний дараа үүсдэг. Хэрэв external stylesheet эсвэл зураг байвал энэ event тэдгээрийг хүлээхгүй. Зөвхөн HTML ачаалагдахыг л хүлээнэ.

---

13. style болон classList-тэй ажиллах

13.1 Element.style Property: Энэ нь элементийн inline style-ийг илэрхийлдэг read-only property юм. Энэ property-ийг ашиглан style авах эсвэл тохируулах боломжтой.

```
<p id="para">This paragraph will turn red.</p>
<script src="./index.js"></script>

const paraEl = document.getElementById("para");
paraEl.style.color = "red";
```

14. Element.classList Property: Энэ нь class-уудыг нэмэх, устгах, toggle хийхэд ашиглагддаг read-only property юм.

```
<link rel="stylesheet" href="./styles.css"/>
<p id="para" class="blue-background">This paragraph will have classes added and removed.</p>
<div id="menu" class="menu">Menu Content</div>
<button id="toggle-btn">Toggle Menu</button>
<script src="./index.js"></script>

.highlight {
  background-color: yellow;
}

.blue-background {
  background-color: lightblue;
}

.menu {
  display: none;
  padding: 10px;
  background-color: #f0f0f0;
}

.menu.show {
  display: block;
}

// Example adding a class
const paraEl = document.getElementById("para");
paraEl.classList.add("highlight");

// Example removing a class
paraEl.classList.remove("blue-background");

// Example toggling a class
const menu = document.getElementById("menu");
const toggleBtn = document.getElementById("toggle-btn");

toggleBtn.addEventListener("click", () => menu.classList.toggle("show"));
```

---

15. setTimeout() болон setInterval() method-ууд

15.1 setTimeout() Method: Энэ method нь тодорхой хугацааны дараа үйлдэл гүйцэтгэх боломж олгодог.

```
setTimeout(() => {
 console.log('This runs after 3 seconds');
}, 3000);
```

15.2 setInterval() Method: Энэ method нь тодорхой хугацааны давтамжтайгаар кодыг давтан гүйцэтгэнэ. setInterval() тасралтгүй ажилладаг тул зогсоох шаардлагатай байж болно. Үүний тулд clearInterval() method ашиглана.

```
setInterval(() => {
 console.log('This runs every 2 seconds');
}, 2000);

// Example using clearInterval
const intervalID = setInterval(() => {
 console.log('This will stop after 5 seconds');
}, 1000);

setTimeout(() => {
 clearInterval(intervalID);
}, 5000);
```

---

16. requestAnimationFrame() Method

16.1 Тодорхойлолт: Энэ method нь дараагийн дэлгэцийн repaint-ээс өмнө animation-ийн дараагийн алхмыг төлөвлөх боломж олгодог бөгөөд илүү жигд, харагдах байдал сайтай animation үүсгэнэ. Repaint гэдэг нь браузер веб хуудасны харагдах байдлыг дахин зурдаг мөч юм. Энэ нь секундэд олон удаа (ихэвчлэн секундэд 60 удаа буюу 60fps) хийгддэг.

```
function animate() {
 // Update the animation...
 update();
 requestAnimationFrame(animate);
}
```

---

17. Web Animations API

17.1 Тодорхойлолт: Web Animations API нь JavaScript дотор шууд animation үүсгэж, удирдах боломж олгодог.

```
<link rel="stylesheet" href="./styles.css"/>
<div id="square"></div>
<script src="./index.js"></script>

#square {
  width: 100px;
  height: 100px;
  background: red;
}

const square = document.querySelector('#square');

const animation = square.animate(
 [{ transform: 'translateX(0px)' }, { transform: 'translateX(100px)' }],
 {
   duration: 2000,
   iterations: Infinity,
   direction: 'alternate',
   easing: 'ease-in-out',
 }
);
```

---

18. Canvas API

18.1 Тодорхойлолт: Canvas API нь JavaScript дотор график зурж, удирдах боломж олгодог хүчирхэг хэрэгсэл юм. Canvas API-тай ажиллахын тулд эхлээд HTML дээр canvas элемент оруулах шаардлагатай. Энэ элемент нь drawing surface болж ажиллана. Та Canvas API-ийн интерфэйсүүдийн method болон property-уудыг ашиглан график үүсгэж чадна. Эдгээр интерфэйсүүдэд HTMLCanvasElement, CanvasRenderingContext2D, CanvasGradient, CanvasPattern, TextMetrics зэрэг багтана.

```
<canvas id="my-canvas" width="400" height="400"></canvas>
<script src="./index.js"></script>

const canvas = document.getElementById('my-canvas');

const ctx = canvas.getContext('2d');

ctx.fillStyle = 'crimson';

ctx.fillRect(1, 1, 150, 100);
```

---

19. Dialog болон Modal-ийг JavaScript ашиглан нээх, хаах

19.1 Modal болон Dialog тодорхойлолт: Dialog нь хэрэглэгчдэд чухал мэдээлэл эсвэл үйлдэл харуулахад ашиглагддаг. HTML-ийн built-in dialog элемент ашиглан та modal болон non-modal dialog үүсгэж болно. Modal dialog нь хэрэглэгчийг түүнтэй заавал харилцахыг шаарддаг (бусад хэсэгт хандахаас өмнө). Харин non-modal dialog нь нээлттэй байсан ч хэрэглэгчийг хуудсын бусад хэсэгтэй харилцахыг зөвшөөрдөг.

- **showModal() Method:** Modal нээхэд ашиглагдана.

```
<dialog id="my-modal">
   <p>This is a modal dialog.</p>
</dialog>
<button id="open-modal">Open Modal Dialog</button>
<script src="./index.js"></script>

const dialog = document.getElementById('my-modal');
const openButton = document.getElementById('open-modal');

openButton.addEventListener('click', () => {
  dialog.showModal();
});
```

19.2 close() Method: Modal хаахад ашиглагдана.

```
<dialog id="my-modal">
   <p>This is a modal dialog.</p>
   <button id="close-modal">Close Modal</button>
</dialog>
<button id="open-modal">Open Modal Dialog</button>
<script src="./index.js"></script>

const dialog = document.getElementById('my-modal');
const openButton = document.getElementById('open-modal');
const closeButton = document.getElementById('close-modal');

openButton.addEventListener('click', () => {
  dialog.show();
});

closeButton.addEventListener('click', () => {
  dialog.close();
});
```
