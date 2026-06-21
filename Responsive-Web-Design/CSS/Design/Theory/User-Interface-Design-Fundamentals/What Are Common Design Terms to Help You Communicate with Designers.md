# Дизайнеруудтай харилцахад туслах түгээмэл дизайн нэр томьёонууд юу вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино.

Хөгжүүлэгчийн хувьд та дизайнеруудтай ойр хамтран ажиллах шаардлагатай байж болно. Хэрэв та дизайнтай холбоотой үндсэн нэр томьёонуудыг ойлгодог бол та **нийтлэг үгийн сан (shared vocabulary)**-тай болж, дизайн процессд илүү идэвхтэй оролцох боломжтой болно. Энэ нь таны ажлын урсгалыг илүү үр ашигтай болгож, илүү сайн хэрэглэгчийн туршлага бий болгоход тусална.

Тэгвэл эхэлье. Бид эхлээд **layout** гэсэн нэр томьёоноос эхэлнэ.

1. **Layout** гэдэг нь мэдээлэл дамжуулах зорилгоор хуудас эсвэл дэлгэц дээр **харагдах элементүүдийг хэрхэн байрлуулсныг** хэлнэ. Эдгээр элементүүдэд дараах зүйлс багтаж болно:

* текст
* зураг
* хоосон зай (white space)

Layout нь дизайны **зураг төсөл (blueprint)**-тэй адил юм. Дизайнерууд элемент бүрийн **байршил, хэмжээ, мөн шатлал (hierarchy)**-ыг анхаарч үзэх шаардлагатай байдаг.
---HTML-Start---
<link rel="stylesheet" href="styles.css" />

<header>
  <div class="container">
    <h1>ShopMate</h1>
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Shop</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Cart (2)</a></li>
      </ul>
    </nav>
  </div>
</header>

<main>
  <section class="hero">
    <h2>Fall Collection 2025</h2>
    <p>Discover the latest trends</p>
    <a href="#" class="btn">Shop Now</a>
  </section>

  <section class="products container">
    <h3>Featured Products</h3>
    <div class="product-grid">
      <div class="product-card">
        <img src="https://placehold.co/300x200" alt="Product 1" />
        <h4>Product 1</h4>
        <p>$49.99</p>
        <button>Add to Cart</button>
      </div>
      <div class="product-card">
        <img src="https://placehold.co/300x200" alt="Product 2" />
        <h4>Product 2</h4>
        <p>$59.99</p>
        <button>Add to Cart</button>
      </div>
      <div class="product-card">
        <img src="https://placehold.co/300x200" alt="Product 3" />
        <h4>Product 3</h4>
        <p>$39.99</p>
        <button>Add to Cart</button>
      </div>
      <div class="product-card">
        <img src="https://placehold.co/300x200" alt="Product 4" />
        <h4>Product 4</h4>
        <p>$29.99</p>
        <button>Add to Cart</button>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <p>&copy; 2025 ShopMate. All rights reserved.</p>
  </div>
</footer>
-----HTML-end-------
-----CSS-start--------
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  line-height: 1.6;
  background: #f9f9f9;
  color: #333;
}

.container{
  width: 90%;
  max-width: 1200px;
  margin: auto;
}

header .container {
  display: flex;
  justify-content: space-between;
  align-items: center;
}

header {
  background: #fff;
  border-bottom: 1px solid #ddd;
  padding: 1rem 0;
}

header h1 {
  color: #2c3e50;
}

nav ul {
  list-style: none;
  display: flex;
  gap: 1.5rem;
  justify-content: flex-end;
}

nav a {
  text-decoration: none;
  color: #2c3e50;
  font-weight: 500;
}

.hero {
  background-color: lightgrey;
  text-align: center;
  padding: 4rem 1rem;
  margin-bottom: 2rem;
}

.hero h2 {
  font-size: 2.5rem;
  margin-bottom: 0.5rem;
}

.hero .btn {
  display: inline-block;
  margin-top: 1rem;
  padding: 0.75rem 1.5rem;
  background: #2c3e50;
  color: white;
  text-decoration: none;
  border-radius: 4px;
}

.products h3 {
  margin-bottom: 1rem;
  font-size: 1.8rem;
  color: #2c3e50;
}

.product-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
  gap: 2rem;
}

.product-card {
  background: white;
  padding: 1rem;
  border-radius: 8px;
  text-align: center;
  box-shadow: 0 2px 6px rgba(0,0,0,0.1);
}

