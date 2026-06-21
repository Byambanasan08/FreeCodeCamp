**Tree-structural Pseudo-classes-ийн жишээнүүд юу вэ?**

**Tree-structural pseudo-class**-ууд нь элементүүдийг **баримт бичгийн модон бүтэц (document tree)** доторх байрлалаар нь сонгож стильдэх боломжийг олгодог. **Document tree** гэдэг нь HTML баримт бичиг доторх элементүүдийн **шаталсан (hierarchical) бүтэц** юм.

Tree-structural pseudo-class-уудын жагсаалт:

* **:root**
* **:empty**
* **:nth-child(n)**
* **:nth-last-child(n)**
* **:first-child**
* **:last-child**
* **:only-child**
* **:nth-of-type**
* **:first-of-type**
* **:last-of-type**
* **:only-of-type**

Одоо эдгээр tree-structural pseudo-class бүрийг жишээтэй нь хамт илүү дэлгэрэнгүй авч үзье.

1. :root pseudo-class** нь ихэвчлэн **html root элемент**-ийг илэрхийлдэг. Энэ нь баримт бичгийн **хамгийн дээд түвшний элемент**-ийг сонгож, **бүх баримт бичигт нийтлэг стиль** хэрэгжүүлэхэд ашиглагддаг.

<link rel="stylesheet" href="styles.css" />
<h1>Welcome to My Website</h1>
<p>This is a sample paragraph to demonstrate the :root pseudo-class.</p>

----css----

:root {
  background: black;
  color: aliceblue;
}

**:root pseudo-class**-ийг мөн **CSS variable**-уудыг тодорхойлоход өргөн ашигладаг:

```
:root {
  --main-font: 'Arial, sans-serif';
  --primary-color: blue; 
  --secondary-color: green; 
}
```

**CSS variable** ашигласнаар та утгуудыг хадгалж, тэдгээрийг stylesheet дотор **дахин ашиглах боломжтой** болно. Та эдгээрийн талаар дараагийн хичээлүүдэд илүү дэлгэрэнгүй судлах болно.

2. **Empty element** буюу **white space-ээс өөр child элементгүй элементүүд** мөн document tree-д багтдаг. Тиймээс **:empty pseudo-class** нь **хоосон элементүүдийг** сонгоход ашиглагддаг.

Жишээлбэл, дараах HTML кодонд **хоёр хоосон list item** байна. **:empty pseudo-class** ашиглан та эдгээр хоосон list item-уудыг **өөрөөр стильдэх боломжтой**.

<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>

---css---
:empty {
  background: black;
}

Хоосон **list item**-уудтай ажиллах хамгийн практик арга нь тэдгээрийг **огт харагдуулахгүй байх** явдал юм.

<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li></li> <!-- This list is empty -->
  <li>Item 2</li>
  <li></li> <!-- Another empty list -->
  <li>Item 3</li>
</ul>

--css---
:empty {
  display: none;
}

3. :nth-child(n) нь элементүүдийг **parent доторх байрлалынх нь дагуу** сонгох боломжийг олгодог бол **:nth-last-child(n)** нь **сүүлээс нь тоолж** элементүүдийг сонгох боломжийг олгодог. **n** нь тодорхой тоо байж болно, эсвэл **odd**, **even** зэрэг keyword байж болно. Энэ нь **хүснэгтийн нүднүүдийг байрлалаар нь стильдэхэд** маш хэрэгтэй байдаг, жишээлбэл **тэгш (even)** болон **сондгой (odd)** байрлалтай элементүүдийг өөр өөрөөр стильдэхэд.

Доорх нь **жимсний үнийн жагсаалттай хүснэгтийн HTML жишээ** юм. CSS нь **:nth-child pseudo-class** ашиглан хүснэгтийн нүднүүдийг **odd болон even байрлалын дагуу** сонгож стильдэж байна.

<link rel="stylesheet" href="styles.css" />
<table>
  <tr>
    <th>Item</th>
    <th>Price</th>
  </tr>
  <tr>
    <td>Apple</td>
    <td>$1.00</td>
  </tr>
  <tr>
    <td>Banana</td>
    <td>$0.50</td>
  </tr>
  <tr>
    <td>Orange</td>
    <td>$0.80</td>
  </tr>
