1. HTML-ийн үндэс

HTML-ийн үүрэг:
HTML нь вэб хуудасны "агуулга"(content) болон "бүтэц"(structure)-ийг илэрхийлдэг.

1.1 HTML Elements (HTML элементүүд):
Элементүүд нь HTML баримтын(Documents) үндсэн бүрдлүүд юм. Тэдгээр нь гарчиг, догол мөр, холбоос, зураг гэх мэт агуулгыг илэрхийлнэ. Ихэнх HTML элементүүд нь "нээлттэй tag"(opening tag or start tag) (`<elementName>`) болон "хаалтын tag"(closing tag or end tag) (`</elementName>`)-аас бүрдэнэ.
Үндсэн бичлэгийн загвар:

**Жишээ код**

```html
<elementName>Content goes here</elementName>
```

1.2 Void Elements (агуулгагүй элементүүд):
Void элементүүд нь ямар ч агуулга хадгалж чаддаггүй бөгөөд зөвхөн нээлттэй tag-тэй байдаг. Жишээлбэл: `img`, `meta` элементүүд.

**Жишээ код**

```html
<img>
<meta>
```

Зарим кодын сангуудад void элемент дотор `/` тэмдэг оруулсан байж болно. Аль аль хувилбар нь зөв.

**Жишээ код**

```html
<img>
<img/>
```

1.3 Attributes (атрибутууд):
Атрибут гэдэг нь HTML элементийн нээлттэй tag дотор байрлах утга юм. Атрибут нь тухайн элементэд нэмэлт мэдээлэл өгч, эсвэл хэрхэн ажиллахыг нь тодорхойлдог. Атрибутын үндсэн бичлэг:

**Жишээ код**

```html
<element attribute="value"></element>
```

**Boolean attribute (boolean төрлийн атрибут):**
Boolean атрибут нь HTML tag дотор *байж болно(present) эсвэл байхгүй байж(absent)* болно. Хэрвээ байгаа бол утга нь true, байхгүй бол false гэж үзнэ. Жишээ нь: `disabled`, `readonly`, `required`.

---

1.4 Comments (тайлбар):
Код бичих үед өөртөө болон бусад хөгжүүлэгчдэд зориулж тайлбар үлдээхэд ашиглана. HTML дэх тайлбарын синтакс:

**Жишээ код**

```html
<!--This is an HTML comment.-->
```
---

2. Common HTML elements — HTML-ийн нийтлэг элементүүд

---

2.1 Heading Elements (гарчгийн элементүүд)

HTML-д нийт **6 төрлийн гарчиг** байдаг: `h1`–`h6`. Эдгээр нь доор байрлах агуулгын *чухлыг* илэрхийлдэг.
Дугаар нь бага байх тусам ач холбогдол өндөр — жишээ нь `h2` нь `h1`-ээс бага ач холбогдолтой.

**Жишээ код**

```html
<h1>most important heading element</h1>
<h2>second most important heading element</h2>
<h3>third most important heading element</h3>
<h4>fourth most important heading element</h4>
<h5>fifth most important heading element</h5>
<h6>least important heading element</h6>
```

---

2.2 Paragraph Element (`p`) — Догол мөрийн элемент

Вэб хуудсан дээр догол мөр (paragraph) үүсгэхэд ашиглана.

**Жишээ код**

```html
<p>This is a paragraph element.</p>
```

---

2.3 Image Element (`img`) — Зураг оруулах элемент

`img` элемент нь вэб хуудсанд зураг оруулахад ашиглагдана.

* `src` атрибут → зургийн байршлыг заана
* `alt` атрибут → зураг харагдахгүй үед дүрсэлсэн тайлбар өгнө (accessibility-д чухал)

**Жишээ код**

```html
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg"
     alt="A slice of lasagna on a plate.">
```

---

2.4 body Element — Агуулга хадгалах үндсэн хэсэг

HTML баримтын гол контентыг илэрхийлнэ.

**Жишээ код**

```html
<body>
  <h1>CatPhotoApp</h1>
  <p>This is a paragraph element.</p>
</body>
```

