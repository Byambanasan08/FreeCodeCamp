**Linear болон Radial Gradient гэж юу вэ, мөн CSS-д хэрхэн ажилладаг вэ?**

Өмнөх хичээлүүдэд та **linear** болон **radial gradient** ашиглаж эхлэх үндсэн ойлголтуудыг үзсэн. Энэ хэсэгт бид CSS property-уудыг ашиглан **илүү сонирхолтой, илүү нарийн дизайн** хэрхэн хийх талаар илүү гүнзгий судална.

CSS дахь **gradient** нь **хоёр буюу түүнээс олон өнгийн хооронд жигд шилжилт (smooth transition)** үүсгэх боломжийг олгодог. Эдгээрийг ихэвчлэн вэб дизайнд **гүн мэдрэмж (depth)**, **текстур**, **харааны сонирхол (visual interest)** нэмэхэд ашигладаг бөгөөд **зураг файл ашиглах шаардлагагүй** байдаг.

CSS нь **хоёр үндсэн төрлийн gradient** дэмждэг:

* **Linear gradients**
* **Radial gradients**

---

### Linear Gradient

**Linear gradient** нь өнгөнүүдийг **шулуун шугамын дагуу аажмаар холилдуулдаг**. Та энэ шугамын **чиглэл** болон **ашиглах өнгөнүүдийг** удирдах боломжтой.

Жишээ:

```css
.linear-gradient {
  background: linear-gradient(to right, red, blue);
  height: 40vh;
}
```

Энэ код нь **зүүн талаас улаан → баруун тал руу хөх** өнгө рүү шилждэг gradient үүсгэнэ.

`to right` параметр нь **gradient-ийн чиглэлийг** заадаг.

Бусад боломжит чиглэлүүд:

* `to left`
* `to top`
* `to bottom`
* `45deg` зэрэг өнцгөөр

---

### Олон өнгөтэй Linear Gradient

Gradient-д **олон өнгө** ашиглаж болно.

```css
.multi-color-gradient {
  background: linear-gradient(to right, red, yellow, blue);
  height: 40vh;
}
```

Энэ нь **red → yellow → blue** гэсэн дарааллаар **жигд хуваарилагдсан gradient** үүсгэнэ.

---

### Radial Gradient

**Radial gradient** нь өнгийг **төв цэгээс гадагш тархах дугуй эсвэл эллипс хэлбэрээр** холилдуулдаг.

Жишээ:

```css
.radial-gradient {
  background: radial-gradient(circle, red, blue);
  height: 40vh;
}
```

Энэ нь:

* **төв хэсэг → red**
* **гадна хэсэг → blue**

болох **дугуй gradient** үүсгэнэ.

---

### Radial Gradient-ийн хэлбэр ба байрлал

Radial gradient-ийн **shape** болон **эхлэх байрлал**-ыг тодорхойлж болно.

```css
.custom-radial-gradient {
  background: radial-gradient(ellipse at top left, red, blue);
  height: 40vh;
}
```

Энэ код нь:

* **ellipse хэлбэртэй**
* **top left булангаас эхэлсэн**

gradient үүсгэнэ.

---

### Color Stop (өнгөний байрлал)

Gradient-д **өнгөний яг байрлалыг** зааж болно.

```css
.precise-gradient {
  background: linear-gradient(to right, red 20%, yellow 40%, blue 80%);
  height: 40vh;
}
```

Энэ нь:

* **red → эхний 20%**
* **yellow → 40%**
* **blue → 80%**

дээр шилжилт хийдэг gradient үүсгэнэ.

---

### Gradient-ийн хэрэглээ

Gradient-ийг CSS-д **зураг ашиглах боломжтой бүх газар** ашиглаж болно.

Жишээлбэл:

* background
* button дизайн
* card
* overlay
* text эффект

---

### Accessibility анхаарах зүйл

Gradient нь вэбсайтын **харагдах байдлыг илүү сонирхолтой** болгодог боловч **text дээр ашиглах үед хангалттай contrast** байгаа эсэхийг заавал шалгах хэрэгтэй. Ялангуяа **text gradient background дээр байрлах үед** accessibility-г хангах нь маш чухал юм.