.product-card img {
  max-width: 100%;
  border-radius: 6px;
  margin-bottom: 1rem;
}

.product-card h4 {
  margin: 0.5rem 0;
}

.product-card button {
  background: #27ae60;
  color: white;
  border: none;
  padding: 0.5rem 1rem;
  cursor: pointer;
  border-radius: 4px;
}

.product-card button:hover {
  background: #219150;
}

footer {
  background: #2c3e50;
  color: white;
  text-align: center;
  padding: 1rem 0;
  margin-top: 2rem;
}
-----CSS-end------
2. **Layout**-тай ойр холбоотой нэр томьёо бол **alignment** юм. **Alignment** гэдэг нь элементүүдийг хооронд нь ямар харьцаатайгаар байрлуулж байгааг хэлнэ. Alignment-ийг зөв ашиглах нь дизайныг **цэвэрхэн, зохион байгуулалттай** харагдуулахад тусалдаг. Дизайнерууд элементүүдийг **төсөөллийн шугам, ирмэг, эсвэл төв цэгийн дагуу** зэрэгцүүлэн байрлуулж харагдах дэг журмыг бий болгодог.
-----HTML-start------
<link rel="stylesheet" href="styles.css" />

<div class="container">
  <section class="alignment left">
    <h2>Left-Aligned</h2>
    <p>This content is aligned to the left. Left alignment is most common for body text because it follows natural reading flow in left-to-right languages.</p>
  </section>

  <section class="alignment center">
    <h2>Center-Aligned</h2>
    <p>This content is centered. Center alignment is useful for titles, headings, and content that needs to be the focal point.</p>
  </section>

  <section class="alignment right">
    <h2>Right-Aligned</h2>
    <p>This content is aligned to the right. Right alignment can be used for stylistic emphasis or when aligning content against the right edge of a container.</p>
  </section>
</div>
-----HTML-end---
-----CSS-start----
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  line-height: 1.6;
  background: #f4f4f4;
  color: #333;
  padding: 2rem;
}

.container {
  max-width: 800px;
  margin: 0 auto;
}

.alignment {
  background: #fff;
  border-left: 4px solid #3498db;
  padding: 1.5rem;
  margin-bottom: 2rem;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.05);
  transition: all 0.3s ease;
}

.alignment:hover {
  transform: scale(1.02);
}

.alignment h2 {
  margin-bottom: 0.5rem;
  color: #3498db;
}

.left {
  text-align: left;
}

.center {
  text-align: center;
}

.right {
  text-align: right;
}
-----CSS-end------

3. Одоо **composition**-ийн талаар ярилцъя. **Composition** гэдэг нь элементүүдийг зохион байрлуулж **зохицолтой дизайн** бий болгох урлаг юм. Энэ нь зураг, текст, хэлбэр зэрэг элементүүд хоорондоо хэрхэн харилцан хамааралтай байж, дизайнд уран сайхны байдлаар хэрхэн хувь нэмэр оруулж байгааг тодорхойлдог. **Layout** нь ихэвчлэн элементүүдийн байрлалд төвлөрдөг бол **composition** нь тухайн байрлал дизайны нийт дүр төрхөд ямар **уран сайхны нөлөө** үзүүлэхийг мөн авч үздэг.

**Composition** нь **balance** гэсэн ойлголттой нягт холбоотой. **Balance** гэдэг нь композици дотор **харагдах жинг (visual weight)** хэрхэн хуваарилсныг илэрхийлдэг. Дизайнерууд **симметрик (symmetrical)** эсвэл **асимметрик (asymmetrical)** байрлал ашиглан тэнцвэрийг бий болгохыг зорьдог. Тэнцвэртэй дизайн нь **зохицолтой** мэдрэмж төрүүлдэг.

-----HTML-start---
<link rel="stylesheet" href="styles.css">

<h1>Composition &amp; Balance</h1>

<div class="section symmetrical">
  <div class="box-container">
    <div class="box">A</div>
    <div class="box">B</div>
    <div class="box">A</div>
  </div>
  <div class="description">Symmetrical Balance – Equal weight on both sides.</div>
</div>

<div class="section asymmetrical">
  <div class="box-container">
    <div class="box">A</div>
    <div class="box">C</div>
    <div class="box">B</div>
  </div>
  <div class="description">Asymmetrical Balance – Unequal but still harmonious.</div>
</div>
-----HTML-end---
------CSS-start---
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 40px;
  background: #f4f4f4;
}

