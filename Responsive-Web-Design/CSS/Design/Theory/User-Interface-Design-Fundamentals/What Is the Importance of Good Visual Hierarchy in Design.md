# Дизайнд Сайн Visual Hierarchy ямар ач холбогдолтой вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино.

**Visual hierarchy** гэдэг нь таны хуудасны контентыг **үзэгчийн анхаарлыг чиглүүлэхийн тулд хэрхэн байрлуулж, харуулж байгааг** илэрхийлдэг ойлголт юм.

**Хүчтэй hierarchy** нь нүд дагаж харах **тодорхой замыг** бий болгодог бөгөөд ингэснээр таны дамжуулах мэдээлэл **та төлөвлөсөн дарааллаар** хүлээн авагдана.

Одоо **HTML нь семантик хувьд зөв бүтэцтэй** боловч ашигласан **styling нь хүчтэй visual hierarchy үүсгэж чадахгүй** байгаа энгийн хуудасны layout-ийг авч үзье.

<style>
  body {
    font-family: sans-serif;
    color: #333;
    background-color: #fff;
  }

  header, nav, main, section, footer {
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
  }

  h1, h2, h3 {
    font-weight: normal;
    font-size: 16px;
    margin: 5px 0;
  }

  nav a {
    text-decoration: none;
    color: #333;
    margin-right: 10px;
    font-size: 14px;
  }

  p {
    font-size: 14px;
    margin: 5px 0;
  }
</style>

<header>
  <h1>My Website</h1>
</header>

<nav>
  <a href="#">Home</a>
  <a href="#">About</a>
  <a href="#">Services</a>
  <a href="#">Contact</a>
</nav>

<main>
  <section>
    <h2>Welcome</h2>
    <p>This is the welcome section of the homepage.</p>
  </section>

  <section>
    <h2>Our Services</h2>
    <p>Here we describe what we offer.</p>
  </section>

  <section>
    <h2>Get in Touch</h2>
    <p>Contact us for more information.</p>
  </section>
</main>

<footer>
  <p>&copy; 2025 My Website</p>
</footer>

Хэрэв **font size** хангалттай ялгаатай биш бол гарчгуудаар тусгаарлагдсан байсан ч **документын урсгал (document flow)** тодорхой харагдахгүй.

**Visual hierarchy** үүсгэхийн тулд гарчгийн түвшин бүрт **өөр өөр font size** ашиглах хэрэгтэй. Мөн тодорхой хэсгийг онцлон харуулахын тулд **“callout box”** зэрэг аргыг ашиглаж болно.

<style>
  body {
    font-family: sans-serif;
    line-height: 1.6;
    padding: 20px;
    background: #f9f9f9;
    color: #333;
  }

  h1 {
    font-size: 32px;
    margin-bottom: 10px;
  }

  h2 {
    font-size: 24px;
    margin-top: 20px;
    margin-bottom: 8px;
  }

  h3 {
    font-size: 18px;
    margin-top: 15px;
    margin-bottom: 6px;
  }

  p {
    font-size: 16px;
    margin-bottom: 12px;
  }

  .callout {
    background-color: #fff3cd;
    border-left: 5px solid #ffc107;
    padding: 15px;
    margin: 20px 0;
  }
</style>

<h1>Understanding Visual Hierarchy</h1>
<p>Visual hierarchy helps users navigate and understand content by guiding their attention.</p>

<h2>Heading Tiers</h2>
<p>Using different font sizes for headings creates structure and makes content scannable.</p>

<h3>Level 3 Heading</h3>
<p>This smaller heading further breaks down the section without overpowering it.</p>

<div class="callout">
  <strong>Tip:</strong> Use a callout box like this to highlight important notes or key takeaways.
</div>

<style>
  body {
    font-family: sans-serif;
    padding: 20px;
    background-color: #f4f4f4;
    color: #333;
  }

  h2 {
    font-size: 24px;
    margin-bottom: 10px;
  }

  p {
    font-size: 16px;
    margin-bottom: 15px;
  }

  .callout {
    background-color: #e0f7fa;
    border-left: 5px solid #00acc1;
    padding: 20px;
    margin-top: 20px;
    text-align: center;
  }

  .cta-button {
    display: inline-block;
    background-color: #00acc1;
    color: white;
    padding: 12px 20px;
    font-size: 16px;
    text-decoration: none;
    border-radius: 4px;
    margin-top: 10px;
  }

  .cta-button:hover {
    background-color: #008b9a;
  }
</style>

<h2>Ready to Boost Your Productivity?</h2>
<p>Join thousands of users who are getting more done with our simple and effective tools.</p>

<div class="callout">
  <strong>Don’t wait!</strong> Start your free trial today and see the difference.
  <br>
  <a href="#" class="cta-button">Start Free Trial</a>
</div>

Эцэст нь, таны **visual hierarchy** нь **navigation bar** эсвэл **footer** зэрэг бусад бүрэлдэхүүн хэсгүүдийг ойлгомжтой дамжуулахад ч чухал үүрэгтэй.

Ингэснээр хэрэглэгчид өөрсдийн хайж буй **чухал мэдээллийг илүү амархан олж авах** боломжтой болдог.
