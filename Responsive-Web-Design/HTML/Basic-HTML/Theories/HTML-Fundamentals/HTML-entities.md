HTML Entities гэж юу вэ, түгээмэл жишээнүүд нь юу вэ?

**HTML entity** буюу *character reference* нь HTML дотор **reserved character** (HTML-д тусгай утгатай тэмдэгт)-ийг дүрслэхэд ашиглагддаг тэмдэгтийн тусгай хэлбэр юм.

Жишээ нь та дэлгэц дээр дараах текстийг харуулахыг хүссэн гэж төсөөлцгөөе:

**This is an `<img/>` element**

Interactive editor дахь доорх кодыг ашиглавал хүссэн үр дүн гарахгүй:

```
<p>This is an <img /> element</p>
```

Яагаад гэвэл HTML parser нь **`<` тэмдэгтийн дараа tag name** ирэхийг хармагц үүнийг **HTML элемент** гэж тайлбарладаг. Тиймээс текст хэлбэрээр харагдах ёстой `<img/>` нь бодит image элемент болж боловсруулагдана.

---

## Үүнийг хэрхэн засах вэ? — HTML Entities ашиглана

Доорх жишээнд `<` болон `>` тэмдэгтүүдийг зөв HTML entity-ээр сольсон байна.
Одоо хүссэн текст — **This is an <img/> element** — дэлгэц дээр зөв харагдана.

```
<p>This is an &lt;img /&gt; element</p>
```

Interactive editor-ийг идэвхжүүлээд paragraph элементийн доор дараах кодыг нэмээд үз:

```
&lt;p&gt;learning is fun&lt;/p&gt;
```

Дэлгэц дээр дараах текст харагдана:

```
<p>learning is fun</p>
```

---

## Named Character References

Эдгээр төрлийн entity-үүдийг **named character references** гэдэг.
Тэдгээр нь:

* **ampersand (&)**-ээр эхэлнэ
* **semicolon (;)**-оор төгсөнө

Named reference ашигласнаар HTML parser үүнийг бодит HTML элементтэй андуурахгүй.

---

## Decimal Numeric References

Character reference-ийн дараагийн төрөл бол **decimal numeric reference**.

Түүний бүтэц:

* **&** (ampersand)
* **#** (hash)
* 1 эсвэл хэд хэдэн **decimal digit**
* **;** (semicolon)

Жишээ нь `<` тэмдэгтийн decimal numeric хувилбар:

```
&#60;
```

Interactive editor-ийг идэвхжүүлээд өөр тэмдэгтүүд туршиж үзээрэй:

* `&#169;` — © (copyright)
* `&#174;` — ® (registered trademark)

---

## Hexadecimal Numeric References

Character reference-ийн гурав дахь төрөл бол **hexadecimal numeric reference**.

Түүний бүтэц:

* **&**
* **#**
* **x** (hexadecimal гэдгийг илтгэнэ)
* 1 эсвэл хэд хэдэн ASCII **hex digit**
* **;**

`<` тэмдэгтийн hexadecimal хувилбар:

```
&#x3C;
```

Interactive editor-ийг идэвхжүүлээд өөр тэмдэгтүүд туршиж үзээрэй:

* `&#x20AC;` — € (euro symbol)
* `&#x03A9;` — Ω (Greek capital letter Omega)

---
