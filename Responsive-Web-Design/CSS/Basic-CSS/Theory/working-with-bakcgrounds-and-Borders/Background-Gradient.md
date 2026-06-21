# Background Gradient гэж юу вэ, мөн хэрхэн ажилладаг вэ?

CSS-д **background gradient** гэдэг нь хоёр эсвэл түүнээс олон өнгийн хооронд **жигд шилжилт (smooth transition)** үүсгэж, тухайн элементийн background дээр хэрэглэх боломжтой өнгийн эффект юм. Gradient ашигласнаар зураг ашиглах шаардлагагүйгээр **харагдахуйц гоёмсог background** үүсгэж болно.

CSS-д gradient-ийн хоёр үндсэн төрөл байдаг:

* **linear gradients**
* **radial gradients**

---

**Linear gradient** нь өнгүүдийг **шулуун шугам дагуу** шилжүүлдэг. Та gradient-ийн **чиглэл** болон **ашиглагдах өнгүүдийг** тодорхойлж болно.

Үндсэн syntax нь:

```
background: linear-gradient(direction, color-stop1, color-stop2, ...);
```

Энэ жишээнд **background CSS property**-г **linear gradient** утгатайгаар ашиглаж байна.

**direction** нь gradient-ийн чиглэлийг тодорхойлдог. Энэ нь:

* өнцөг (**45deg** гэх мэт)
* түлхүүр үг (**to right**, **to bottom** гэх мэт)
* эсвэл тал / булан

байж болно.

**color-stop** нь gradient шилжилт явагдах **өнгө болон байрлалуудыг** тодорхойлдог.

Linear gradient хэрхэн ажилладгийг илүү сайн ойлгохын тулд дараах жишээг харцгаая.

```html
<link rel="stylesheet" href="styles.css">
<div class="linear-gradient"></div>
```

```css
.linear-gradient{
  background: linear-gradient(to right, red, yellow);
  height: 40vh;
}
```

Энэ CSS нь **зүүн талаас улаан өнгөөр эхэлж баруун талд шар өнгө рүү шилжих** linear gradient үүсгэж байна. Gradient нь **viewport height-ийн 40% өндөртэй** элемент дээр хэрэглэгдэж байна. Та **vh unit**-ийн талаар дараагийн хичээлүүдэд илүү дэлгэрэнгүй сурах болно.

**to right** чиглэл нь gradient-ийг **зүүнээс баруун тийш хэвтээ чиглэлд** явуулж байгааг илэрхийлдэг.

---

Gradient-ийн өөр нэг төрөл нь **radial gradient** юм.

**Radial gradient** нь өнгүүдийг **гарал үүсэл (ихэвчлэн төв)** цэгээс гадагш **дугуй эсвэл эллипс хэлбэрээр** тархах байдлаар шилжүүлдэг.

Үндсэн syntax нь:

```
background: radial-gradient(shape size at position, color-stop1, color-stop2, ...)
```

Syntax дээр:

**shape** нь gradient-ийн хэлбэрийг тодорхойлдог. Энэ нь:

* **circle**
* **ellipse**

байж болно.

**size** нь gradient-ийн төгсгөлийн хэлбэрийн хэмжээг тодорхойлдог. Үүнд:

* **closest-side**
* **closest-corner**
* **farthest-side**
* **farthest-corner**

гэсэн утгууд орно.

**position** нь gradient-ийн **төвийн байрлалыг** тодорхойлдог. Энэ нь:

* түлхүүр үгс (**center**, **top left**, **bottom right** гэх мэт)
* эсвэл нарийвчилсан утгууд (**50% 50%**, **10px 20px** гэх мэт)

байж болно.

Эцэст нь **color stops** нь gradient шилжих **өнгөний жагсаалт** юм. Color stop бүр сонголтоор **байрлалын утга (percentage эсвэл length)** агуулж болох бөгөөд тухайн өнгө хаана байрлахыг заадаг.

Дараах нь жишээ юм.

```html
<link rel="stylesheet" href="styles.css">
<div class="radial-gradient"></div>
```

```css
.radial-gradient{
  background: radial-gradient(circle closest-side at center, red, yellow 50%, green);
  height: 60vh;
}
```

Энэ CSS нь элемент дотор **төвд байрласан дугуй radial gradient** үүсгэнэ. Gradient нь **төв хэсэгт улаан өнгөөр эхэлж**, **радиусын 50% дээр шар өнгө рүү шилжиж**, **эцэст нь ногоон өнгөөр дуусна**.

**closest-side** түлхүүр үг нь gradient-ийн төгсгөлийн хэлбэрийг **элементийн хамгийн ойр талд тааруулж** байрлуулахыг заадаг. Gradient нь **viewport height-ийн 60% өндөртэй** элемент дээр хэрэглэгдэж байна.

CSS gradient-үүдтэй ажиллах аргыг ойлгох нь зураг ашиглах шаардлагагүйгээр **харагдахуйц сонирхолтой background** үүсгэхэд таны дизайныг мэдэгдэхүйц сайжруулна.

**Linear gradients** нь жигд өнгийн шилжилт хийхэд, харин **radial gradients** нь дугуй хэлбэрийн эффект үүсгэхэд ашиглагддаг бөгөөд вэб дизайнд **уян хатан байдал болон бүтээлч боломжийг** олгодог.