</table>

---css---

th,
td {
  border: 1px solid lightgray;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: orangered;
}

tr:nth-child(odd) {
  background-color: lightgreen;
}

4. :first-child**, **:last-child**, болон **:only-child** pseudo-class-ууд нь **parent container доторх элементүүд дээр** эсвэл бүх баримт бичгийн хүрээнд ажилладаг.

* **:first-child** — parent элемент эсвэл баримт бичиг доторх **эхний элементийг** сонгоно.
* **:last-child** — parent элемент эсвэл баримт бичиг доторх **сүүлийн элементийг** сонгоно.
* **:only-child** — parent элемент эсвэл баримт бичиг дотор **ганцхан байгаа элементийг** сонгоно.

Доорх жишээнд **:first-child** болон **:last-child** pseudo-class-уудыг ашигласнаар **Item 1** болон **Item 3** хоёрыг сонгох болно.

<link rel="stylesheet" href="styles.css" />
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>

---css---
li:first-child {
  background-color: orangered;
}

li:last-child {
  background-color: lightgreen;
}

Хэрэв хуудсан дээр **олон unordered list** байвал сонголтоо **илүү тодорхой (specific)** болгох шаардлагатай.

5. :only-child pseudo-class** хэрхэн ажилладгийг харуулахын тулд дараах HTML жишээг авч үзье. Энд **хоёр тусдаа div элемент** байна. **:only-child pseudo-class** ашигласнаар **зөвхөн нэг child элементтэй div** сонгогдоно.

<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div>This is the only item in this container.</div>
</div>

<div class="container">
  <div>This is one of two items in this container.</div>
  <div>Here is the second item.</div>
</div>

---css---

.container div:only-child {
  border: 2px solid crimson;
  padding: 10px;
  background-color: lightblue;
}

6. :first-of-type** болон **:last-of-type** pseudo-class-ууд нь **parent элемент доторх тодорхой төрлийн элементийн эхний болон сүүлийн давталтыг** сонгодог. Эдгээр нь тухайн төрлийн элементийн **эхний эсвэл сүүлийн хувилбарт онцгой стиль** хэрэгжүүлэхэд ашигтай байдаг.

Доорх жишээнд **:first-of-type** болон **:last-of-type** нь **section элемент доторх эхний болон сүүлийн элементэд** хэрэгжиж байна.

<link rel="stylesheet" href="styles.css" />

<section>
  <h2>Introduction</h2>
  <p>This is the first paragraph in the first section</p>
  <p>This is the second paragraph in the first section</p>
</section>
<section>
  <h2>Details</h2>
  <p>This is the first paragraph in the second section.</p>
  <p>This is the second paragraph in the second section.</p>
</section>

---css---

section p:first-of-type {
  background-color: lightgreen;
}

section p:last-of-type {
  background-color:lightblue;
}

7. :nth-of-type(n)** нь **parent элемент доторх ижил төрлийн sibling элементүүдийн дундах байрлалаар** тодорхой элементийг сонгох боломжийг олгодог. Жишээлбэл, доорх HTML кодонд **:nth-of-type(2)** нь контейнер доторх **хоёр дахь элемент**-ийг сонгож байна.

<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>First paragraph</p>
  <p>Second paragraph</p>
  <p>Third paragraph</p>
</div>

--css---
p:nth-of-type(2) {
  color: red;
  font-weight: bold;
}

8. :only-of-type** pseudo-class нь тухайн элемент **parent доторх өөрийн төрлийн цорын ганц элемент** байх үед түүнийг сонгодог. Энэ нь **ганц элементүүдийг онцлон харуулах** эсвэл тухайн элемент **бүлэгт хамаарахгүй үед өөрөөр стильдэхэд** ашигтай байж болно.

Доорх жишээнд **хоёр div элемент** байгаа бөгөөд тэдгээрийн нэг нь **ганц элементтэй** байна. CSS нь **зөвхөн эхний контейнер дээр** хэрэгжинэ.

<link rel="stylesheet" href="styles.css" />

<div class="container">
  <p>The only paragraph</p>
</div>

<div class="container">
  <p>The first paragraph</p>
  <p>The second paragraph</p>
</div>

---css---
p:only-of-type {
  border: 4px solid green;
}



