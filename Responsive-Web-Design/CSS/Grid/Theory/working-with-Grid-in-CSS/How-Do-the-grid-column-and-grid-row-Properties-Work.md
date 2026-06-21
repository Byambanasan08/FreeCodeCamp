### `grid-column` ба `grid-row` property хэрхэн ажилладаг вэ?

`grid-column` болон `grid-row` property-ууд нь **CSS Grid layout дотор item-ийг хаана байрлуулахыг** тодорхойлох боломж олгодог.

Өөрөөр хэлбэл эдгээр нь **grid item хаанаас эхэлж, хаана дуусахыг grid line-ууд ашиглан** зааж өгдөг.

Grid line гэдэг нь:

* мөрүүд (rows)
* баганууд (columns)

хоорондын **хил зааг** юм. Эдгээр line-ууд нь `grid-template-rows` болон `grid-template-columns` property ашиглах үед автоматаар үүсдэг.

---

## `grid-row` синтакс

```css
grid-row: <start-line> / <end-line>;
```

## `grid-column` синтакс

```css
grid-column: <start-line> / <end-line>;
```

* **start-line** → item эхлэх grid line
* **end-line** → item дуусах grid line

Grid line-ууд **1-ээс эхэлж тоологдоно** (0 биш).

---

## Grid layout жишээ

Доорх жишээнд:

* **4 багана**
* **3 мөр**

үүсгэсэн байна.

```html
<link rel="stylesheet" href="styles.css">
<div class="grid">
  <div class="item1">1</div>
  <div class="item2">2</div>
  <div class="item3">3</div>
  <div class="item4">4</div>
  <div class="item5">5</div>
  <div class="item6">6</div>
  <div class="item7">7</div>
  <div class="item8">8</div>
  <div class="item9">9</div>
  <div class="item10">10</div>
  <div class="item11">11</div>
  <div class="item12">12</div>
</div>
```

```css
.grid {
  display: grid;
  grid-template-columns: repeat(4, 1fr);
  grid-template-rows: repeat(3, 100px);
  gap: 10px;
}

.grid > div {
  display: grid;
  place-items: center;
  background: crimson;
  color: white;
  font-size: 4rem;
}
```

Энд browser **grid line-уудыг автоматаар үүсгэнэ**.

Жишээ нь:

* багана бүрийн **эхлэх line**
* **дуусах line**

гэж байдаг.

---

# `grid-column` ашиглах

Хэрэв эхний item **2 багана эзлэх** хэрэгтэй бол:

```css
.item1 {
  grid-column: 1 / 3;
}
```

Энэ нь:

* **1-р column line-ээс эхэлнэ**
* **3-р column line дээр дуусна**

Ингэснээр item **2 багана** эзэлнэ.

Үүний дараа layout автоматаар зохицож:

* дараагийн элементүүд **дараагийн боломжит байрлалд** шилжинэ.

---

# `grid-row` ашиглах

Хэрэв эхний item **2 мөр эзлэх** шаардлагатай бол:

```css
.item1 {
  grid-column: 1 / 3;
  grid-row: 1 / 3;
}
```

Энэ нь:

* **2 багана**
* **2 мөр**

эзлэх болно.

---

# `span` keyword

`span` keyword ашиглан **хэдэн мөр эсвэл багана эзлэхийг** зааж болно.

Жишээ:

```css
.item1 {
  grid-column: 1 / span 2;
  grid-row: 1 / span 2;
}
```

Энэ нь:

* column 1 дээрээс эхэлнэ
* **2 багана дамжина**

`1 / 3` = `1 / span 2` гэсэнтэй адил.

---

# Masonry layout жишээ

Grid item-уудыг хүссэн байрлалд байрлуулж болно.

```css
.item1 {
  grid-column: 1 / span 2;
}

.item4 {
  grid-column: 1 / span 3;
}

.item6 {
  grid-column: 1 / span 2;
}

.item7 {
  grid-column: 3 / span 2;
}
```

Энэ техник ашиглан **Pinterest шиг masonry layout** хийх боломжтой.

---

# Дүгнэлт

`grid-column` ба `grid-row` property-ууд нь:

* grid item-ийн **байрлалыг нарийн хянах**
* **олон багана / мөр эзлүүлэх**
* **complex layout (masonry гэх мэт)** хийх

маш чухал хэрэгсэл юм.
