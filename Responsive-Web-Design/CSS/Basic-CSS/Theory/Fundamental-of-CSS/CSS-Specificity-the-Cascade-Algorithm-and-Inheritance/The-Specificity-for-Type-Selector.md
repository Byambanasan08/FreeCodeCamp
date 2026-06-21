**Type Selector-ын Specificity гэж юу вэ?**

Type selector (element selector гэж мөн нэрлэдэг) нь HTML элементийг **таг нэрээр нь** онилж сонгодог selector юм.

Эдгээр selector-ууд нь CSS-ийн суурь ойлголтод багтдаг бөгөөд тухайн HTML элементийн **бүх давтагдсан хувилбарт** ижил стиль хэрэгжүүлэх боломжийг олгодог.

Type selector нь хэрэглэхэд энгийн бөгөөд зөвхөн стийлдэхийг хүссэн элементийн таг нэрээр бичигддэг.

Доорх нь хуудсан дээрх бүх `p` элементүүдийг онилсон type selector-ын жишээ юм:

```html
<link rel="stylesheet" href="styles.css">

<p>Paragraph one</p>
<p>Paragraph two</p>
<p>Paragraph three</p>
```

```css
p {
  color: blue;
}
```

Энэ жишээнд бүх `p` элементүүдийн текстийн өнгө цэнхэр (`blue`) болно.

---

### Type selector-ын specificity

Type selector нь бусад selector-уудтай харьцуулахад **харьцангуй бага specificity**-тэй.

Type selector-ын specificity утга нь:

```
(0, 0, 0, 1)
```

Энэ нь type selector нь:

* class selector
* ID selector
* inline style

зэрэг **илүү өндөр specificity-тэй selector**-уудаар дарж бичигдэнэ гэсэн үг.

Гэсэн хэдий ч, дээрх selector-ууд байхгүй тохиолдолд type selector өөрийн стилийг хэвийн хэрэгжүүлнэ.

---

### Class selector type selector-ыг дарж бичих жишээ

Одоо class selector нь type selector-оос хэрхэн давж байгааг харцгаая.

Дараах жишээнд хоёр `p` элемент байна:

```html
<p class="para">I am a paragraph</p>
<p class="para">Here is another paragraph</p>
```

Эдгээр `p` элементүүд хоёулаа `para` гэсэн class-тэй.

CSS файлд:

* type selector нь бүх `p` элементүүдийг онилж,
* class selector нь `para` class-тэй элементүүдийг онилж байна.

```html
<link rel="stylesheet" href="styles.css">

<p class="para">I am a paragraph</p>
<p class="para">Here is another paragraph</p>
```

```css
p {
  color: blue;
}

.para {
  color: red;
}
```

Энэ тохиолдолд `para` class-тэй бүх `p` элементүүдийн текстийн өнгө **цэнхэр биш**, харин **улаан (`red`)** болно. Учир нь **class selector нь type selector-оос илүү өндөр specificity-тэй** юм.
