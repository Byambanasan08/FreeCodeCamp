# Breadcrumbs дизайн хийхэд баримтлах шилдэг практикууд юу вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино. Жишээнүүдийн preview-г харахын тулд interactive editor-ийг идэвхжүүлэх шаардлагатай.

Вэб дизайн хийх үед ашиглаж болох олон төрлийн **navigation хэрэгслүүд** байдаг. Жишээлбэл:

* **top navigation bar**
* **sidebar**
* **footer**

Гэхдээ хэрэв таны сайт **илүү төвөгтэй бүтэцтэй**, мөн **олон түвшний навигацитай** бол **breadcrumbs** ашиглах талаар бодож үзэх хэрэгтэй.

**Breadcrumbs** гэдэг нь хэрэглэгч сайт дотор **яг хаана байрлаж байгааг** харуулдаг навигацийн хэрэгсэл юм. Доорх нь жишээ **electronics вебсайтын mock-up** дээр breadcrumbs хэрхэн харагддагийг харуулсан жишээ юм.
-HTML
<link rel="stylesheet" href="styles.css">
<div class="breadcrumbs">
  Home / Electronics / Phones / Smartphone XYZ
</div>

-CSS
.breadcrumbs {
  font-size: 0.9rem;
  color: #555;
  margin: 1rem 0;
}

Ихэнх вэбсайтууд дээр **breadcrumbs** нь хуудасны дээд хэсэгт байрладаг бөгөөд хэрэглэгч тухайн хуудсанд хүрэхийн тулд **ямар замаар навигаци хийснийг** харуулдаг. Жишээлбэл, хэрэглэгч **Homepage**-ээс эхлээд **Electronics** ангилал руу, дараа нь **Phones** ангилал руу, эцэст нь **Smartphone XYZ** бүтээгдэхүүний хуудсанд орсон байж болно. Та бүтээгдэхүүн эсвэл тодорхой мэдээлэл хайж байхдаа вэбсайт дээр **breadcrumbs**-ийг өмнө нь ашиглаж байсан байх магадлалтай.

Breadcrumbs ашиглах нь тустай байдаг. Учир нь энэ нь хэрэглэгчид **сайтын бүтэц дотор яг хаана байгаагаа ойлгох** болон **өмнөх хуудсууд руу буцах** боломжийг олгодог. Ялангуяа хэрэглэгч **хайлтын үр дүн** эсвэл **гадаад холбоосоор** тухайн хуудсанд орж ирсэн үед энэ нь тухайн хуудасны **контекстийг ойлгоход** тусалдаг.

Breadcrumbs дизайн хийх үед анхаарах хэд хэдэн зүйл байдаг. Эхнийх нь **separator**-ийг сонгох явдал юм. **Separator** гэдэг нь hierarchy-ийн өөр өөр түвшнүүдийг **тусгаарлаж харуулдаг тэмдэгт** юм. Түгээмэл ашиглагддаг separator-уудын жишээ нь:

* **greater than sign (>)**
* **right angle quotation marks (»)**
* **forward slash (/)**

-HTML
<link rel="stylesheet" href="styles.css">
<div class="breadcrumbs">
  Home &gt; Electronics &gt; Phones &gt; Smartphone XYZ
</div>

-CSS

.breadcrumbs {
  font-size: 0.9rem;
  color: #555;
  margin: 1rem 0;
}

Хоёр дахь анхаарах зүйл бол **breadcrumbs-ийн байрлал** юм. Breadcrumbs нь ихэвчлэн хуудасны **дээд хэсэгт**, гол навигацийн мөрийн **дээр эсвэл доор** байрладаг. Хэрэглэгчид breadcrumbs-ийг олоход **хэцүү байх ёсгүй**, тиймээс тэдгээрийг **харагдахуйц, амархан олдох** байдлаар байрлуулах хэрэгтэй.
-HTML
<link rel="stylesheet" href="styles.css">
<nav class="main-nav">
  <a href="#">Home</a>
  <a href="#">Electronics</a>
  <a href="#">Phones</a>
</nav>
<div class="breadcrumbs">
  Home &gt; Electronics &gt; Phones &gt; Smartphone XYZ
</div>

-CSS

.main-nav {
  background-color: #333;
  padding: 1rem;
}

.main-nav a {
  color: white;
  margin-right: 1rem;
  text-decoration: none;
}

.breadcrumbs {
  font-size: 0.9rem;
  color: #555;
  margin: 1rem 0;
}

Өөр нэг анхаарах зүйл бол **breadcrumbs-ийн хэмжээ** юм. Breadcrumbs нь **уншихад амархан** байхуйц хангалттай том байх ёстой, гэхдээ хуудасны **хэт их зай эзлэхээр том** байх ёсгүй. Breadcrumbs нь **үндсэн навигацийн хэрэгсэл** биш, харин **хоёрдогч навигацийн туслах хэрэгсэл** гэдгийг санах хэрэгтэй. Нэг хуудсан дээр олон мэдээлэлтэй вэбсайтуудад хэрэглэгчид breadcrumbs ашиглан **hierarchy дотор яг хаана байгаагаа ойлгож**, мөн **өмнөх хуудсууд руу буцах** боломжтой байдаг.
-HTML
<link rel="stylesheet" href="styles.css">
<div class="breadcrumbs">
  Home &gt; Electronics &gt; Phones &gt; Smartphone XYZ
</div>
<p>
  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
</p>
-CSS
.breadcrumbs {
  font-size: 1rem;
  color: #555;
  margin: 1rem 0;
}   

p {
  font-size: 1.2rem;
  line-height: 1.6;
}

Тэгвэл **breadcrumbs**-ийг сайтад хэзээ ашиглах хэрэгтэй вэ? Хэрэв таны сайт **энгийн бүтэцтэй**, мөн **shallow hierarchy**-тай бол breadcrumbs шаардлагагүй байж болно. **Shallow hierarchy** гэдэг нь сайт **цөөн навигацийн түвшинтэй** гэсэн үг бөгөөд энэ тохиолдолд breadcrumbs нэмэлт үнэ цэнэ өгөхгүй байж магадгүй.

Ихэвчлэн breadcrumbs-ийг дараах төрлийн сайтуудад харж болно:

* **e-commerce сайтууд**
* **мэдээний сайтууд**
* **гүн hierarchy**-тай сайтууд (жишээ нь **техникийн баримт бичгийн сайтууд**).
