### CSS Filter Property гэж юу вэ, мөн түгээмэл жишээнүүд юу вэ?

CSS-ийн **`filter` property** нь веб хуудсан дээрх элементүүдэд график эффектүүд хэрэглэх боломж олгодог хүчирхэг хэрэгсэл юм. Энэ нь ялангуяа **зураг, background, тэр ч байтугай текстийн харагдах байдлыг** анхны файлыг өөрчлөхгүйгээр тохируулахад маш ашигтай.

`filter` property нь **blur хийх**, **өнгө өөрчлөх**, **contrast тохируулах** зэрэг олон төрлийн эффект үүсгэхэд ашиглагдаж болно. Одоо `filter` property хэрхэн ажилладаг болон түгээмэл хэрэглэгддэг зарим жишээг авч үзье.

`filter` property-ийн үндсэн синтакс нь энгийн байдаг.

```css
selector {
  filter: function(amount);
}
```

Энд `function` нь хэрэглэх гэж буй filter эффектийг илэрхийлнэ, харин `amount` нь ихэвчлэн тухайн эффектийн **хүчийг** тодорхойлох утга байдаг.

Одоо түгээмэл хэрэглэгддэг filter функцуудыг авч үзье.

---

### blur

```html
<link rel="stylesheet" href="styles.css">
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
```

```css
img {
  filter: blur(2px);
}
```

`blur` функц нь элемент дээр **Gaussian blur** эффект хэрэглэдэг. Утга нь **пикселээр** өгөгдөх бөгөөд blur-ийн радиусыг илэрхийлдэг. Энэ CSS дүрэм нь хуудсан дээрх бүх зурагт **2 пикселийн blur** хэрэглэнэ.

`blur` эффект нь дизайнд **гүн мэдрэмж (depth)** үүсгэх эсвэл зургийн зарим хэсгийг **бүдгэрүүлэх** үед ашиглагддаг.

---

### brightness

`brightness` функц нь элементийн **гэрэлтэлтийг (brightness)** тохируулдаг.

* **0%** — элемент бүрэн хар болно
* **100%** — анхны төлөв
* **100%-аас их** — гэрэлтэлтийг нэмэгдүүлнэ

```html
<link rel="stylesheet" href="styles.css">
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
```

```css
img {
  filter: brightness(150%);
}
```

Энэ CSS дүрэм нь зургийн гэрэлтэлтийг **50%-иар нэмэгдүүлнэ**. Brightness тохиргоог ашиглан зургуудыг илүү **анхаарал татахуйц** болгох эсвэл **бүдгэрсэн (washed-out)** эффект үүсгэх боломжтой.

---

### grayscale

`grayscale` функц нь элементийг **саарал өнгийн (grayscale)** болгодог. Утга нь **хувиар** илэрхийлэгдэнэ.

* **0%** — зураг өөрчлөгдөхгүй
* **100%** — бүрэн grayscale болно

```html
<link rel="stylesheet" href="styles.css">
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
```

```css
img {
  filter: grayscale(100%);
}
```

Энэ дүрэм нь зургийг **бүрэн grayscale** болгоно. `grayscale` нь **vintage хэв маяг** үүсгэх эсвэл хуудсан дээрх зарим элементүүдийг **анхаарал багатай харагдуулах** үед ашиглагддаг.

---

### sepia

`sepia` функц нь элемент дээр **sepia өнгийн эффект** хэрэглэдэг. `grayscale`-тай адил **хувиар** утга өгдөг.

```html
<link rel="stylesheet" href="styles.css">
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
```

```css
img {
  filter: sepia(80%);
}
```

Энэ дүрэм нь зураг дээр **80% sepia эффект** хэрэглэнэ. `sepia` эффект нь **хуучны зураг шиг (vintage)** харагдах эффект үүсгэхэд тохиромжтой.

---

### hue-rotate

`hue-rotate` функц нь элементийн **өнгөний hue-г эргүүлдэг**. Утга нь **градусаар** (`deg`) өгөгдөнө бөгөөд өнгөний тойрог дээр эргэлт үүсгэдэг.

```html
<link rel="stylesheet" href="styles.css">
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
```

```css
img {
  filter: hue-rotate(90deg);
}
```

Энэ дүрэм нь зургийн hue-г **90 градусаар эргүүлнэ**. Hue rotation нь **psychedelic эффект** үүсгэх эсвэл зургийн **өнгөний схемийг өөрчлөх** үед ашиглагддаг.

---

### Олон filter-ийг хамтад нь ашиглах

`filter` property-ийн хамгийн хүчирхэг боломжуудын нэг нь **олон эффектийг хамтад нь ашиглах** боломж юм. Та хэд хэдэн filter-ийг **хооронд нь зайгаар тусгаарлан** нэг элемент дээр хэрэглэж болно.

```html
<link rel="stylesheet" href="styles.css">
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute orange cat lying on its back.">
```

```css
img {  
  filter: contrast(150%) brightness(110%) sepia(30%);  
}
```

Энэ дүрэм нь зураг дээр:

* **contrast нэмэгдүүлнэ**
* **brightness бага зэрэг нэмэгдүүлнэ**
* **sepia эффект бага зэрэг хэрэглэнэ**

Олон filter-ийг хослуулснаар та дизайныхаа хэрэгцээнд тохирсон **нарийн, өвөрмөц визуал эффектүүд** үүсгэх боломжтой.

`CSS filter` property нь веб элементүүдийн харагдах байдлыг **уян хатан, бүтээлч байдлаар өөрчлөх** боломж олгодог хэрэгсэл юм.

Бид түгээмэл хэрэглэгддэг filter функцуудыг авч үзсэн боловч өөр функцууд ч байдаг. Жишээлбэл:

* `contrast`
* `invert`
* `saturate`

Ямар ч хүчирхэг боломжийн адил filter-ийг ашиглахдаа **болгоомжтой** байх хэрэгтэй. Дизайныг сайжруулах зорилгоор ашиглах ёстой бөгөөд хэрэглэгчдийг **төөрөгдүүлэх эсвэл accessibility-д сөргөөр нөлөөлөх** байдлаар ашиглахгүй байх нь чухал.
