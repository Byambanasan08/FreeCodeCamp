### ARIA Roles гэж юу вэ?

> **ТАЙЛБАР:** Эдгээр интерактив жишээнүүдийн зарим нь CSS болон JavaScript код агуулж байж магадгүй. Кодыг яг одоо ойлгох гэж санаа зовох хэрэггүй. Урьдчилсан харагдацууд (preview) нь хичээлд тайлбарлагдсан гол санаануудыг илүү ойлгомжтой болгох зорилготой. Урьдчилсан харагдацыг харахын тулд интерактив редакторыг идэвхжүүлэх шаардлагатай.

**ARIA** гэдэг нь **Accessible Rich Internet Applications** гэсэн үгийн товчлол юм.

**ARIA role**-ууд нь HTML элементүүдийн **семантик утгыг** тодорхойлдог. Эдгээр нь screen reader зэрэг туслах технологи(assistive technologies) ашигладаг хүмүүст вэб контентыг хүртээмжтэй болгоход зайлшгүй шаардлагатай.

HTML элементүүд нь:

* **семантик (semantic)**
* **семантик бус (non-semantic)**
  гэсэн хоёр төрөлтэй байдаг бөгөөд энэ нь тухайн элемент агуулгынхаа утгыг илэрхийлж чадаж байна уу, үгүй юу гэдгээс хамаарна.

---

### HTML ба ARIA role

Олон **семантик HTML элементүүд** анхнаасаа ARIA role-той байдаг.
Жишээлбэл, `button` элемент нь анхнаасаа **`button` ARIA role**-той.

```html
<button>Example button</button>
```

Харин **семантик бус элементүүд** role-гүй байдаг. Жишээ нь, хэрэв та `div` элементэд role зааж өгөхгүй бол screen reader нь тухайн элементийн зорилгыг ойлгож чадахгүй.

```html
<div>
  <!-- more elements go here -->
</div>
```

---

### ARIA role хэрхэн зааж өгөх вэ?

ARIA role заахын тулд `role` атрибутыг ашиглана. Синтакс нь:

```
role="ARIA role"
```

Энд `ARIA role` нь ARIA specification-д тодорхойлогдсон role-ийн нэр байна.

Жишээ нь, `alert` role ашиглах:

```html
<link rel="stylesheet" href="styles.css">

<div class="alert" id="exp-warning" role="alert">
  <span class="hidden">Your log in session will expire in 3 minutes.</span>
</div>
```

```css
.alert {
  background-color: #fff3cd;
  border: 1px solid #ffeeba;
  color: #856404;
  padding: 1em;
  margin-top: 1em;
  border-radius: 4px;
  font-weight: bold;
}

.alert span {
  display: inline-block;
}
```

---

### Чухал ойлголт

ARIA role зааж өгөх нь **зөвхөн нэг л зүйл хийдэг**:

> Туслах технологид тухайн элементийн **зорилгыг мэдээлдэг**

ARIA role нь:

* ямар ч **функциональ байдал**
* ямар ч **зан үйл (behavior)**
  нэмдэггүй.

Хэрэв хэрэглэгч тухайн role-той элемент тодорхой байдлаар ажиллана гэж хүлээж байвал, тэр үйлдлийг **хөгжүүлэгч та өөрөө** хэрэгжүүлэх ёстой.

Жишээлбэл:

* `div` элементэд `role="button"` өгсөн ч
* энэ нь автоматаар mouse-оор дарагддаг, keyboard-оор ашиглагддаг товч болдоггүй

Ийм behavior-ийг нэмэх нь хөгжүүлэгчийн үүрэг бөгөөд ихэнх тохиолдолд **шууд `button` HTML элементийг ашиглах нь илүү зөв**.

---

### ARIA role-уудын үндсэн 6 ангилал

ARIA role-ууд дараах **зургаан үндсэн ангилалд** хуваагдана:

1. **Document structure roles**
2. **Widget roles**
3. **Landmark roles**
4. **Live region roles**
5. **Window roles**
6. **Abstract roles**

Одоо эдгээрийг тус бүрд нь авч үзье.

---

## 1. Document structure roles

Эдгээр role-ууд нь вэб хуудасны **ерөнхий бүтцийг** тодорхойлдог. Ингэснээр туслах технологиуд хэсгүүдийн хоорондын харилцааг ойлгож, хэрэглэгчдэд навигаци хийхэд тусалдаг.

Гэхдээ орчин үеийн вэб хөгжүүлэлтэд эдгээр role-уудын ихэнхийг ашиглах шаардлагагүй болсон. Учир нь браузерууд:

* түүнтэй дүйцэх **семантик HTML элементүүдийг**
* аль хэдийн дэмждэг

Тиймээс **боломжтой үед семантик HTML элементүүдийг нэн тэргүүнд ашиглах ёстой**.

Гэхдээ семантик элементтэй дүйцэхгүй role-ууд бий. Жишээлбэл:

* `toolbar`
* `tooltip`
* `feed`
* `math`
* `presentation`
* `none`
* `note`

Эдгээр нь хамгийн түгээмэл хэрэглэгддэгүүд юм.

`math` role-ийн жишээ:

```html
<link rel="stylesheet" href="styles.css">

<div role="math" aria-label="x squared + y squared = 3">
  x<sup>2</sup> + y<sup>2</sup> = 3
</div>
```

