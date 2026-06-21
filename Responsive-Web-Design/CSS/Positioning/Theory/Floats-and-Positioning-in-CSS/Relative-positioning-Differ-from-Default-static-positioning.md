**Relative Positioning гэж юу вэ, мөн энэ нь default Static Positioning-оос юугаараа ялгаатай вэ?**

CSS-д positioning нь элементүүдийг хуудсан дээр хэрхэн байрлуулахыг хянах боломж олгодог. Positioning-ийн хоёр түгээмэл төрөл бол **static positioning** болон **relative positioning** юм. Анхдагчаар бүх элементүүд **static positioning**-той байдаг. Энэ нь тэд document-ийн хэвийн урсгалыг дагаж, дээрээс доош, зүүнээс баруун руу дарааллаар байрлана гэсэн үг юм.

**Static positioning** нь бүх элементүүдийн default байрлал бөгөөд CSS-д тусгайлан зарлах шаардлагагүй. Static positioning ашиглах үед та ямар нэг онцгой өөрчлөлт анзаарахгүй, учир нь элементүүд document дотор байгалийн байрлалаараа харагдана. Доорх нь default static positioning ашигласан paragraph-ийн жишээ юм:

```html
<p>This paragraph is statically positioned.</p>
```

Browser дээр харагдах үед энэ paragraph нь document-ийн хэвийн урсгалыг дагаж, байгалийн байрлал дээрээ гарч ирнэ. Түүнийг хөдөлгөх тусгай style байхгүй бөгөөд layout дотор анх байрлах ёстой газартаа хэвээр байна.

Харин **relative positioning** нь элементийг document-ийн хэвийн урсгалыг эвдэхгүйгээр өөрийн байгалийн байрлалаас шилжүүлэх боломж олгодог. Үүнийг элементэд шинэ координат өгч, default static байрлалаас нь бага зэрэг хөдөлгөж байна гэж ойлгож болно. Доорх нь relative positioning ашигласан жишээ юм:

```html
<link rel="stylesheet" href="styles.css">
<p class="relative">This paragraph is positioned relatively.</p>
```

```css
body {
  border: solid 1px black;
}

.relative {
  position: relative;
  top: 30px;
  left: 30px;
}
```

Энэ жишээнд paragraph нь анхны байрлалаасаа **30px доош** болон **30px баруун тийш** шилжиж харагдана. Гэхдээ document-ийн хэвийн урсгалд тухайн элемент эзэлж байсан зай нь хэвээр хадгалагдана. Relative positioning нь layout-ийн бусад хэсгүүдэд нөлөөлөхгүйгээр элементийг бага зэрэг шилжүүлэх шаардлагатай үед маш хэрэгтэй байдаг.
