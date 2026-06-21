**CSS Combinator-уудын төрлүүд юу вэ?**

**CSS combinator**-ууд нь CSS-д сонгогч (selector)-уудын хоорондын **харилцааг тодорхойлоход** ашиглагддаг. Эдгээр нь элементүүдийг бусад элементүүдтэй нь **ямар холбоотой байгаагаар нь** сонгон авч загварчлах боломж олгодог тул илүү **нарийн, үр ашигтай styling** хийхэд тустай.

Одоо үндсэн CSS combinator-ууд болон тэдгээрийн **ашиглах нөхцөл (use case)**-үүдийг авч үзье. Эхлээд **descendant combinator**-оос эхэлье.

---

1. "Descendant combinator (унаган үргэлжлэлтэй сонгогч)"

**Descendant combinator** нь хоёр дахь сонгогчоор таарах элемент нь эхний сонгогчоор таарах элементийн **дотор (nested)** байрлаж байвал сонгон авдаг.

Энд:

* **ancestor** гэдэг нь эцэг (parent) элемент,
* эсвэл эцэг элементийн эцэг (grandparent) байж болно.

Жишээг харцгаая:

```html
<link rel="stylesheet" href="styles.css">

<figure>
  <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="Relaxing Cat">
  <figcaption>A relaxing cat with a border</figcaption>
</figure>
```

```css
figure img {
  border: 4px solid red;
}
```

Энэ жишээнд descendant combinator ашиглан `figure` элементийн **дотор байгаа бүх `img` элементүүдийг** сонгож, дөрвөн талаас нь **улаан өнгийн solid border** хэрэглэж байна.

Анхаарах зүйл:

* Эцэг (`figure`) болон үр хүүхэд (`img`) сонгогчийн хооронд **зай (space)** ашигладаг.

Энд `figure` нь parent, `img` нь child болж байна.

Хэрэв `figure` элементийн дотор **олон зураг (`img`)** байсан бол descendant combinator ашигласнаар бүгдэд нь ижил border хэрэгжүүлэхэд тохиромжтой.

---

2. "Child combinator (`>`)"

Child combinator (`>`) нь тодорхой нэг элементийн **зөвхөн шууд child** (direct child) элементүүдийг сонгон авна.

Энэ нь:

* зөвхөн яг тухайн parent-тэй элементүүдийг онилдог,
* илүү гүн nested элементүүдэд санамсаргүй загвар орохоос сэргийлдэг.

HTML жишээ:

```html
<div class="container">
  <p>First</p>
  <div>
    <p>Second</p>
  </div>
  <div>
    <p>Third</p>
  </div>
</div>
```

Энд:

* `.container` класстай `div` байна,
* түүний шууд child нь `"First"` гэсэн `p`,
* харин `"Second"` болон `"Third"` нь өөр `div`-ийн дотор байгаа тул **гүн descendant** юм.

Зөвхөн шууд child-д загвар өгөх бол:

```html
<link rel="stylesheet" href="styles.css">

<div class="container">
  <p>First</p>
  <div>
    <p>Second</p>
  </div>
  <div>
    <p>Third</p>
  </div>
</div>
```

```css
.container > p {
  color: blue;
}
```

Энэ дүрэм нь:

* зөвхөн `.container`-ийн **шууд child `p`**-д
* текстийн өнгийг **цэнхэр** болгоно.

Бусад хоёр `p` элемент нь `div`-ийн дотор байгаа тул **direct child биш** гэж тооцогдож, цэнхэр өнгө авахгүй.

---

3. "Next-sibling combinator (`+`)"

**Next-sibling combinator (`+`)** нь тухайн элементийн **дараагийн яг залгаа sibling** элементийг сонгон авна.

Энэ combinator нь:

* нэг элементийн **дараа шууд орж ирж буй** элементийг онилж,
* байршлаас нь хамаарсан нарийн загвар хийхэд тохиромжтой.

HTML жишээ:

```html
<figure>
  <img
    src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg"
    alt="A cute orange cat lying on its back."
  />
  <figcaption>A cute orange cat lying on its back.</figcaption>
</figure>
```

Энд:

* `img` элементийн **шууд дараах sibling** нь `figcaption` байна.

`figcaption`-д хар хүрээ өгөх бол:

```html
<link rel="stylesheet" href="styles.css">

<figure>
  <img
    src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg"
    alt="A cute orange cat lying on its back."
  />
  <figcaption>A cute orange cat lying on its back.</figcaption>
</figure>
```

```css
img + figcaption {
  border: 4px solid black;
}
```

Энд:

* `img + figcaption` нь `img`-ийн **дараах шууд sibling** болох `figcaption`-ийг сонгож,
* 4px-ийн **хар өнгийн solid border** хэрэглэж байна.

---

4. "Subsequent-sibling combinator (`~`)"

**Subsequent-sibling combinator (`~`)** нь тухайн элементийн **дараа байрлах бүх sibling элементүүдийг** сонгон авна.

`+` combinator нь зөвхөн нэг, дараагийн sibling-ийг сонгодог бол
`~` combinator нь **дараалж орсон бүх sibling**-үүдийг сонгох боломж олгодог.

HTML жишээ:

```html
<div class="container">
  <h2>Subheading</h2>
  <p>First paragraph.</p>
  <p>Second paragraph.</p>
  <p>Third paragraph.</p>
  <p>Another paragraph element</p>
</div>
```

Энд:

* `h2` элементийн дараа дөрвөн `p` элемент байна,
* эдгээр `p` элементүүд нь бүгд `h2`-ийн sibling юм.

`h2`-ийн дараах бүх `p` элементүүдийг загварчлах бол:

```html
<link rel="stylesheet" href="styles.css">

<div class="container">
  <h2>Subheading</h2>
  <p>First paragraph.</p>
  <p>Second paragraph.</p>
  <p>Third paragraph.</p>
  <p>Another paragraph element</p>
</div>
```

```css
h2 ~ p {
  color: green;
}
```

Энэ дүрэм нь:

* `h2`-ийн **дараа орж ирсэн бүх `p` sibling** элементүүдэд
* текстийн өнгийг **ногоон** болгоно.

Эдгээр нь заавал шууд sibling байх албагүй, **дарааллаар дараа байрласан байхад л хангалттай**.

---

## **Дүгнэлт**

CSS combinator-уудыг зөв ойлгож, зөв ашигласнаар та:

* HTML элементүүдэд **илүү нарийн**, **зорилтот** загвар өгөх,
* дизайны **уян хатан байдал** болон **хяналтыг** нэмэгдүүлэх
  боломжтой.

Эдгээр selector-уудыг сайн эзэмшвэл:

* илүү **нарийн төвөгтэй**,
* илүү **оновчтой**
  styling дүрмүүдийг бичиж, вэб хуудсынхаа **харагдах байдал** болон **ашиглах боломжийг** мэдэгдэхүйц сайжруулж чадна.