```css
.math-expression {
  font-family: "Times New Roman", serif;
  font-size: 1.2rem;
  background-color: #f4f4f4;
  border-left: 4px solid #007acc;
  padding: 0.75em 1em;
  margin-top: 1em;
  display: inline-block;
}

.math-expression sup {
  font-size: 0.8em;
}
```

Энд `aria-label` атрибутын утга нь тухайн математик илэрхийллийг **текстээр илэрхийлсэн string** байх ёстой.

---

## 2. Widget roles

Widget role-ууд нь интерактив элементүүдийн **зорилго болон функциональ байдлыг** тодорхойлдог.

Жишээ widget role-ууд:

* `scrollbar`
* `searchbox`
* `separator` (focus авдаг үед)
* `slider`
* `spinbutton`
* `switch`
* `tab`
* `tabpanel`
* `treeitem`

`searchbox` role-ийн жишээ:

```html
<link rel="stylesheet" href="styles.css">

<div class="search-container" role="search">
  <label for="searchbox" class="visually-hidden">Search</label>

  <div
    id="searchbox"
    class="searchbox"
    role="searchbox"
    aria-label="Search the site"
    tabindex="0"
    contenteditable="true">
  </div>

  <button type="button" aria-label="Submit search">Search</button>
</div>
```

```css
.search-container {
  display: flex;
  align-items: center;
  gap: 0.5em;
  margin-top: 1em;
}

.searchbox {
  flex: 1;
  padding: 0.5em;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 1em;
  min-height: 1.5em;
}

.searchbox:focus {
  border-color: #007acc;
  outline: none;
  box-shadow: 0 0 0 2px rgba(0, 122, 204, 0.3);
}

/* Screen reader-д үлдээж, харагдахаас нуух */
.visually-hidden {
  position: absolute;
  left: -9999px;
}
```

Эдгээр role-уудын зарим нь семантик HTML элементтэй дүйцдэг. **Хэрэв тийм элемент байвал role-оос илүү семантик элементийг ашиглах ёстой**.

Жишээ нь:

* `div role="button"`-оос илүү
* **`<button>` элемент** ашиглах нь зөв

---

## 3. Landmark roles

Landmark role-ууд нь вэб хуудасны **үндсэн хэсгүүдийг** ангилж, шошголдог. Screen reader-үүд эдгээрийг ашиглан хэрэглэгчдэд чухал хэсгүүд рүү хурдан очих боломж олгодог.

Landmark role-уудыг **хэтрүүлэн ашиглахгүй**, ерөнхий бүтэц ойлгомжтой байхаар хэрэглэх хэрэгтэй.

Жишээ landmark role-ууд:

* `banner`
* `complementary`
* `contentinfo`
* `form`
* `main`
* `navigation`
* `region`
* `search`

Эдгээр нь бүгд **HTML-тэй дүйцэх элементтэй**:

* `header`
* `footer`
* `aside`
* `form`
* `main`
* `nav`
* `section`
* `search`

Хэрэв та эдгээр HTML элементүүдийг зөв ашиглаж байвал role-ийг **тусгайлан нэмэх шаардлагагүй**.

`banner` role-ийн жишээ:

```html
<link rel="stylesheet" href="styles.css">

<div role="banner" class="site-banner">
  <h1>Accessible Web Design</h1>
  <nav>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Articles</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>
</div>
```

---

## 4. Live region roles

Live region role-ууд нь **динамикаар өөрчлөгддөг контент**-ийг тодорхойлдог. Ингэснээр screen reader болон бусад туслах технологиуд өөрчлөлтийг хэрэглэгчид зарлаж өгдөг.

Эдгээр role-ууд:

* `alert`
* `log`
* `marquee`
* `status`
* `timer`

`status` role-ийн жишээ:

```html
<div id="status-msg" role="status">
  No updates yet.
</div>
```

JavaScript-ээр контент өөрчлөгдөх үед screen reader автоматаар мэдэгдэнэ.

---

## 5. Window roles

Window role-ууд нь **дэд цонх**-уудыг (жишээ нь modal dialog) тодорхойлдог.

Эдгээр role-ууд:

* `alertdialog`
* `dialog`

Гэхдээ одоо **HTML-ийн `dialog` элементийг** ашиглах нь хамгийн зөв туршлага (best practice) гэж үздэг.

---

## 6. Abstract roles

Abstract role-ууд нь баримт бичгийг **дотоод зохион байгуулалтад** ашиглагддаг. Эдгээр нь:

* браузерт зориулагдсан
* хөгжүүлэгчид ашиглах зориулалттай биш

Тиймээс та эдгээр role-ууд **байдаг гэдгийг мэдэхэд л хангалттай**, харин вэб сайт, апп дээрээ ашиглах ёсгүй.

---

### Дүгнэлт

ARIA role-уудын тусламжтайгаар та **хүртээмжтэй, хүртээмжийг дэмжсэн** вэб сайт болон вэб аппликейшнүүдийг бүтээж чадна.

ARIA role-ууд нь HTML элементүүдийн:

* **зорилго**
* **функц**

зэргийг семантик байдлаар тодорхойлж өгдөг.

Screen reader болон бусад туслах технологиуд энэ мэдээллийг ашиглан хэрэглэгчдэд контентыг ойлгомжтой болгож, хэрхэн ашиглах талаар хүлээлт үүсгэдэг. Үүний үр дүнд хүн бүр **сайн хэрэглэгчийн туршлага (user experience)** авах боломжтой болдог.
