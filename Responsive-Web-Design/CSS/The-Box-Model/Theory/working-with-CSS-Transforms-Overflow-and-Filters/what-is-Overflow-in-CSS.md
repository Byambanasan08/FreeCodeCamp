### CSS-д Overflow гэж юу вэ, хэрхэн ажилладаг вэ?

**Overflow** гэдэг нь элемент доторх агуулга тухайн элементийн хэмжээнээс хэтэрч гарсан үед түүнийг хэрхэн боловсруулахыг тодорхойлдог ойлголт юм. Жишээлбэл, `div` элементийн текст агуулга тухайн элементийн хүрээнээс давж гарч болно.

Overflow нь **хоёр хэмжээст (two-dimensional)** ойлголттой байдаг. `x-axis` нь **хэвтээ overflow**-ийг тодорхойлдог бол `y-axis` нь **босоо overflow**-ийг тодорхойлдог.

Одоо `overflow-y` CSS property ашиглан жишээн дээр гарсан overflow-ийг засъя. Эхлээд `hidden` утгыг ашиглан overflow-ийг бүрэн нууж болно.

```html
<link rel="stylesheet" href="styles.css">

<div>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
</div>
```

```css
div {
  height: 200px;
  overflow-y: hidden;
}
```

Энэ нь overflow асуудлыг шийдэж байгаа боловч нэмэлт агуулга **бүрэн харагдах боломжгүй** болдог.

Үүний оронд `scroll` утгыг ашиглаж тухайн элементийг **scroll хийж болдог** болгох боломжтой.

```html
<link rel="stylesheet" href="styles.css">

<div>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
</div>
```

```css
div {
  height: 200px;
  overflow-y: scroll;
}
```

Ингэснээр контейнер **scroll хийж болдог элемент** болж хувирна. Энэ нь бүх агуулгыг харах боломжийг олгох бөгөөд элементийн доторх scroll нь хуудасны scroll-оос **хамааралгүйгээр** ажиллана.

Мөн `auto` утгыг ашигласнаар overflow-ийг браузер өөрөө зохицуулах боломжтой. Ерөнхийдөө **босоо scroll** ашиглах нь ихэвчлэн зөвшөөрөгддөг дизайн гэж үздэг бол **хэвтээ scroll** ашиглах нь төдийлөн нийтлэг шийдэл биш гэж тооцогддог.

Энэ ойлголтыг ашигласнаар та агуулга overflow болох үед хэрхэн ажиллахыг хянах боломжтой бөгөөд ингэснээр хуудасны layout-ийг илүү нарийн удирдах боломжтой болно.