---

2.5 section Element — Агуулгыг хэсэглэх элемент

Контентыг логик жижиг хэсгүүдэд хуваахад ашиглана.

**Жишээ код**

```html
<section>
  <h2>About Me</h2>
  <p>Hi, I am Jane Doe and I am a web developer.</p>
</section>
```

---

2.6 div Element — Ерөнхий зориулалтын контейнер

Ямар нэгэн семантик утгагүй, зүгээр л бусад элементүүдийг нэгтгэж байрлуулахад ашиглагддаг container.

**Жишээ код**

```html
<div>
  <h1>I am a heading</h1>
  <p>I am a paragraph</p>
</div>
```

---

2.7 Anchor Element (`a`) — Холбоос үүсгэх элемент

Вэб дотор болон гадна хуудас руу үсрэх линк үүсгэхэд хэрэглэнэ.

* `href` атрибут → линк дарсаны дараа хаашаа явахыг заана

**Жишээ код**

```html
<a href="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg">cute cats</a>
```

---

2.8 Unordered List (`ul`) & Ordered List (`ol`) — Жагсаалтын элементүүд

#### **`ul` — тэмдэгттэй жагсаалт**

`ul` дотор нэг буюу хэд хэдэн `li` элемент байрлана.

**Жишээ код**

```html
<ul>
  <li>catnip</li>
  <li>laser pointers</li>
  <li>lasagna</li>
</ul>
```

#### **`ol` — дугаарлагдсан жагсаалт**

**Жишээ код**

```html
<ol>
  <li>flea treatment</li>
  <li>thunder</li>
  <li>other cats</li>
</ol>
```

---

2.9 Emphasis Element (`em`) — Текстийг онцлох

Зөөлөн хэлбэрээр текстийг онцлон, ялгаж харуулна.

**Жишээ код**

```html
<p>Cats <em>love</em> lasagna.</p>
```

---

2.10 Strong Element (`strong`) — Хүчтэй онцлох, анхаарал төвлөрүүлэх

Текстийг илүү хүчтэй, анхаарал татахуйц байдлаар тэмдэглэнэ (яаралтай эсвэл чухал утгатай).

**Жишээ код**

```html
<p>
  <strong>Important:</strong> Before proceeding, make sure to wear your safety goggles.
</p>
```

---

2.11 figure & figcaption — Зураг, диаграммтай холбоотой бүлэглэл

* `figure` — зураг, диаграмм зэрэг контентыг бүлэглэнэ
* `figcaption` — тухайн figure-д тайлбар өгнө

**Жишээ код**

```html
<figure>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg"
       alt="Two tabby kittens sleeping together on a couch.">
  <figcaption>Cats <strong>hate</strong> other cats.</figcaption>
</figure>
```

---

2.12 main Element — Хуудасны үндсэн агуулгыг илэрхийлнэ

2.13 footer Element — Хуудасны доод хэсэг

Ихэнхдээ зохиогчийн эрх болон бусад холбоосууд орно.

**Жишээ код**

```html
<footer>
  <p>
    No Copyright -
    <a href="https://www.freecodecamp.org">freeCodeCamp.org</a>
  </p>
</footer>
```

---

3. Identifiers and Grouping — Танигчид ба бүлэглэх

---

3.1 ID — HTML элементэд олгох өвөрмөц танигч

`id` атрибут нь HTML элементэд өгдөг **давтагдашгүй (unique)** нэр юм.
Нэг HTML баримтад *нэг ID-г зөвхөн нэг удаа* ашиглана.

**Жишээ код**

```html
<h1 id="title">Movie Review Page</h1>
```

**ID нэрэнд зай (space) ашиглаж болохгүй.**
Хэрэв олон үгтэй нэр хэрэглэх бол *таслал (dash or hyphen or underscore)* ашиглана:

**Жишээ код**

```html
<div id="red-box"></div>
```

---

3.2 Class — Элементүүдийг стил(style) болон зан үйлээр(behavior) бүлэглэх

