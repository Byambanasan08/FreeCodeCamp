**Floats-ийг ашиглах нийтлэг тохиолдлууд юу вэ, мөн тэд хэрхэн ажилладаг вэ?**

CSS дахь floats нь анх текстийг зураг зэрэг элементийн эргэн тойронд ороож харагдуулах зориулалттай техник байсан. Гэвч цаг хугацааны явцад хөгжүүлэгчид floats-ийг шинэ аргаар ашиглаж, layout дизайн дээр бүтээлч байдлаар хэрэглэж эхэлсэн. Өнөө үед Flexbox болон Grid зэрэг орчин үеийн layout аргууд илүү түгээмэл хэрэглэгддэг болсон ч floats-ийг ойлгох нь одоо ч чухал хэвээр байна. Ялангуяа хуучин код дээр ажиллах эсвэл тодорхой layout effect гаргах шаардлагатай үед энэ мэдлэг хэрэгтэй байдаг.

Элементэд float өгөгдөх үед тэр нь document-ийн хэвийн урсгалаас гарч, container-ийнхээ зүүн эсвэл баруун тал руу шахагддаг. Дараа нь ирэх контент тухайн floated элементийн эргэн тойронд ороож, үлдсэн зайг дүүргэдэг. Үүний сонгодог хэрэглээний нэг нь зурагны эргэн тойронд текст ороох явдал юм. Энэ үед зураг нэг тал руу float хийгдэж, текст нь түүний эргэн тойронд орж харагдана. Энэ техник нь одоо ч өргөн хэрэглэгддэг, ялангуяа зураг текстийн хажууд байрлах шаардлагатай нийтлэл болон блог дээр. Доорх нь кодын жишээ юм:

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <img src="https://placehold.co/150x150" alt="Placeholder Image">
</div>
```

```css
.container {
  border: 1px solid black;
  padding: 10px;
}

img {
  float: left;
  margin-right: 20px;
}
```

Дээрх жишээнд container нь floated зурагны эргэн тойронд тэлж харагдахгүй байна. Зураг нь хэвийн document flow-оос гарсан тул container нь floated child элементүүдээ “харахгүй”, иймээс өндөр нь zero болж агшсан байна.

Floats нь мөн Flexbox болон Grid өргөн хэрэглэгдэхээс өмнө олон баганат layout үүсгэхэд түгээмэл ашиглагддаг байсан. Элементүүдийг хажуу хажууд нь float хийснээр хөгжүүлэгчид хэвтээ чиглэлд зэрэгцсэн баганууд үүсгэж чаддаг байсан. Гэхдээ floats ашиглах үед child элементүүд нь float болсон үед parent элемент агшдаг асуудлыг шийдэх нь чухал байдаг. Энэ асуудлыг засахын тулд clearfix technique гэдэг шийдлийг container class дээр хэрэглэдэг.

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <img src="https://placehold.co/150x150" alt="Placeholder Image">
  <p> This is an example of text flowing around a floated image.</p>
</div>
```

```css
.container {
  border: 1px solid black;
}

/* Clearfix CSS */
.container::after {
  content: "";  
  display: block;
  clear: both;
}

img {
  float: left;
  margin-right: 20px;
}
```

* `::after` нь container-ийн контентийн дараа үл үзэгдэх block нэмдэг pseudo-element юм.
* `content: ""` нь pseudo-element байгааг баталгаажуулдаг боловч ямар ч контент харуулахгүй.
* `display: block` нь pseudo-element-ийг block-level element болгодог.
* `clear: both` нь дээр байрлах floated элементүүдийн зүүн болон баруун аль аль талыг цэвэрлэж өгдөг.

Дээрх жишээнд бид collapse илүү тод харагдуулахын тулд шинэ paragraph элемент нэмсэн. Paragraph нь хэвийн document flow-д үлдсэн байдаг тул container нь зөвхөн түүнийг багтаах хэмжээтэйгээр тэлнэ. Дараа нь бид collapse-ийг засаж, container-ийн border зөв харагдуулахын тулд clearfix technique-ийг хэрэглэж байна. Та clearfix rule-ийг аваад үзвэл container дахин агшиж байгааг харж болно.

Clearfix technique нь parent элемент floated child элементүүдээ зөв багтааж харагдуулахад тусалдаг. Clearfix нь floated контентийн дараа clear property бүхий элемент нэмж, parent container-ийг floated child элементүүдээ “харах”-д хүргэдэг.

Flexbox болон Grid зэрэг илүү орчин үеийн аргууд гарснаас хойш floats нь нарийн төвөгтэй layout хийх үндсэн арга байхаа больсон. Гэсэн ч тодорхой нөхцөлд тэд чухал үүрэгтэй хэвээр байна. Зурагны эргэн тойронд текст ороох эсвэл legacy төслүүд дээр ажиллах аль ч тохиолдолд floats хэрхэн ажилладаг, мөн тэдгээрийг хэрхэн зөв clear хийхийг ойлгох нь сайн бүтэцтэй, responsive layout хадгалахад чухал байдаг.
