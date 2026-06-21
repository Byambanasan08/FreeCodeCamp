**Functional Pseudo-classes-ийн жишээнүүд юу вэ?**

**Functional pseudo-class**-ууд нь элементүүдийг **илүү төвөгтэй нөхцөл эсвэл харилцаанд** үндэслэн сонгох боломжийг олгодог. Энгийн pseudo-class-уудаас ялгаатай нь (жишээлбэл **:hover**, **:focus**), functional pseudo-class-ууд **хаалт дотор argument** авдаг. Тиймээс тэдгээрийг **“functional pseudo-classes”** гэж нэрлэдэг.

Functional pseudo-class-уудын жишээ:

* **:is()**
* **:where()**
* **:has()**
* **:not()**

Одоо эдгээр functional pseudo-class бүрийг жишээтэй нь илүү дэлгэрэнгүй авч үзье.

1. :is() pseudo-class** нь **зарим шинж чанарыг хуваалцдаг элементүүдийн бүлгийг стильдэх** үед ашигтай байдаг. Жишээлбэл, вэбсайт дээрх өөр өөр төрлийн **button**-уудыг стильдэх шаардлагатай байж болно. Үүнд:

* **button элементүүд**
* **button шиг стильдсэн link**
* **submit** болон **reset** төрөлтэй **input элементүүд**

Доорх нь ийм жишээг харуулж байна. **:is() function** ашиглахгүй бол та дараах шиг **илүү төвөгтэй selector** бичих шаардлагатай болно.

<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />

--css---
button,
a.button,
input[type='submit'],
input[type='reset'] {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

button:hover,
a.button:hover,
input[type='submit']:hover,
input[type='reset']:hover {
  background-color: blue;
  border-color: blue;
}

**:is() function**-ийг ашигласнаар та **илүү товч бөгөөд ойлгомжтой selector** дараах байдлаар бичиж болно.

<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
<a href="#" class="button">Link styled like a button</a>
<input type="submit" value="Submit" />
<input type="reset" value="Reset" />

---css---
:is(button, a.button, input[type='submit'], input[type='reset']) {
  background-color: darkblue;
  color: white;
  border: 1px solid darkblue;
  padding: 10px 20px;
  text-decoration: none;
  border-radius: 5px;
  cursor: pointer;
  display: inline-block;
  margin: 5px;
  font-size: 16px;
  text-align: center;
}

:is(button, a.button, input[type='submit'], input[type='reset']):hover {
  background-color: blue;
  border-color: blue;
}

2. :where() pseudo-class** нь **:is()**-тай төстэй ажилладаг боловч selector-ийн **specificity-г нэмэгдүүлдэггүй** онцлогтой. Энэ нь **бусад CSS дүрмүүдийн specificity-д нөлөөлөхгүйгээр** стиль хэрэглэх шаардлагатай үед маш тохиромжтой.

Жишээлбэл, **heading элементүүдийн margin болон padding-г тэглэх** зорилгоор **:where() function** ашиглаж болно. Ингэснээр хийсэн reset нь дараа нь ашиглах **илүү тодорхой стильд саад болохгүй**.

Доорх нь үүнийг харуулсан жишээ юм.

<link rel="stylesheet" href="styles.css" />
<h1>Page Title</h1>
<h2>Subtitle</h2>
<h3>A point</h3>

<p>Example paragraph.</p>
<p>Example paragraph.</p>
<p>Example paragraph.</p>

---css---
:where(h1, h2, h3) {
  margin: 0;
  padding: 0;
}

Өмнө нь **child элементүүдийн төлөвөөс хамааран parent элементийг стильдэх** нь төвөгтэй байсан. Харин 3. :has() pseudo-class** нэвтрүүлэгдснээр энэ боломж бий болсон. Энэ нь **child элементүүдийн оршин байгаа эсэх эсвэл төлөвөөс хамааран parent элементид стиль хэрэгжүүлэх** боломжийг олгодог.

Жишээлбэл, доорх CSS нь **дотороо h2 элемент агуулсан article элементүүдэд л** хэрэгжинэ.

<link rel="stylesheet" href="styles.css" />
<article>
  <h2>Subheading</h2>
  <p>Lorem ipsum dolor sit amet.</p>
</article>

<article>
  <h3>A point</h3>
  <p>Lorem ipsum dolor sit amet.</p>
  <p>Lorem ipsum dolor sit amet.</p>
</article>

---css---
article:has(h2) {
  border: 2px solid hotpink;
}

4. :not() pseudo-class** нь тодорхой **онцгой тохиолдлуудыг хасч**, үлдсэн элементүүдийн бүлэгт стиль хэрэгжүүлэх шаардлагатай үед маш тохиромжтой. Доорх CSS жишээнд **primary button биш бүх button** нь **саарал (grey) background өнгөтэй** болно.

<link rel="stylesheet" href="styles.css" />
<button class="primary">Primary Button</button>
<button class="secondary">Secondary Button</button>
<button class="danger">Another Secondary Button</button>

---css---
button {
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 16px;
  border: none;
  color: white;
}

button.primary {
  background-color: deepskyblue;
}

button:not(.primary) {
  background-color: grey;
}