`class` атрибутыг олон элементүүдэд давалгаатайгаар өгч, тэдгээрийг нэг бүлэг болгон ашиглана (CSS стиль, JavaScript зан үйлд зориулна).

**Жишээ код**

```html
<div class="box"></div>
```

ID-ээс ялгаатай нь:

* `class`-ийг HTML баримтын олон элементэд дахин дахин ашиглаж болно
* `class` утга нь зайтай байж олон ангилал зэрэг оноож болно

**Жишээ код**

```html
<div class="box red-box"></div>
<div class="box blue-box"></div>
```

---

4. Special Characters and Linking — Тусгай тэмдэгтүүд ба холбоосууд

---

4.1 HTML entities — HTML тусгай тэмдэгтийн илэрхийлэл

HTML entity (character reference) гэдэг нь HTML-д тусгай утгатай, шууд бичиж болдоггүй тэмдэгтүүдийг дүрслэхэд ашигладаг код юм.
Жишээлбэл:

* Ampersand ( `&` ) → `&amp;`
* Less-than тэмдэг ( `<` ) → `&lt;`

**Жишээ код**

```html
<p>This is an &lt;img /&gt; element</p>
```

---

4.2 link Element — Гадаад нөөц рүү холбоос үүсгэх

`link` элемент нь stylesheet (CSS файл), favicon зэрэг гадаад нөөцүүдийг HTML документэд холбоход ашиглагдана.

Гадаад CSS файл холбох үндсэн syntax:

**Жишээ код**

```html
<link rel="stylesheet" href="./styles.css" />
```

* `rel` атрибут → тухайн нөөц ба HTML баримтын хоорондын харилцааг заана
* `href` атрибут → гадаад нөөцийн URL байршлыг заана

---

4.3 script Element — Гүйцэтгэгдэх код оруулах

`script` элемент нь JavaScript зэрэг гүйцэтгэгддэг кодыг HTML дотор ашиглахад зориулагдсан.

**Жишээ код**

```html
<body>
  <script>
    alert("Welcome to freeCodeCamp");
  </script>
</body>
```

JavaScript кодыг шууд script tag дотор бичиж болох ч 'Best practice' 'Separator of concerns' нь JS кодыг *гадаад файлд байршуулж*, HTML-ээс линк хийх явдал юм.

Гадаад JavaScript файл холбоход:

**Жишээ код**

```html
<script src="path-to-javascript-file.js"></script>
```

* `src` атрибут → тухайн JavaScript файлын байршлыг заана

---
5. Boilerplate and Encoding — Үндсэн бүтэц ба Кодчлол

---

5.1 HTML boilerplate — HTML-ийн үндсэн загвар

HTML баримт бүрт шаардлагатай *суурь бүтэц* болон *заавал байх ёстой элементүүд*-ийг агуулсан эх загвар (boilerplate) нь дараах хэлбэртэй:

**Жишээ код**

```html
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <title>freeCodeCamp</title>
    <link rel="stylesheet" href="./styles.css" />
  </head>
  <body>
    <!--Headings, paragraphs, images, etc. go inside here-->
  </body>
</html>
```

---

5.2 DOCTYPE — HTML-ийн хувилбарыг браузерт мэдэгдэх

`<!DOCTYPE html>` мэдэгдэл нь браузерт тухайн документ HTML-ийн аль хувилбарыг ашиглаж байгааг мэдээлдэг.
Орчин үеийн HTML5-д энэ нэг мөр бичлэг ашиглагдана.

---

5.3 html Element — HTML баримтын үндсэн (root) элемент

`<html>` элемент нь баримтын хамгийн дээд түвшний элемент юм.
Баримтын хэлний тохиргоог `lang` атрибутаар заана.

Жишээ:

```html
<html lang="en">
```

---
5.4 head Element — Мета мэдээллийг хадгалах хэсэг

`<head>` нь хэрэглэгчид харагдахгүй ч вэб хуудасны ажиллагаанд зайлшгүй шаардлагатай мета мэдээллүүдийг агуулна.

Үүнд:

