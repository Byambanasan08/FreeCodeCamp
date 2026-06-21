2. Absolute ба Relative замын ялгаа юу вэ?

Зам (path) гэдэг нь файл эсвэл сангийн байршлыг заадаг string юм. Веб хөгжүүлэлтэд замыг ашиглаж зураг, stylesheet, script, бусад вэб хуудсууд зэрэг нөөцөд(resource) холбогдоно. Файлын байршлыг тодорхойлоход **absolute** болон **relative** гэсэн хоёр төрлийн зам ашиглагдана. Аль нь ямар үед тохирохыг доор харъя.

---

### **Absolute Path гэж юу вэ?**

Absolute path нь ямар ч товчлолгүй, **бүрэн зам** юм. Энэ нь root directory-оос эхэлж, дамжин өнгөрөх бүх сангуудыг(directories), эцэст нь файлын нэр болон өргөтгөлийг агуулна.

Веб дээр absolute path нь протокол (http, https, file) болон domain name-ийг агуулдаг.

Жишээ:

```html
<a href="https://design-style-guide.freecodecamp.org/img/fcc_secondary_small.svg">
  View fCC Logo
</a>
```

* Протокол: **https**
* Домэйн нэр: **design-style-guide.freecodecamp.org**
* Файлын нэр: **fcc_secondary_small.svg**

---

### **Absolute Path — Локал файл руу холбогдох жишээ**

Компьютер дээрх файлыг absolute path-аар заахад:

```html
<p>
  Read more on the
  <a
    href="/Users/user/Desktop/fCC/script-code/absolute-vs-relative-paths/pages/about.html"
    >About Page</a
  >
</p>
```

Энд дараах дарааллаар сангуудаар орж файлыг олж байна:

Users → user → Desktop → fCC → script-code → absolute-vs-relative-paths → pages → about.html

Браузерын address bar дээр absolute URL нь дараах байдлаар харагдана:

```
file:///Users/user/Desktop/fCC/script-code/absolute-vs-relative-paths/pages/about.html
```

* Протокол: **file://**
* Зам: **/Users/user/Desktop/.../pages/**
* Файл: **about.html**

---

### **Relative Path гэж юу вэ?**

Relative path нь одоогийн файлтай харьцуулагдан байрлал заана. Энэ нь протокол болон домэйн нэр агуулдаггүй тул илүү богино, уян хатан.

Жишээ: `contact.html` болон `about.html` хоёр нэг хавтсанд байгаа бол:

```html
<p>
  Read more on the
  <a href="about.html">About Page</a>
</p>
```

Одоогийн хуудас (`contact.html`) ямар хавтсанд байгааг үндэслэн браузер `about.html`–ыг олно.

---

### **Absolute ба Relative Path-ыг хэзээ ашиглах вэ?**

#### ✔ Absolute Path ашиглах үед:

* Гадаад веб сайтын resource руу холбох үед
* Сайтын аль ч байрлалаас тогтвортой ажиллах шаардлагатай холбоос бүтээх үед

#### ✔ Relative Path ашиглах үед:

* Нэг веб сайтын доторх дотоод файлуудад холбогдох үед
* Кодоо цэвэр, уншихад хялбар байлгахыг хүсвэл
* Локал хөгжүүлэлтэд (интернетгүй үед ч холбоос ажиллахыг баталгаажуулахын тулд)

---
