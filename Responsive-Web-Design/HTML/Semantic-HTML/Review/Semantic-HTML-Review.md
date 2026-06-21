Semantic HTML-ийн ач холбогдол

**Гарчгийн элементүүдийн бүтцийн шатлал (structural hierarchy):**
Контентийн бүтцийн шатлалыг хадгалахын тулд зөв гарчгийн элементийг ашиглах нь чухал. **H1 элемент** нь хамгийн дээд түвшний гарчиг бөгөөд **h6 элемент** нь хамгийн доод түвшний гарчиг юм.

**Presentational HTML элементүүд:**
Контентийн харагдах байдлыг тодорхойлдог элементүүд. Жишээ нь: ашиглалтаас гарсан (deprecated) **center**, **big**, **font** элементүүд.

**Semantic HTML элементүүд:**
Утга агуулга болон бүтцийг илэрхийлдэг элементүүд. Жишээ нь: **header**, **nav**, **figure** элементүүд.

Semantic HTML элементүүд

1. Header элемент:
Баримт бичиг эсвэл хэсгийн толгой (header) хэсгийг тодорхойлоход ашиглагддаг.

```html
<header>
  <h1>CatPhotoApp</h1>
  <p>Welcome to our cat gallery.</p>
</header>
```

2. Main элемент:
Вэб хуудасны үндсэн контентыг агуулж байхаар ашиглагддаг.

```html
<main>
  <section>
    <h2>Cat Photos</h2>
    <p>Browse adorable cat pictures.</p>
  </section>
</main>
```

3. Section элемент:
Контентыг жижиг хэсгүүдэд хуваахад ашиглагддаг.

```html
<section>
  <h2>About Me</h2>
  <p>Hi, I am Jane Doe and I am a web developer.</p>
</section>
```

4. Navigation Section (nav) элемент:
Навигацийн холбоосууд агуулсан хэсгийг илэрхийлдэг.

```html
<nav>
  <ul>
    <li><a href="#photos">Photos</a></li>
    <li><a href="#videos">Videos</a></li>
  </ul>
</nav>
```

5. Figure элемент:
Зураг, дүрслэл болон диаграммыг агуулхад ашиглагддаг.

```html
<figure>
  <img
    src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg"
    alt="Two tabby kittens sleeping together on a couch."
  />
  <figcaption>Cats <strong>hate</strong> other cats.</figcaption>
</figure>
```

6. Emphasis (em) элемент:
Онцгойлон анхаарал хандуулах, өгүүлбэр дотор **стресс онцлол (stress emphasis)** өгсөн текстийг тэмдэглэхэд ашиглагддаг.

```html
<p>
  Never give up on <em>your</em> dreams.
</p>
```

7. Idiomatic Text (i) элемент:
Өөр өнгө аяс (alternative voice or mood), өөр хэлнээс орж ирсэн idiomatic нэр томьёо, техникийн нэршил, эсвэл бодол санааг онцлон харуулахад ашиглагддаг.

```html
<p>
  There is a certain <i lang="fr">je ne sais quoi</i> in the air.
</p>
```

**Lang атрибут** нь нээлттэй `i` таг дотор ашиглагдаж, тухайн контентийн хэлийг тодорхойлдог. Энэ жишээнд хэл нь **Франц хэл** байна. **I элемент** нь текст чухал эсэхийг илэрхийлдэггүй, зөвхөн эргэн тойрны текстээс **өөр шинжтэй** байгааг л харуулдаг.

8. Strong Importance (strong) элемент:
Хүчтэй ач холбогдол (strong importance)-той текстийг тэмдэглэхэд ашиглагддаг.

```html
<p>
  <strong>Warning:</strong> This product may cause allergic reactions.
</p>
```

9. Bring Attention To (b) элемент:
Контентийн утга агуулгад зайлшгүй чухал биш боловч анхаарал татах шаардлагатай текстийг онцлоход ашиглагддаг. Ихэвчлэн тойм (summary) доторх түлхүүр үгс эсвэл тойм, үнэлгээнд орсон бүтээгдэхүүний нэрийг тодруулахад хэрэглэдэг.

```html
<p>
  We tested several products, including the <b>SuperSound 3000</b> for audio quality, the <b>QuickCharge Pro</b> for fast charging, and the <b>Ecoclean Vacuum</b> for cleaning. The first two performed well, but the <b>Ecoclean Vacuum</b> did not meet expectations.
</p>
```

10. Description List (dl) элемент:
Нэр томьёо ба тайлбарын хослолоос бүрдэх жагсаалтыг илэрхийлэхэд ашиглагддаг.

10.1 Description Term (dt) элемент:
Тодорхойлогдож буй нэр томьёог илэрхийлдэг.

10.2 Description Details (dd) элемент:
Тухайн нэр томьёоны тайлбарыг илэрхийлдэг.

```html
<dl>
  <dt>HTML</dt>
  <dd>HyperText Markup Language</dd>
  <dt>CSS</dt>
  <dd>Cascading Style Sheets</dd>
</dl>
```

11. Block Quotation (blockquote) элемент:
Өөр эх сурвалжаас эш татсан хэсгийг илэрхийлэхэд ашиглагддаг. Энэ элемент нь **cite атрибут**-тай бөгөөд уг атрибутын утга нь эх сурвалжийн URL байдаг.

```html
<blockquote cite="https://www.freecodecamp.org/news/learn-to-code-book/">
  "Can you imagine what it would be like to be a successful developer? To have built software systems that people rely upon?"
</blockquote>
```