* `meta` элементүүд
* `title`
* CSS холбоосууд (`link`)
* Скриптийн зарим тохиргоо
* SEO-тэй холбоотой мэдээллүүд гэх мэт

---

5.5 meta Elements — Сайтын мета мэдээлэл

`meta` элементүүд нь вэб хуудасны тухай нэмэлт мэдээлэл агуулдаг. Үүнд:

* Тэмдэгтийн кодчлол (character encoding)
* Social media preview (Twitter, Facebook гэх мэт)
* Keywords, description (SEO мэдээлэл)
* Viewport тохиргоо (mobile responsiveness)

Жишээ:

```html
<meta charset="utf-8" />
```

---

5.6 title Element — Браузерийн таб дээр харагдах нэрийг заана

`<title>` элемент нь вэб хуудас дотор бус, харин браузерийн:

* таб дээр
* цонхны гарчиг дээр

харагдах текстийг тодорхойлдог.

---

5.7 UTF-8 character encoding — Вэб дээр өргөн хэрэглэгддэг кодчлол

**UTF-8 (UCS Transformation Format 8)** гэдэг нь үсэг тэмдэгтүүдийг компьютерийн системд хадгалах, кодлох стандарт арга юм.

* Монгол кирилл
* Латин үсэг
* Emoji
* Бусад олон улсын тэмдэгтүүд

UTF-8 нь эдгээрийг бүгдийг хадгалж чаддаг тул вэб дээр хамгийн түгээмэл хэрэглэгддэг.

HTML дотор UTF-8 кодчлолыг дараах байдлаар заана:

```html
<meta charset="utf-8" />
```

---
6. SEO and Social Sharing — Хайлт сайжруулалт ба нийгмийн сүлжээний харагдах байдал

---

SEO — Search Engine Optimization (Хайлтын системийн оновчлол)

SEO нь вэб хуудсуудыг хайлтын системүүд (Google гэх мэт) дээр илүү өндөр байр эзлэх, илүү сайн харагдах байдалтай болгох зорилготой оновчлолын аргачлал юм.

---

6.1 Meta (description) Element — Вэб хуудасны товч тайлбар

`meta` description элемент нь вэб хуудасны богино тайлбарыг өгч, хайлтын системийн үр дүнд хэрхэн харагдах, хэр их даруулгаар нөлөөлдөг.

**Жишээ код**

```html
<meta
  name="description"
  content="Discover expert tips and techniques for gardening in small spaces, choosing the right plants, and maintaining a thriving garden."
/>
```

---

6.2 Open Graph tags — Нийгмийн сүлжээнд харагдах байдлыг хянах

Open Graph протокол нь Facebook, LinkedIn болон бусад олон платформд таны вэб сайтын контент хэрхэн харагдахыг хянах боломж олгодог.

Open Graph шинжүүдийг (`og:title`, `og:image`, гэх мэт) зөв тохируулснаар:

* хэрэглэгчдийг таны линк дээр дарж үзэхэд урамшуулна
* контентын танигдах байдлыг сайжруулна

Эдгээрийг `<head>` дотор байрлах `meta` элементүүдээр зааж өгнө.

---

6.2.1 og:title Property — Нийгмийн сүлжээнд харагдах гарчиг

Энэ нь линк хуваалцах үед харагдах гарчгийг тодорхойлно.

**Жишээ код**

```html
<meta content="freeCodeCamp.org" property="og:title" />
```

---

6.2.2 og:type Property — Контентийн төрөл

Линк дээр дарж буй контент ямар төрөлтэй болохыг илэрхийлнэ.
Төрлүүдийн жишээ:

* website
* article
* video
* music гэх мэт

**Жишээ код**

```html
<meta property="og:type" content="website" />
```

---

6.2.3 og:image Property — Хуваалцах үед харагдах зураг

Нийгмийн сүлжээнд линк оруулах үед харагдах thumbnail зураг.

**Жишээ код**

```html
<meta
  content="https://cdn.freecodecamp.org/platform/universal/fcc_meta_1920X1080-indigo.png"
  property="og:image"
/>
```

---

