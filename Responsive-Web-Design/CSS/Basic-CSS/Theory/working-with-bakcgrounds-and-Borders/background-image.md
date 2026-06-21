# Background Image Size, Repeat, Position, Attachment хэрхэн ажилладаг вэ?

CSS-д **background image (арын зураг)**-тай ажиллах үед тухайн зургийг хэрхэн харуулахыг хянах боломжийг олгодог хэд хэдэн property байдаг.

Бид голчлон дараах property-үүдийг авч үзнэ.

* **background-size**
* **background-repeat**
* **background-position**
* **background-attachment**

Эхлээд **background-image** property-г харцгаая.

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
  }
</style>
```

Дээрх CSS код нь **body** элементэд муурны background зураг тохируулж байна.

Хэрэв та background зурагны хэмжээг тохируулахыг хүсвэл **background-size** property-г ашиглаж болно.

Та **contain** утгыг ашиглан зургийг **тайрахгүйгээр (cropping) болон сунгаж гажуудуулахгүйгээр (stretching)** аль болох том хэмжээнд тааруулж харуулж болно.

Доорх нь **background-size: contain** ашигласан жишээ юм.

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    background-size: contain;
    min-height: 100px;
  }
</style>
```

Бид **min-height**-ийг **100px** болгож тохируулж байна. Ингэснээр background зураг харагдах боломжтой болж, layout хамгийн багадаа тодорхой өндөртэй байх нөхцөлийг бүрдүүлдэг. Энэ нь контент бага байсан ч дизайн тэнцвэртэй, харагдахуйц байхад тусалдаг.

Хэрэв **background-size** property-г **cover** утгатай болговол background зураг нь **aspect ratio (харьцаа)**-гаа хадгалсан хэвээр **body** элементийг бүхэлд нь дүүргэхээр масштаблагдана.

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    background-size: cover;
    min-height: 100px;
  }
</style>
```

Өмнөх жишээнүүдийг харахад background зураг **тасралтгүй давтагдаж (repeat)** байгааг та анзаарсан байж магадгүй.

Default байдлаар background зургууд нь **элементийг бүхэлд нь дүүргэхийн тулд хэвтээ болон босоо чиглэлд давтагддаг**. Гэхдээ та энэ үйлдлийг хянах боломжтой.

Та **background-repeat** property-г **no-repeat** утгатайгаар ашиглаж болно.

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    background-size: contain;
    background-repeat: no-repeat;
    min-height: 100px;
  }
</style>
```

**background-size** нь **contain**, **background-repeat** нь **no-repeat** байхад зураг дэлгэц дээр дахин давтагдахгүй.

Хэрэв та background зургийг **хэвтээ чиглэлд давтах** хүсэлтэй бол **background-repeat** property дээр **repeat-x** утгыг ашиглаж болно.

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    background-size: contain;
    background-repeat: repeat-x;
    min-height: 100px;
  }
</style>
```

Хэрэв background зургийг **босоо чиглэлд давтах** хүсэлтэй бол **background-repeat** property дээр **repeat-y** утгыг ашиглаж болно.

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    background-size: contain;
    background-repeat: repeat-y;
    min-height: 100px;
  }
</style>
```

Background зургийг дэлгэц дээр **хаана байрлуулахыг** тохируулахын тулд **background-position** property-г ашиглаж болно.

**background-position** property нь тухайн элемент дотор background зураг **хаана харагдахыг** тохируулах боломж олгодог. Та **top, bottom, left, right, center** зэрэг түлхүүр үгсийг ашиглаж болно. Мөн **pixel** эсвэл **percentage** утгуудыг ашиглаж болно.

Доорх нь **background-position** property-г **center top** утгаар ашигласан жишээ юм.

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    background-size: contain;
    background-repeat: no-repeat;
    background-position: center top;
    min-height: 100px;
  }
</style>
```

Энэ CSS код нь background зургийг **хэвтээ чиглэлд төвд (center)**, **босоо чиглэлд дээд хэсэгт (top)** байрлуулж байна.

Эцэст нь **background-attachment** property нь background зураг **контенттой хамт гүйлгэх эсэх**, эсвэл **хуудас гүйлгэх үед тогтмол байрлах эсэх**-ийг тодорхойлдог.

Гол утгууд нь:

* **scroll (default)** — background зураг контенттой хамт гүйлгэнэ
* **fixed** — background зураг дэлгэц дээр тогтмол байрлана

Доорх нь **background-attachment: fixed** ашигласан жишээ юм.

```html
<style>
  body {
    background-image: url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
    background-position: center top;
    background-attachment: fixed;
  }
</style>
```

Энэ CSS код нь хуудас гүйлгэх үед ч background зураг **дэлгэц дээр тогтмол байрласан хэвээр** байх нөхцөлийг бүрдүүлдэг.

Хэрэв та хэд хэдэн property-г **нэг мөрөнд нэгтгэх** хүсэлтэй бол **background shorthand property**-г ашиглаж болно.

Доорх нь жишээ юм.

```html
<style>
  body {
    background: center top fixed
      url("https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg");
  }
</style>
```

Дээрх жишээ нь **background-image**, **background-position**, болон **background-attachment** property-үүдийг **нэг мөрөнд нэгтгэн** бичиж байна.

Эдгээр property-үүдийг сайн эзэмшсэнээр та вэб дизайнд background зургууд хэрхэн харагдахыг нарийн хянах боломжтой болно. Ингэснээр илүү **харагдахуйц, үр ашигтай layout**-уудыг бүтээх боломж бүрдэнэ.