h1 {
  text-align: center;
  margin-bottom: 40px;
}

.section {
  margin-bottom: 60px;
}

.box-container {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 20px;
}

.box {
  width: 100px;
  height: 100px;
  background: #3498db;
  display: flex;
  justify-content: center;
  align-items: center;
  color: white;
  font-weight: bold;
  font-size: 18px;
  border-radius: 8px;
}

.asymmetrical .box:nth-child(2) {
  transform: scale(1.5);
  background: #e74c3c;
}

.description {
  text-align: center;
  margin-top: 50px;
  font-style: italic;
  color: #333;
}
------CSS-end---

4. **Hierarchy** нь таны мэдэж байх ёстой өөр нэг чухал ойлголт юм. **Hierarchy** нь дизайн доторх элементүүдийн **чухал байдлын дарааллыг** тогтоодог. Энэ нь хамгийн чухал мэдээлэл **хамгийн түрүүнд анзаарагдах** байдлыг хангах тухай ойлголт юм.

Та **visual hierarchy**-г дараах аргуудыг ашиглан хэрэгжүүлж болно:

* **хэмжээ (size)**
* **өнгө (color)**
* **contrast**
* **alignment**
* **white space**
* мөн **typography**.
-----HTML-start----
<link rel="stylesheet" href="styles.css">

<div class="card">
  <div class="headline">Upgrade to Pro</div>
  <div class="subheadline">Get more features and storage</div>
  <div class="body-text">
    The Pro plan offers advanced tools, priority support, and 10x more storage. Perfect for professionals and teams looking to scale their productivity.
  </div>
  <a href="#" class="call-to-action">Start Free Trial</a>
</div>
---HTML-end---

----CSS-start---
body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  background-color: #fefefe;
  margin: 40px;
  line-height: 1.6;
  color: #333;
}

.card {
  max-width: 600px;
  margin: 0 auto;
  background: #ffffff;
  border: 1px solid #ddd;
  border-radius: 10px;
  padding: 30px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.05);
}

.headline {
  font-size: 32px;
  color: #2c3e50;
  font-weight: bold;
  margin-bottom: 10px;
}

.subheadline {
  font-size: 20px;
  color: #555;
  margin-bottom: 20px;
}

.body-text {
  font-size: 16px;
  color: #666;
  margin-bottom: 20px;
}

.call-to-action {
  display: inline-block;
  background-color: #3498db;
  color: white;
  text-decoration: none;
  padding: 12px 24px;
  border-radius: 5px;
  font-weight: bold;
  transition: background 0.3s ease;
}

.call-to-action:hover {
  background-color: #2980b9;
}
---CSS-end---

5. Элементүүдийн хооронд тод ялгаа бий болгохын тулд та **contrast** ашиглаж болно. **Contrast** нь хэрэглэгчийн анхаарлыг таны онцлон харуулахыг хүссэн зүйл рүү чиглүүлэхэд тустай. Та үүнийг **өнгө, хэмжээ, хэлбэр, текстур**, эсвэл бусад аливаа харагдах шинж чанарын өөрчлөлтөөр хэрэгжүүлж болно. **Хүчтэй contrast** нь мөн уншигдах чадварыг сайжруулахад тустай.
-----HTML-start---
<link rel="stylesheet" href="styles.css">

<div class="container">
  <h1>Contrast in Design</h1>
  <p>
    Contrast helps draw attention to important elements. It also makes content easier to read and visually engaging.
  </p>

  <div class="highlight-box">
    This box stands out because of strong color contrast.
  </div>

  <button class="high-contrast-button">Example button</button>

  <p class="low-contrast-text">
    This text is harder to read due to low contrast with the background.
  </p>
</div>
------HTML-end----
------CSS-start----
body {
  font-family: Arial, sans-serif;
  background-color: #f6f6f6;
  margin: 40px;
  color: #333;
}

.container {
  max-width: 700px;
  margin: 0 auto;
  padding: 30px;
  background-color: #ffffff;
  border-radius: 10px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.05);
}

h1 {
  font-size: 36px;
  margin-bottom: 10px;
  color: #111;
}

p {
  font-size: 18px;
  line-height: 1.6;
  margin-bottom: 25px;
}

.highlight-box {
  background-color: #222;
  color: #ffffff;
  padding: 20px;
  border-radius: 8px;
  font-size: 20px;
  font-weight: bold;
  text-align: center;
}