6.2.4 og:url Property — Линк дарсны дараа очих жинхэнэ URL

Нийгмийн сүлжээнд харагдах линк нь энэ URL рүү чиглэнэ.

**Жишээ код**

```html
<meta property="og:url" content="https://www.freecodecamp.org" />
```

---

7. Media Elements and Optimization — Медиа элементүүд ба оновчлол

---

7.1 Replaced elements — Гаднын нөөцөөр агуулга нь тодорхойлогдох элементүүд

Replaced element гэдэг нь контент нь CSS-ээр бус, *гадаад нөөцөөр* тодорхойлогддог HTML элемент юм.
Жишээлбэл: **`iframe`**.

**iframe (inline frame)** — HTML хуудас дотор өөр HTML контентийг суулгах inline элемент.

**Жишээ код**

```html
<iframe src="https://www.example.com" title="Example Site"></iframe>
```

---

### **allowfullscreen атрибут**

`allowfullscreen` атрибут нь хэрэглэгч iframe-ийг fullscreen горимд үзэх боломж олгоно.

**Жишээ код**

```html
<iframe
  src="video-url"
  width="width-value"
  height="height-value"
  allowfullscreen
></iframe>
```

---

7.1.1  Видео суулгах (Embedding videos)

Видео платформууд (YouTube, Vimeo) iframe embed код өгдөг. Мөн `src`-ийг тухайн видеоны URL-д тохируулаад өөрөө суулгаж болно.

Доорх жишээнд freeCodeCamp-ийн YouTube хичээлийг iframe ашиглан оруулжээ:

```html
<h1>A freeCodeCamp YouTube Video Embedded with the iframe Element</h1>

<iframe
  width="560"
  height="315"
  src="https://www.youtube.com/embed/PkZNo7MFNFg?si=-UBVIUNM3csdeiWF"
  title="YouTube video player"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
  referrerpolicy="strict-origin-when-cross-origin"
  allowfullscreen
></iframe>
```

---

7.1.2 Бусад replaced elements

Replaced элементүүдийн жишээ:

* `video`
* `embed`

Зарим элементүүд тодорхой нөхцөлд replaced element шиг ажилладаг, жишээ нь `input type="image"`.

**Жишээ код**

```html
<input type="image" alt="Descriptive text goes here" src="example-img-url">
```

---

7.2 Optimizing media — Медиа файлуудыг оновчтой ашиглах

Вэб хуудсанд зураг болон медиа ашиглахдаа дараах гурван хүчин зүйлийг сайтар анхаарна:

1. **Size (хэмжээ)**
2. **Format (формат)**
3. **Compression (шахалт)**

Compression algorithm → файлын хэмжээг багасгах зорилготой шахалтын арга.

---

7.2.1 Image formats — Зургийн формат

Хамгийн түгээмэл хуучин форматууд:

* PNG
* JPG

Гэхдээ эдгээр нь орчин үеийн вебийн хувьд хамгийн үр ашигтай формат биш.

Шинэ, илүү оновчтой форматууд:

* **WEBP**
* **AVIF**

Эдгээр нь:

* бага хэмжээтэй
* өндөр чанартай
* вебийн ачаалах хурдыг нэмэгдүүлдэг

Хэрэв хуучин браузеруудын дэмжлэг шаардлагагүй бол эдгээрийг ашиглахыг зөвлөдөг.

---

7.2.2 Image licenses — Зургийн лиценз

* **Public domain (олон нийтийн өмч)** → зохиогчийн эрхгүй, хэн ч ямар ч нөхцөлгүй ашиглаж болно
* **Creative Commons 0 (CC0)** → public domain гэж үзэгдэнэ
* Creative Commons (төрөл бүрийн нөхцөлтэй лиценз)
* BSD лиценз → freeCodeCamp ашигладаг

Зураг ашиглахдаа лицензийн нөхцөл заавал шалгах ёстой.

---

7.2.3 SVGs — Scalable Vector Graphics

SVG нь *vector graphic* бөгөөд:

* зам (path)
* тоон мэдээлэл
* муруй, шугам

