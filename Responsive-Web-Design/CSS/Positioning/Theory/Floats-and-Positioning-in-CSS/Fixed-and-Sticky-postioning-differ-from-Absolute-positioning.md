**Fixed болон Sticky Positioning гэж юу вэ, мөн энэ нь Absolute Positioning-оос юугаараа ялгаатай вэ?**

Fixed болон sticky positioning нь CSS-ийн хоёр чухал positioning арга бөгөөд absolute positioning-той харьцуулахад өөр өөр зан төлөвтэй байдаг. Элементэд **position: fixed** тохируулсан үед тэр элемент document-ийн хэвийн урсгалаас гарч, **viewport**-той харьцангуйгаар байрлана. Энэ нь хэрэглэгч хуудас гүйлгэх үед ч элемент ижил байрлалдаа хэвээр үлдэхийг илэрхийлдэг. Ихэвчлэн энэ аргыг үргэлж харагдаж байх ёстой **header** эсвэл **navigation bar** зэрэг элементүүдэд ашигладаг. Жишээлбэл, хэрэв та гарчгийг хуудасны дээд хэсэгт тогтмол байрлуулахыг хүсвэл дараах кодыг ашиглаж болно:

```html
<link rel="stylesheet" href="styles.css">
<h1>Fixed Header</h1>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
<p>Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.</p>
<p>Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.</p>
<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
<p>Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor.</p>
<p>Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis.</p>
<p>Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus.</p>
<p>Donec congue lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu ullamcorper orci.</p>
<p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum.</p>
<p>Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit.</p>
```

```css
body {
  margin: 0;
  padding-top: 60px;
  font-family: Arial, sans-serif;
  line-height: 1.6;
}

h1 {
  position: fixed;
  top: 0;
  width: 500px;
  background: white;
  padding: 10px;
  border-bottom: 2px solid #ccc;
}

p {
  max-width: 600px;
  margin: 20px auto;
}
```

Энэ жишээнд **h1** элемент viewport-ийн дээд хэсэгт тогтмол байрлах бөгөөд хэрэглэгч хуудас гүйлгэхэд ч байрлал нь өөрчлөгдөхгүй. Энэ нь **sticky header** эсвэл үргэлж харагдах navigation зэрэг UI элементүүдийг бүтээхэд маш хэрэгтэй.

**position: sticky** нь relative болон fixed positioning-ийн хоорондын хосолсон шинжтэй байдаг. Эхэндээ элемент **relative positioning** шиг ажиллаж document-ийн урсгал дотор хэвийн байрлана. Харин хэрэглэгч тодорхой цэгээс цааш гүйлгэх үед элемент viewport-д “наалдаж” **fixed** шиг ажиллаж эхэлдэг. Энэ нь тодорхой байрлалд хүрсний дараа л тогтмол болох navigation bar зэрэг элементүүдийг бүтээхэд тохиромжтой. Sticky positioning-ийг дараах байдлаар ашиглаж болно:

```html
<link rel="stylesheet" href="styles.css">
<h1>Sticky Header</h1>

<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
<p>Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.</p>
<p>Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla.</p>
<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</p>
<p>Curabitur sodales ligula in libero. Sed dignissim lacinia nunc. Curabitur tortor.</p>
<p>Pellentesque nibh. Aenean quam. In scelerisque sem at dolor. Maecenas mattis.</p>
<p>Sed convallis tristique sem. Proin ut ligula vel nunc egestas porttitor. Morbi lectus risus.</p>
<p>Donec congue lacinia dui, a porttitor lectus condimentum laoreet. Nunc eu ullamcorper orci.</p>
<p>Quisque eget odio ac lectus vestibulum faucibus eget in metus. In pellentesque faucibus vestibulum.</p>
<p>Nulla at nulla justo, eget luctus tortor. Nulla facilisi. Duis aliquet egestas purus in blandit.</p>
```

```css
h1 {
  position: sticky;
  top: 30px;
  left: 30px;
}
```

Энэ жишээнд **h1** элемент эхэндээ хэвийн байрлалтай байна. Харин хэрэглэгч гүйлгэж гарчиг viewport-ийн дээд хэсгээс **30px** зайд хүрэх үед тэр байрлалд “наалдаж” тогтмол байрлана.

**Absolute, Fixed болон Sticky positioning-ийн гол ялгаанууд:**

* **Absolute positioning** нь элементийг document-ийн урсгалаас гаргаж, хамгийн ойр positioned ancestor элементтэй харьцангуйгаар байрлуулна. Хуудас гүйлгэхэд элемент байрлалаа өөрчлөхгүй.
* **Fixed positioning** нь элементийг document flow-оос гаргаж, viewport-той харьцангуйгаар байрлуулдаг. Хуудас гүйлгэхэд ч элемент ижил байрлалд харагдсаар байдаг.
* **Sticky positioning** нь эхэндээ document flow дотор хэвийн байрлаж байгаад тодорхой босго (threshold)-ыг давмагц тогтмол байрлалд “наалддаг”.

Эдгээр positioning аргууд нь **floating элементүүд**, **sticky header**, болон илүү **динамик UI компонентууд** бүхий layout бүтээх боломжийг олгож, чухал мэдээллийг хэрэглэгчид үргэлж харагдах байдлаар байршуулахад тусалдаг.
