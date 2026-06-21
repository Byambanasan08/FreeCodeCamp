**Margin ба Padding гэж юу вэ, мөн тэд хэрхэн ажилладаг вэ?**

**Margin** болон **padding** нь CSS-д вэб хуудсыг **бүтэцтэй, уншихад хялбар, харагдах байдлаараа цэгцтэй** болгоход зайлшгүй хэрэгтэй шинж чанарууд юм.

* **Margin** нь элементийн **гаднах зайг** удирдаж, түүнийг бусад элементүүдээс тусгаарлан, layout-ийн бүтцийг тодорхойлдог.
* **Padding** нь элементийн **доторх зайг** удирдаж, контентыг хүрээнээс нь зайтай байрлуулснаар уншихад илүү эвтэйхэн, гоо зүйн хувьд сайхан харагдуулдаг.

Margin болон padding-ийн ялгааг илүү сайн ойлгохын тулд жишээнүүдийг авч үзье.

---

### **HTML жишээ**

Доорх нь хуудсан дээрх гурван paragraph элемент юм:

```html
<p>Paragraph one</p>
<p>Paragraph two</p>
<p>Paragraph three</p>
```

Paragraph бүрийн **дээд талд зай** өгөхийн тулд `margin-top` шинж чанарыг дараах байдлаар ашиглаж болно:

```html
<link rel="stylesheet" href="styles.css">

<p>Paragraph one</p>
<p>Paragraph two</p>
<p>Paragraph three</p>
```

```css
p {
  margin-top: 20px;
  border: 2px solid black;
}
```

Энэ жишээнд paragraph элемент бүрийн **дээд талд 20px margin** өгсөн байна.

Мөн margin-ийг илүү сайн харахын тулд дөрвөн талаас нь **хар өнгийн solid border** нэмж өгсөн.

---

### **Margin-ийн 4 талын шинж чанарууд**

Margin нь дараах дөрвөн тусдаа шинж чанартай:

* `margin-top`
* `margin-right`
* `margin-bottom`
* `margin-left`

Бүх дөрвөн шинж чанарыг ашигласан жишээ:

```html
<link rel="stylesheet" href="styles.css">

<span>Paragraph one</span>
<p>Paragraph two</p>
<span>Paragraph three</span>
```

```css
p {
  margin-top: 10px;
  margin-right: 20px;
  margin-bottom: 30px;
  margin-left: 40px;
  border: 2px solid black;
}
```

Энд paragraph элементийн дөрвөн талд тус тусад нь зай өгсөн бөгөөд margin-ийг харагдуулахын тулд мөн border нэмсэн байна.

---

### **Margin shorthand (товчилсон бичлэг)**

`margin` шинж чанарыг **shorthand** хэлбэрээр нэг дор 1, 2, 3, эсвэл 4 утгаар зааж өгч болно.

#### **1 утга**

Нэг утга ашиглавал тэр утга **бүх дөрвөн талд** адилхан хэрэглэгдэнэ.

```css
p {
  margin: 10px;
}
```

→ Дөрвөн талдаа 10px margin өгнө.

---

#### **2 утга**

* Эхний утга → **дээд ба доод**
* Хоёр дахь утга → **зүүн ба баруун**

```css
p {
  margin: 10px 20px;
}
```

→ Дээд/доод 10px, зүүн/баруун 20px.

---

#### **3 утга**

* Эхний утга → **дээд**
* Хоёр дахь утга → **зүүн ба баруун**
* Гурав дахь утга → **доод**

```css
p {
  margin: 10px 20px 30px;
}
```

→ Дээд 10px, зүүн/баруун 20px, доод 30px.

---

#### **4 утга**

* 1-р → **дээд**
* 2-р → **баруун**
* 3-р → **доод**
* 4-р → **зүүн**

```css
p {
  margin: 10px 20px 30px 40px;
}
```

→ Дээд 10px, баруун 20px, доод 30px, зүүн 40px.

---

## **Padding**

**Padding** нь элементийн **border-ийн дотор**, өөрөөр хэлбэл **контент ба хүрээний хоорондох зайг** тодорхойлдог.

Padding нь мөн дөрвөн талын шинж чанартай:

* `padding-top`
* `padding-right`
* `padding-bottom`
* `padding-left`

### **Padding ашигласан жишээ**

```html
<link rel="stylesheet" href="styles.css">

<span>Paragraph one</span>
<p>Paragraph two</p>
<span>Paragraph three</span>
```

```css
p {
  padding-top: 10px;
  padding-right: 20px;
  padding-bottom: 30px;
  padding-left: 40px;
  border: 2px solid black;
}
```

Энэ нь:

* дээд талд 10px,
* баруун талд 20px,
* доод талд 30px,
* зүүн талд 40px
  padding өгч байна.

Эндээс харвал:

* **padding** нь **border-ийн дотор** нөлөөлдөг,
* харин **margin** нь **border-ийн гадна** нөлөөлдөг.

---

### **Padding shorthand**

Margin-ийн адил padding ч мөн **shorthand** хэлбэртэй бөгөөд 1–4 утгаар зааж өгч болно.

```css
p {
  padding: 10px 20px 30px 40px;
  border: 2px solid black;
}
```

Энэ нь paragraph элементийн:

* дээд талд 10px,
* баруун талд 20px,
* доод талд 30px,
* зүүн талд 40px
  padding өгнө.

---

### **Дүгнэлт**

* **Margin** → элементийн **гаднах зай**, layout ба элементүүдийн хоорондын зайг удирдана
* **Padding** → элементийн **доторх зай**, контентын уншихад эвтэйхэн байдлыг сайжруулна

Эдгээрийг зөв ашигласнаар вэб хуудсууд илүү **цэгцтэй, уншихад хялбар, мэргэжлийн** харагдана.