зэрэгт үндэслэн дүрслэгддэг.

Үүний давуу тал:

* **ямар ч хэмжээнд тэлж, агшсан ч чанар нь алдагддаггүй**
* логогоос эхлээд icon, диаграмм зэргийг дүрслэхэд тохиромжтой

Товчхондоо: SVG = маш уян хатан, чанараа алдахгүй vector зураг.

---

8. Multimedia Integration — Олон медиа контент нэгтгэх

---

8.1 audio болон video элементүүд

`audio` болон `video` элементүүд нь HTML баримтад дуу болон дүрс нэмэх боломж олгодог.

* **audio** — mp3, wav, ogg форматуудыг дэмждэг
* **video** — mp4, ogg, webm форматуудыг дэмждэг

**Жишээ код**

```html
<audio src="CrystalizeThatInnerChild.mp3"></audio>
```

---

8.1.1 controls атрибут — Тоглуулагчийн удирдлагыг идэвхжүүлэх

Хэрэв аудиог веб дээр харагдах тоглуулагчтай болгохыг хүсвэл `controls` атрибут нэмнэ:

**Жишээ код**

```html
<audio src="CrystalizeThatInnerChild.mp3" controls></audio>
```

`controls` нь boolean атрибут бөгөөд дараах боломжуудыг нээнэ:

* Дууны хэмжээг өөрчлөх
* Тоглуулах / Түр зогсоох
* Дахин тоглуулах

Хэрэв энэ атрибут байхгүй бол тоглуулагч харагдахгүй.

---
8.1.2 loop Attribute — Тасралтгүй давталт

`loop` boolean атрибут нь аудиог дуусмагц автоматаар дахин тоглуулна.

**Жишээ код**

```html
<audio
  src="https://cdn.freecodecamp.org/curriculum/js-music-player/can't-stay-down.mp3"
  loop
  controls
></audio>
```

---

8.1.3 muted Attribute — Дууг эхлэхдээ дээр нь унтраасан байдалтай эхлүүлэх

`muted` атрибуттай бол аудио анх ачаалагдахдаа чимээгүй эхэлнэ.

**Жишээ код**

```html
<audio
  src="https://cdn.freecodecamp.org/curriculum/js-music-player/can't-stay-down.mp3"
  loop
  controls
  muted
></audio>
```

---

8.1.4 source Element — Янз бүрийн форматтай медиа эх үүсвэрүүдийг заах

Янз бүрийн браузер өөр өөр аудио форматыг дэмждэг тул `source` элементүүд ашиглан олон эх үүсвэр зааж болно.
Браузер дэмжиж буй эхний форматыг автоматаар сонгоно.

**Жишээ код**

```html
<audio controls>
  <source src="audio.ogg" type="audio/ogg" />
  <source src="audio.wav" type="audio/wav" />
  <source src="audio.mp3" type="audio/mpeg" />
</audio>
```

---

8.2 Видео элемент — Аудиотой ижил атрибутуудыг дэмжинэ

`loop`, `controls`, `muted` зэрэг бүх атрибутууд `video` элементэд мөн хүчинтэй.

**Жишээ код**

```html
<video
  src="https://archive.org/download/BigBuckBunny_124/Content/big_buck_bunny_720p_surround.mp4"
  loop
  controls
  muted
></video>
```

---

8.2.1 poster Attribute — Видео ачаалагдаж байх үед харагдах зураг

`poster` атрибут нь видео эхлэхээс өмнө, эсвэл ачаалж байх үед үзүүлэгдэх зургийг заана.
`audio` элементэд байхгүй, зөвхөн `video`-д онцгой атрибут.

**Жишээ код**

```html
<video
  src="https://archive.org/download/BigBuckBunny_124/Content/big_buck_bunny_720p_surround.mp4"
  loop
  controls
  muted
  poster="https://peach.blender.org/wp-content/uploads/title_anouncement.jpg?x11217"
  width="620"
></video>
```

---

9. Target attribute types — `target` атрибутын төрлүүд

---

target Attribute — Линкийг хаана нээхийг браузерт заах атрибут

