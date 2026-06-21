### CSS гэж юу вэ, вэб дээр ямар үүрэгтэй вэ?

**CSS** нь **Cascading Style Sheets** гэсэн үгийн товчлол бөгөөд орчин үеийн вэб хөгжүүлэлтийн **маш чухал бүрэлдэхүүн хэсэг** юм. Энэ нь HTML-д зориулан **загвар (style)** хэрэглэхэд ашиглагддаг хэл юм. Энгийнээр хэлбэл, хэрвээ **HTML** нь вэб хуудасны **бүтэц** бол, **CSS** нь түүнийг **гоё, үзэмжтэй харагдуулдаг** хэсэг юм.

---

### Navbar-д CSS ашиглан загвар өгөх жишээ

> **ТАЙЛБАР:** Одоохондоо CSS кодыг ойлгох гэж санаа зовох хэрэггүй. Та үүнийг ирээдүйн хичээл, workshop-уудаар дэлгэрэнгүй сурах болно. Энэ жишээ нь CSS-ээр **ямар боломжууд** хийж болдгийг л харуулах зорилготой.

```html
<link rel="stylesheet" href="styles.css" />

<nav class="navbar">
    <ul class="nav-links">
        <li><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Services</a></li>
        <li><a href="#">Contact</a></li>
    </ul>
</nav>
```

```css
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

body {
  font-family: 'Segoe UI', sans-serif;
  background-color: #f4f4f4;
}

.navbar {
  display: flex;
  justify-content: space-between;
  align-items: center;
  background-color: #333;
  padding: 1rem 2rem;
  color: white;
}

.navbar .logo {
  font-size: 1.5rem;
  font-weight: bold;
}

.nav-links {
  list-style: none;
  display: flex;
  gap: 1.5rem;
}

.nav-links a {
  color: white;
  text-decoration: none;
  font-weight: 500;
  transition: color 0.3s ease;
}

.nav-links a:hover {
  color: #ff9800;
}
```

---

### CSS-ийн үндсэн үүрэг

CSS-ийн **хамгийн гол үүрэг** нь:

* вэб хуудасны **контентыг (content)**
* түүний **харагдах байдал (visual presentation)**-аас салгах явдал юм.

Энэ салгалт нь:

* вэб сайтыг **уян хатан**
* **засварлахад хялбар**
  болгодог.

CSS ашигласнаар:

* layout (байрлал)
* өнгө
* фонт
* ерөнхий харагдах байдал
  зэргийг **HTML бүтцийг өөрчлөлгүйгээр** удирдах боломжтой.

---

### Энгийн зүйрлэл

Вэб сайтыг **байшин** гэж төсөөлбөл:

* **HTML** → суурь, араг бүтэц
* **CSS** → будаг, ханын цаас, чимэглэл

өөрөөр хэлбэл CSS нь байшинг **үзэмжтэй, өвөрмөц** болгодог.

---

### CSS хэрхэн ажилладаг вэ?

CSS нь:

* HTML элементүүдийг **сонгож (select)**
* тэдгээрт **загварын дүрмүүд (styles)** хэрэглэдэг.

---

### Загваргүй болон загвартай товч (button) жишээ

```html
<link rel="stylesheet" href="styles.css" />

<button class="regular-btn">Unstyled Button</button>
<button class="round-btn">Round Button</button>
```

```css
.round-btn {
  font-size: 1rem;
  font-family: 'Segoe UI', sans-serif;
  border: none;
  cursor: pointer;
  transition: background-color 0.3s ease, transform 0.2s ease;
  background-color: #2ecc71;
  color: white;
  border-radius: 50px;
  padding: 0.6rem 1.6rem;
}

.round-btn:hover {
  background-color: #27ae60;
  transform: translateY(-2px);
}
```

Эдгээр загварууд нь:

* өнгө
* фонтын хэмжээ
* хэлбэр
  зэрэг олон шинж чанарыг агуулж болно.

Эдгээрийг өөрчлөхөд:

* вэб хуудасны **гадаад төрх эрс өөрчлөгдөнө**
* харин **контент өөрчлөгдөхгүй**.

---

### CSS-ийн маш хүчтэй боломж: Responsive дизайн

CSS-ийн хамгийн хүчирхэг боломжуудын нэг нь **responsive дизайн** юм.

Энэ нь:

* desktop
* tablet
* smartphone
  гэх мэт **ямар ч төхөөрөмж дээр** вэб сайт гоё харагдах боломж олгодог.

CSS нь:

* layout
* фонтын хэмжээ
* бусад визуал элементүүдийг
  **дэлгэцийн хэмжээнээс хамаарч** автоматаар тохируулж чадна.

---

### Responsive layout жишээ

```html
<link rel="stylesheet" href="styles.css" />

<header class="header">
    <h1>Welcome to My Responsive Site</h1>
    <p>This layout adapts to your screen size!</p>
</header>

<main class="content">
    <section class="box">Box 1</section>
    <section class="box">Box 2</section>
    <section class="box">Box 3</section>
</main>
```

```css
body {
  margin: 0;
  font-family: 'Segoe UI', sans-serif;
  background-color: #f9f9f9;
  color: #333;
}

.header {
  background-color: #4CAF50;
  color: white;
  padding: 2rem;
  text-align: center;
}

.content {
  display: flex;
  gap: 1rem;
  padding: 1rem;
  justify-content: center;
}

.box {
  flex: 1;
  min-width: 200px;
  background-color: #ddd;
  padding: 2rem;
  text-align: center;
  font-size: 1.2rem;
  border-radius: 8px;
  transition: background-color 0.3s;
}

.box:hover {
  background-color: #ccc;
}

/* Tablet болон түүнээс доош (≤ 768px) */
@media (max-width: 768px) {
  .content {
    flex-direction: column;
    align-items: center;
  }

  .box {
    width: 90%;
    font-size: 1.1rem;
  }
}

/* Гар утас (≤ 480px) */
@media (max-width: 480px) {
  .header {
    padding: 1.5rem 1rem;
  }

  .header h1 {
    font-size: 1.5rem;
  }

  .header p {
    font-size: 1rem;
  }

  .box {
    font-size: 1rem;
    padding: 1.5rem;
  }
}
```

---

### CSS-ийн “cascading” шинж

CSS нэрэндээ байгаа **“cascading”** гэдэг нь:

* загварууд **унаж дамжих (inherit)**
* мөн **давхарлан дарах (override)** боломжтой
  гэдгийг илэрхийлдэг.

Ингэснээр:

* загварын **шаталсан бүтэц**
* илүү уян хатан удирдлага
  үүсдэг.

Та үүнийг ирээдүйн хичээлүүдээр дэлгэрэнгүй сурах болно.

---

### External stylesheet (гадаад CSS файл)

CSS нь:

* загваруудыг **тусдаа файлд** хадгалах боломж олгодог.

Нэг CSS файлыг:

* олон HTML хуудсанд холбож ашиглаж болно.

Ингэснээр:

* том вэб сайтуудын **арчилгаа маш хялбар** болно
* нэг л CSS файлд өөрчлөлт хийхэд
* бүх холбогдсон хуудсанд **нөлөөлнө**.

---

### Дүгнэлт

Вэб хөгжүүлэлтийн ертөнцөд **CSS** нь:

* үзэмжтэй
* responsive
* хэрэглэгчдэд ээлтэй
  вэб сайтууд бүтээхэд **чухал үүрэгтэй**.

CSS нь:

* энгийн HTML баримтыг
* хэрэглэгчийн анхаарлыг татах
* харилцахад таатай
  **жинхэнэ вэб туршлага** болгон хувиргадаг.