11.1 Citation (cite) элемент:
Эш татсан бүтээлийн эх сурвалжийг харагдах байдлаар тодорхойлоход ашиглагддаг. Ихэвчлэн эх сурвалжийн гарчгийг тэмдэглэдэг.

```html
<div>
  <blockquote cite="https://www.freecodecamp.org/news/learn-to-code-book/">
    "Can you imagine what it would be like to be a successful developer? To have built software systems that people rely upon?"
  </blockquote>
  <p>
    -Quincy Larson, <cite>How to learn to Code and Get a Developer Job [Full Book].</cite>
  </p>
</div>
```

11.2 Inline Quotation (q) элемент:
Мөр доторх богино эшлэлийг илэрхийлэхэд ашиглагддаг.

```html
<p>
  As Quincy Larson said,
  <q cite="https://www.freecodecamp.org/news/learn-to-code-book/">
    Momentum is everything.
  </q>
</p>
```

12. Abbreviation (abbr) элемент:
Товчлол (abbreviation) эсвэл acronym-ийг илэрхийлэхэд ашиглагддаг. Хэрэглэгчдэд тухайн товчлолын утгыг ойлгуулахын тулд **title атрибут** ашиглан бүрэн нэршил буюу хүн ойлгохуйц тайлбарыг харуулж болно.

```html
<p>
  <abbr title="HyperText Markup Language">HTML</abbr> is the foundation of the web.
</p>
```

13. Contact Address (address) элемент:
Холбоо барих мэдээллийг илэрхийлэхэд ашиглагддаг.

14. (Date) Time (time) элемент:
Огноо болон/эсвэл цагийг илэрхийлэхэд ашиглагддаг. **Datetime атрибут** нь огноо, цагийг машинд уншигдах (machine-readable) формат руу хөрвүүлэхэд ашиглагдана.

```html
<p>
  The reservations are for the <time datetime="20:00">20:00 </time>
</p>
```

**ISO 8601 Date (datetime) атрибут:**
Огноо болон цагийг машинд уншигдах форматад илэрхийлэхэд ашиглагддаг. Стандарт формат нь **YYYY-MM-DDThh:mm:ss** бөгөөд том **T** үсэг нь огноо болон цагийн хоорондох тусгаарлагч юм.

15. Superscript (sup) элемент:
Дээр бичигдэх текст (superscript)-ийг илэрхийлэхэд ашиглагддаг. Sup элементийн түгээмэл хэрэглээ нь зэрэг (exponent), superior lettering болон дарааллын тоо (ordinal numbers) юм.

```html
<p>
  2<sup>2</sup> (2 squared) is 4.
</p>
```

**Subscript (sub) элемент:**
Доор бичигдэх текст (subscript)-ийг илэрхийлэхэд ашиглагддаг. Түгээмэл хэрэглээ нь химийн томьёо, зүүлт тайлбар (footnote), хувьсагчийн индекс юм.

```html
<p>
  CO<sub>2</sub>
</p>
```

16. Inline Code (code) элемент:
Компьютерын кодын нэг хэсгийг (fragment) илэрхийлэхэд ашиглагддаг.

17. Preformatted Text (pre) элемент:
Урьдчилан форматлагдсан текстийг илэрхийлдэг.

```html
<pre>
  <code>
    body {
      color: red;
    }
  </code>
</pre>
```

18. Unarticulated Annotation (u) элемент:
Текстийн бус (non-textual) тайлбар, тэмдэглэгээтэй inline текстийн хэсгийг илэрхийлэхэд ашиглагддаг.

```html
<p>
  You can use the unarticulated annotation element to highlight
  <u>inccccort</u> <u>spling</u> <u>issses</u>.
</p>
```

19. Ruby Annotation (ruby) элемент:
Текстэд дуудлага эсвэл утгын тайлбар нэмэхэд ашиглагддаг. Ихэвчлэн Зүүн Азийн бичгийн хэвлэлзүйд (typography) хэрэглэгддэг.

19.1 Ruby fallback parenthesis (rp) элемент:
Ruby annotation-ийг харуулах дэмжлэггүй браузерт зориулсан нөөц (fallback) хаалт болгон ашиглагддаг.

19.2 Ruby text (rt) элемент:
Ruby annotation-д ашиглагдах текстийг заадаг. Ихэвчлэн дуудлага эсвэл орчуулгын мэдээлэлд ашиглагддаг бөгөөд Зүүн Азийн typography-д өргөн хэрэглэгддэг.

```html
<ruby>
  明日 <rp>(</rp><rt>Ashita</rt><rp>)</rp>
</ruby>
```
20. Strikethrough (s) элемент:
Одоо хүчинтэй бус эсвэл холбогдолгүй болсон контентыг илэрхийлэхэд ашиглагддаг.

```html
<p>
  <s>Tomorrow's hike will be meeting at noon.</s>
</p>
<p>
  Due to unforeseen weather conditions, the hike has been canceled.
</p>
```

21. Internal links (дотоод холбоосууд):
Хуудасны өөр нэг хэсэг рүү шилжихэд ашиглагддаг бөгөөд **a элемент**-ийн `href="#id"` атрибутыг ашиглаж, очих элементийн `id`-г ижил нэрээр өгдөг. Энэ аргыг ихэвчлэн **skip link**, **агуулгын хүснэгт (table of contents)** эсвэл олон хэсэгтэй урт хуудсанд ашигладаг.

Жишээ код

```html
<a href="#about-section">Go to About Section</a>

<section id="about-section">
  <h2>About</h2>
  <p>This is the about section of the page.</p>
</section>
```