`target` атрибут нь `<a>` (anchor) элементийн URL-ийг **хаана**, ямар контекстэд нээхийг браузерт тодорхойлдог.

Гол 4 утга:

1. **`_self`**
2. **`_blank`**
3. **`_parent`**
4. **`_top`**

Тав дахь утга: **`_unfencedTop`**
→ FencedFrame API (туршилтын технологи) ашиглах үед зориулагдсан. Одоогоор ихэнх тохиолдолд хэрэглэх шаардлагагүй.

---

9.1. `_self` — Өмнөх (default) утга

`target="_self"` нь линк дарагдахад **одоо байгаа таб/цонхонд** нээгдэнэ.
Энэ нь target заагаагүй үед хэрэглэгдэх үндсэн утга.

**Жишээ код**

```html
<a href="https://freecodecamp.org" target="_self">Visit freeCodeCamp</a>
```

---

9.2. `_blank` — Шинэ таб/цонхонд нээх

`target="_blank"` нь линк дарахад **шинэ browsing context** нээнэ.

* Ихэнх браузер → шинэ таб нээнэ
* Зарим хэрэглэгчийн тохиргооноос хамааран → шинэ цонх нээж болно

**Жишээ код**

```html
<a href="https://freecodecamp.org" target="_blank">Visit freeCodeCamp</a>
```

---

9.3. `_parent` — Эцэг контекстэд нээх

Хэрэв контент iframe дотор байвал:

* `target="_parent"` нь линкийг iframe дотроо биш
* **өөрийн эцэг (parent) цонх / таб**-д нээнэ

Жишээ нь: iframe доторх линк вэб хуудасны үндсэн таб дээр нээгдэнэ.

**Жишээ код**

```html
<a href="https://freecodecamp.org" target="_parent">Visit freeCodeCamp</a>
```

---

9.4. `_top` — Хамгийн дээд түвшний browsing context

`_top` нь линкийг **хамгийн дээд түвшний** (top-most) контекстэд нээнэ.

* iframe давхар давхар байрласан байсан ч
* Эцсийн дүндээ үргэлж **бүрэн tab/window** дээр нээгдэнэ

`_parent`-тай төстэй боловч үргэлж хамгийн дээд түвшинд нээдэг гэдгээрээ ялгаатай.

**Жишээ код**

```html
<a href="https://freecodecamp.org" target="_top">Visit freeCodeCamp</a>
```

---

10. Absolute vs. Relative Paths — Абсолют ба харьцангуй замууд

---

Path definition — Замын тодорхойлолт

Зам (path) гэдэг нь файлын систем доторх файл эсвэл хавтас хаана байрлаж байгааг заасан *тэмдэгтүүдийн дараалал* юм.
Вэб хөгжүүлэлтэд замыг ашиглан:

* зураг
* stylesheet (CSS)
* script (JS)
* бусад HTML хуудас

зэрэг нөөцүүд рүү холбоос үүсгэдэг.

---

10.1 Path Syntax — Замын үндсэн синтаксууд

Зам бичихэд ашиглагддаг 3 гол тэмдэг бий:

1. **Slash** — `/` эсвэл `\`

   * Хавтас, файлын нэрийг хооронд нь тусгаарлагч (*path separator*)

2. **Single dot (`.`)**

   * Одоогийн директорыг заана

3. **Double dot (`..`)**

   * Эцэг директорыг (parent directory) заана

**Жишээ код**

```text
public/index.html
./favicon.ico
../src/index.css
```

---
10.2 Absolute Path — Абсолют зам

Абсолют зам гэдэг нь нөөцөд хүрэх **бүрэн**, бүх түвшний замыг агуулсан холбоос.

* Root directory-гээс эхэлнэ
* Бүх дэд хавтаснуудыг багтаана
* Файлын нэр, өргөтгөлтэйгээ дуусна
* Вэб дээр бол протокол (`http`, `https`, `file`) болон домайн нэрийг заавал хамруулна

**Жишээ — freeCodeCamp лого руу абсолют холбоос**

```html
<a href="https://design-style-guide.freecodecamp.org/img/fcc_secondary_small.svg">
  View fCC Logo
