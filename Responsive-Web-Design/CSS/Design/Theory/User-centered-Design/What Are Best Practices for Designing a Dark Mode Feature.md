# Dark Mode функцийг дизайн хийхэд баримтлах шилдэг практикууд юу вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино.

**Dark mode** гэдэг нь веб аппликейшнд байдаг тусгай функц бөгөөд default **цайвар өнгийн схемийг** **бараан өнгийн схем** болгон өөрчлөх боломжийг олгодог. Энэ нь **нүдний ядаргааг багасгах** болон **бага гэрэлтэй орчинд уншигдах чадварыг сайжруулахад** тусалдаг.

Dark mode функцийг дизайн хийх үед энэ функц **үр дүнтэй бөгөөд хэрэглэгчдэд ээлтэй** байхыг хангахын тулд шилдэг практикуудыг ойлгох нь чухал.

Доорх жишээнд dark mode хэрхэн ажилладгийг харахын тулд **interactive editor**-ийг идэвхжүүлж **Toggle Dark Mode** товчийг дарна уу.
- HTML
<link rel="stylesheet" href="styles.css">

<button id="theme-toggle">Toggle Dark Mode</button>

<div class="content">
  <p>This is a simple dark mode example.</p>
</div>

<script src="index.js"></script>

- CSS

body {
  background: #f5f5f5;
  color: #222;
  font-family: sans-serif;
  transition: background 0.3s, color 0.3s;
}

button {
  margin: 1rem;
  padding: 0.5rem 1rem;
  cursor: pointer;
}

body.dark {
  background: #121212;
  color: #e0e0e0;
}

-Javascript (executable code)

document.getElementById('theme-toggle').addEventListener('click', () => {
  document.body.classList.toggle('dark');
});

Dark mode-д анхаарах хамгийн эхний зүйл бол **saturated өнгүүдийг ашиглахаас зайлсхийх** явдал юм. **Saturated өнгүүд** гэдэг нь маш тод, хүчтэй өнгүүдийг хэлнэ. Жишээлбэл, бараан саарал background дээрх **тод magenta товч** нь хэт хүчтэй харагдаж, нүд ядраах магадлалтай.

Үүний оронд dark mode-д **desaturated өнгүүд** ашиглах хэрэгтэй. **Desaturated өнгүүд** гэдэг нь илүү зөөлөн, saturation түвшин багатай, dark mode-д харахад **илүү тав тухтай** өнгүүд юм.

Жишээнүүдийн **preview**-ийг харахын тулд interactive editor-ийг идэвхжүүлэх шаардлагатай.
-HTML

<link rel="stylesheet" href="styles.css">

<button id="theme-toggle">Toggle Dark Mode</button>

<div class="content">
  <h1>Color Saturation in Dark Mode</h1>
  <p>Compare the two buttons below. The first uses a saturated color, the second is desaturated for better accessibility in dark mode.</p>

  <div class="buttons">
    <button class="saturated">Saturated Button</button>
    <button class="desaturated">Desaturated Button</button>
  </div>
</div>

<script src="index.js"></script>

-CSS
body {
  background-color: #f0f0f0;
  color: #111;
  font-family: sans-serif;
  transition: background 0.3s, color 0.3s;
  padding: 1rem;
}

button {
  padding: 0.6rem 1.2rem;
  font-size: 1rem;
  border-radius: 5px;
  cursor: pointer;
  margin-right: 1rem;
  transition: background 0.3s, color 0.3s;
}

.buttons button {
  border: none;
}

.saturated {
  background-color: #ff00ff; 
  color: white;
}

.desaturated {
  background-color: #c472b5; 
  color: white;
}

body.dark {
  background-color: #121212;
  color: #e0e0e0;
}

body.dark .saturated {
  background-color: #ff00ff; 
  color: black;
}

body.dark .desaturated {
  background-color: #925f88; 
  color: white;
}

-Javascript (executable code)
document.getElementById('theme-toggle').addEventListener('click', () => {
  document.body.classList.toggle('dark');
});

Dark mode-д анхаарах өөр нэг зүйл бол **цэвэр хар background дээр цагаан текст ашиглах** явдал юм. Хэдийгээр энэ нь өндөр contrast үүсгэдэг боловч нүдэнд **хэт хурц** санагдаж болдог.

Үүний оронд **бараан саарал background** болон **цайвар саарал текст** ашиглахыг бодолцож үзэх хэрэгтэй. Ингэснээр илүү **зөөлөн contrast** үүсч, текст нь нүдэнд **илүү амархан**, мөн **уншихад илүү тухтай** болдог.

Жишээнүүдийн **preview**-ийг харахын тулд interactive editor-ийг идэвхжүүлэх шаардлагатай.
-HTML
<link rel="stylesheet" href="styles.css">

<button id="theme-toggle">Toggle Dark Mode</button>

<div class="content">
  <h1>Dark Mode Contrast Comparison</h1>
  <p>Compare the two sections below. One uses pure black and white, the other uses dark gray and light gray for better readability.</p>

  <div class="dark-mode-examples">
    <div class="box harsh-dark">
      <h2>High Contrast</h2>
      <p>Pure black background with white text. While readable, it can be harsh on the eyes.</p>
    </div>

    <div class="box soft-dark">
      <h2>Soft Contrast</h2>
      <p>Dark gray background with light gray text. Easier to read and more comfortable for long periods.</p>
    </div>
  </div>
</div>

<script src="index.js"></script>

-CSS
body {
  background-color: #f0f0f0;
  color: #111;
  font-family: sans-serif;
  padding: 1rem;
  transition: background 0.3s, color 0.3s;
}

button {
  padding: 0.5rem 1rem;
  margin-bottom: 1rem;
  cursor: pointer;
}

.dark-mode-examples {
  display: flex;
  gap: 2rem;
  flex-wrap: wrap;
}

.box {
  padding: 1rem;
  border-radius: 8px;
  width: 300px;
  transition: background 0.3s, color 0.3s;
}

.box {
  background-color: #ffffff;
  color: #111;
  box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}

body.dark .box.harsh-dark {
  background-color: #000000; 
  color: #ffffff;           
}

body.dark .box.soft-dark {
  background-color: #1e1e1e; 
  color: #cccccc;           
}

body.dark {
  background-color: #121212;
  color: #e0e0e0;
}

-Javascript
document.getElementById('theme-toggle').addEventListener('click', () => {
  document.body.classList.toggle('dark');
});

Dark mode-д анхаарах өөр нэг зүйл бол сайтын **brand identity**-тай хэрхэн нийцэж байгааг бодолцох явдал юм. **Brand identity** гэдэг нь тухайн брэндийг илэрхийлдэг харагдах элементүүдийн цогц бөгөөд үүнд **лого, өнгө, typography** зэрэг орно. Dark mode-г хэрэгжүүлэх үед энэ функц таны брэндийн **өнгө болон стильтэй хэрхэн нийцэж байгааг** бодолцох хэрэгтэй. Брэндийн **икон болон товчнуудыг бүрэн saturation-тай** байлгаж болох ч тэдгээрийн эргэн тойрон дахь элементүүдийг **desaturated** байлгах нь тохиромжтой.

Ерөнхийдөө дизайн хийх үед **хэрэглэгчийн туршлага** болон **contrast түвшинг** үргэлж анхаарах хэрэгтэй. Dark mode ч мөн адил бөгөөд эдгээр шилдэг практикуудыг дагаснаар та **үр дүнтэй, хэрэглэгчдэд ээлтэй dark mode функц** бүтээх боломжтой.