.low-contrast-text {
  color: #999999;
  font-size: 16px;
  margin-top: 30px;
}

.high-contrast-button {
  background-color: #e74c3c;
  color: white;
  border: none;
  padding: 12px 24px;
  font-size: 16px;
  font-weight: bold;
  border-radius: 5px;
  cursor: pointer;
  margin-top: 20px;
  transition: background 0.3s ease;
}

.high-contrast-button:hover {
  background-color: #c0392b;
}
------CSS-end-----

6. Өөр нэг хэрэгтэй нэр томьёо бол **white space** юм. **White space**, мөн **“negative space”** гэж нэрлэгддэг бөгөөд энэ нь дизайнд байгаа **хоосон зай** юм. Энэ нь элементүүдийг хүрээлж буй хэсгийг хэлнэ. **White space** заавал цагаан өнгөтэй байх албагүй гэдгийг мэдэхэд та гайхаж магадгүй. Үнэндээ энэ нь ямар ч өнгө эсвэл текстуртай зай байж болно. Үүний зорилго нь дизайны **уншигдах чадварыг сайжруулах** болон **visual hierarchy**-г илүү тодруулах явдал юм.
-----HTML-start----
<link rel="stylesheet" href="styles.css">

<div class="container">
  <h1>The Power of White Space</h1>
  <p>
    White space (or negative space) is the empty space around elements. It’s not just “blank”—it gives your content room to breathe, improves focus, and adds elegance to the design.
  </p>
  <a href="#" class="button">Learn More</a>
</div>

<div class="no-whitespace">
  <strong>Without white space:</strong> This block has minimal padding, making the content feel cramped, harder to read, and less appealing.
</div>
-----HTML-end-----
------CSS-start-----
body {
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  margin: 0;
  padding: 0;
  background-color: #f0f0f0;
}

.container {
  max-width: 800px;
  margin: 60px auto;
  background-color: #ffffff;
  padding: 60px;
  border-radius: 10px;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
}

h1 {
  font-size: 36px;
  margin-bottom: 20px;
  color: #2c3e50;
}

p {
  font-size: 18px;
  line-height: 1.8;
  color: #555;
  margin-bottom: 30px;
}

.button {
  display: inline-block;
  padding: 14px 28px;
  background-color: #27ae60;
  color: white;
  font-size: 16px;
  font-weight: bold;
  border: none;
  border-radius: 5px;
  text-decoration: none;
  transition: background 0.3s ease;
}

.button:hover {
  background-color: #219150;
}

.no-whitespace {
  background-color: #ffffff;
  padding: 10px;
  margin: 60px auto;
  width: 800px;
  box-shadow: 0 0 0 1px #ccc;
  font-size: 16px;
  color: #222;
}
-------CSS-end----
Эдгээр нь та маш олон удаа тааралдах ерөнхий дизайн ойлголтууд боловч програм хангамжийн хөгжүүлэлттэй илүү ойр холбоотой дизайн нэр томьёонууд ч бас байдаг.

**User interface**, өөрөөр хэлбэл **UI**, гэдэг нь хүмүүс компьютертэй хэрхэн харилцаж байгааг илэрхийлдэг ойлголт юм. **User interface** нь хэрэглэгчид дэлгэц дээрээ харж, ашиглаж болох **харагдах болон интерактив элементүүдийг** агуулдаг. Үүнд:

* икон
* зураг
* текст
* меню
* холбоос
* товч

зэрэг зүйлс орно.

**User experience**, өөрөөр хэлбэл **UX**, нь хэрэглэгчид ямар нэгэн бүтээгдэхүүн эсвэл үйлчилгээ ашиглах үедээ **ямар мэдрэмж авч байгааг** илэрхийлдэг. Сайн зохион бүтээгдсэн **user experience**-тэй програм нь:

* ойлгомжтой
* хэрэглэхэд хялбар
* үр ашигтай
* хүртээмжтэй
* таатай

байдаг.

**User interface** нь **user experience**-ийг аль болох хялбар, таатай болгоход чухал үүрэг гүйцэтгэдэг. Тиймээс эдгээр хоёр ойлголт **маш нягт холбоотой** байдаг.

Эдгээр нь дизайнеруудтай харилцахад мэдэх ёстой түгээмэл нэр томьёонуудын зарим нь юм. Энэ мэдлэгийг эзэмшсэнээр та одоо дизайн процессд **илүү идэвхтэй оролцох боломжтой** болно.
