**Location Pseudo-classes-ийн жишээнүүд юу вэ?**

**Location pseudo-class**-ууд нь **линкүүдийг стильдэх** болон **одоогийн баримт бичиг дотор чиглэгдсэн элементүүдийг** сонгоход ашиглагддаг. Эдгээр нь линк **зочилсон эсэх**, эсвэл **ямар элемент одоогоор URL-аар заагдсан байгааг** үндэслэн стиль хэрэгжүүлэх боломжийг олгодог.

Location pseudo-class-уудын жишээ:

* **:link**
* **:visited**
* **:any-link**
* **:local-link**
* **:target**

Одоо эдгээр pseudo-class бүрийг илүү дэлгэрэнгүй авч үзье.

**:link pseudo-class** нь веб хуудсан дээрх **зочлоогүй (unvisited) бүх линкүүдийг** сонгох боломжийг олгодог. Үүнийг хэрэглэгч линк дээр дарахаас өмнө өөрөөр стильдэхэд ашиглаж болно. Жишээлбэл, зочлоогүй бүх линкүүдийг **цэнхэр** эсвэл вэбсайтын **үндсэн өнгөөр** харуулах боломжтой.

<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>

---css---

a:link {
  color: magenta;
}

Энэ жишээнд хэрэглэгч **дараагүй байгаа бүх линкүүд magenta өнгөтэй** харагдана. Хэрэглэгч линк дээр дарах үед **:link стиль хэрэгжихээ больж**, оронд нь **:visited pseudo-class** идэвхжинэ.

**:visited pseudo-class** нь хэрэглэгч **өмнө нь дарсан линкүүдийг** сонгоход ашиглагддаг.

<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>

---css---

a:visited {
  color: purple;
}

Доорх жишээнд **зочилсон линкүүдийн өнгийг purple болгож** өөрчилж байна. **:visited pseudo-class** нь хэрэглэгчдэд **аль линкүүдийг өмнө нь үзсэн**, аль линкүүдийг **хараахан үзээгүй** байгааг ялгахад тусалдаг.

**:any-link pseudo-class** нь **:link** болон **:visited pseudo-class**-уудын хослол юм. Өөрөөр хэлбэл **href attribute-тэй бүх anchor элементүүдтэй** таарч ажиллана, зочилсон эсэхээс үл хамаарна.

Доорх жишээнд **:any-link pseudo-class** ашиглан линкүүдийн өнгийг **crimson** болгож өөрчилж байна.

<link rel="stylesheet" href="styles.css" />
<a target="_blank" href="https://www.example.com">Visit Example.com</a>

---css---
a:any-link {
  color: crimson;
}


**:local-link pseudo-class** нь **өөрийн баримт бичиг рүү заасан линкүүдийг** сонгодог. Энэ нь **дотоод линкүүдийг (internal links)** гадаад линкүүдээс ялгаж стильдэхэд ашигтай байж болно. Гэхдээ одоогийн байдлаар **ямар ч browser :local-link pseudo-class-ийг дэмждэггүй**.

**:target pseudo-class** нь **одоогийн URL fragment identifier**-тэй (жишээлбэл **#section1**) таарч байгаа элементийг сонгодог. Энэ нь **нэг хуудас доторх navigation (in-page navigation)** бүхий хуудсанд маш хэрэгтэй байдаг.

Доорх HTML жишээ нь **нэг хуудасны navigation**-ийг харуулж байна. CSS нь **:target pseudo-class** ашиглан хэрэглэгч очсон хэсгийг стильдэж байна.

<link rel="stylesheet" href="styles.css" />
<nav id="table-of-contents">
  <ul>
    <li><a href="#section1">Introduction</a></li>
    <li><a href="#section2">Features</a></li>
  </ul>
</nav>

<section id="section1">
  <h2>Introduction</h2>
  <p>This is the introduction section.</p>
</section>

<section id="section2">
  <h2>Features</h2>
  <p>This section describes the features.</p>
</section>
---css---
section:target {
  background-color: green;
  border: 2px solid green;
  padding: 10px;
}

Хэрэглэгч navigation линкүүдийн аль нэг дээр дарахад тухайн **section-ийн background өнгө ногоон** болж өөрчлөгдөнө.