</a>
```

Абсолют зам нь:

* Вэб дээрх гаднын нөөц рүү холбогдох
* URL бүрэн заагдах шаардлагатай үед
* Аль ч хавтаснаас ижил замаар нэвтрэх хэрэгтэй үед

ашиглагддаг.

---

10.2.1 Relative Path — Харьцангуй зам

Харьцангуй зам нь нөөцийн байршлыг **одоогийн файлын байрлалаас хамааран** заадаг.

* Протокол байхгүй
* Домайн нэр байхгүй
* Дотоод холбоос (internal link) хийхэд хамгийн тохиромжтой
* Богино, уян хатан

**Жишээ — contact.html хуудсаас about.html руу холбох**

```html
<p>
  Read more on the
  <a href="about.html">About Page</a>
</p>
```

Энд:

* `contact.html` ба `about.html` нь ижил хавтас дотор байрладаг
* Зам богино, ойлгомжтой

Хэрэв about.html нь өөр хавтас дотор байсан бол:

* `./folder/about.html`
* `../parent-folder/about.html` гэх мэт бичигдэнэ.

---

11. Link states — Холбоосын төлвүүд

HTML-ийн холбоосууд (`<a>` элемент) хэрэглэгчийн үйлдлээс хамааран **өөр өөр төлөвт** ордог.
CSS-д эдгээр төлвийг *pseudo-class* хэлбэрээр тодорхойлдог.

---

11.1 `:link` — Үндсэн төлөв (зочлоогүй линк)

`:link` нь хэрэглэгч тухайн линк дээр:

* зочлоогүй
* дараагүй
* ямар ч харилцан үйлдэл хийгээгүй

байгаа анхны төлөв юм.

Энэ төлөв нь **бүх холбоосын үндсэн стиль**-ийг тодорхойлдог бөгөөд бусад төлвүүд үүн дээр нэмэгдэж өөрчлөгдөнө.

---

11.2 `:visited` — Зочилсон линк

Хэрэглэгч тухайн линктэй хуудас руу **аль хэдийн орсон** бол энэ төлөв үйлчилнэ.

* Үндсэн өнгө → **ягаан/purple**
* CSS ашиглан өөр өнгө, өөр стиль өгч болно (`color`, `text-decoration` гэх мэт)

HTML link privacy хамгаалалтаас шалтгаалан зарим CSS шинжүүдийг (`padding`, `background`, `transform`) `:visited` төлөвт ашиглах боломжгүй.

---

11.3 `:hover` — Дээгүүр хулгана гүйлгэх төлөв**

Хэрэглэгч курсороо линк дээр **дээр нь авчирч байрлуулсан** үед идэвхждэг.

Энэ төлөв нь:

* линкийг илүү тодруулах
* хэрэглэгч товших гэж буйг ойлгомжтой болгох

зэрэгт ашиглагдана.

Жишээ: underline нэмэх, өнгө солих, cursor өөрчлөх гэх мэт.

---

11.4 `:focus` — Анхаарал төвлөрсөн төлөв**

Энэ төлөв нь линк **анхаарлын фокус** авсан үед үйлчилнэ.

Фокус нь:

* Tab товч ашиглан навигац хийх үед
* Элемент сонгогдох үед
* Keyboard accessibility-д

маш чухал үүрэгтэй.

Ихэвчлэн outline гарч ирдэг (дэлгэц уншигчид болон keyboard хэрэглэгчдэд шаардлагатай).

---

11.5 `:active` — Идэвхжүүлж буй төлөв (товшиж буй агшин)

`:active` төлөв нь хэрэглэгч:

* линк дээр дараад
* товч нь хараахан тавигдаагүй (mousedown–mouseup хооронд)

байх тэр агшинд байдаг.

Энэ нь ихэвчлэн товшилт хийгдэж буйг харагдуулах зорилготой.

Жишээлбэл:

* өнгө түр өөрчлөгдөх
* товч шиг доош дарсан мэт харагдах

---









