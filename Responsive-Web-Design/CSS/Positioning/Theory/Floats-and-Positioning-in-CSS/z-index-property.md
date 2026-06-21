**Z-Index Property гэж юу вэ, мөн Positioned элементүүдийн давхарлалтыг хэрхэн удирддаг вэ?**

CSS дахь **z-index** property нь хуудсан дээр давхарлаж харагдаж байгаа positioned элементүүдийн **босоо давхарлалын дарааллыг (stacking order)** удирдахад ашиглагддаг. Хэд хэдэн элемент бие биенийхээ дээр давхарлагдсан үед **z-index** утга нь аль элемент дээд талд харагдахыг тодорхойлдог. **z-index** утга өндөр байх тусам элемент үзэгчид илүү ойр буюу дээд давхаргад байрлана, харин бага утга нь элементүүдийг доод давхаргад байрлуулна.

Гэхдээ **z-index** нь зөвхөн **positioned** элементүүд дээр ажилладаг. Өөрөөр хэлбэл элемент нь **static**-аас өөр **position** утгатай байх ёстой, жишээлбэл **relative**, **absolute**, эсвэл **fixed**. Анхдагч **z-index** утга нь **auto** бөгөөд энэ нь элементийг анхны давхарлалын дараалалд байрлуулдаг. Доорх жишээнд гурван хайрцаг байна:

```html
<div class="container">
  <div class="box1">Box 1</div>
  <div class="box2">Box 2</div>
  <div class="box3">Box 3</div>
</div>
```

Одоо эдгээр хайрцгуудыг хооронд нь давхарлах байдлаар байрлуулахын тулд дараах style-уудыг хэрэглэнэ:

```html
<link rel="stylesheet" href="styles.css">
<div class="container">
  <div class="box1">Box 1</div>
  <div class="box2">Box 2</div>
  <div class="box3">Box 3</div>
</div>
```

```css
.container {
  position: relative;
  width: 300px;
  height: 300px;
  border: 1px solid black;
}

.box1 {
  position: absolute;
  z-index: 1;
  background: lightcoral;
  top: 20px;
  left: 20px;
  width: 100px;
  height: 100px;
}

.box2 {
  position: absolute;
  z-index: 3;
  background: gold;
  top: 40px;
  left: 40px;
  width: 100px;
  height: 100px;
}

.box3 {
  position: absolute;
  z-index: 2;
  background: lightgreen;
  top: 60px;
  left: 60px;
  width: 100px;
  height: 100px;
}
```

Энд **container** элемент **relative** positioning-тэй, харин доторх бүх хайрцгууд **absolute** positioning-тэй байна. Хайрцаг бүр өөр өөр **z-index** утгатай тул тэд хоорондоо давхарлаж байрлана.

Та **z-index**-ийг веб хуудсан дээр **давхарга (layers)** үүсгэх арга гэж ойлгож болно. **z-index** өндөртэй элементүүд бага утгатай элементүүдийн дээр байрлана. Энэ нь **modal**, **pop-up**, эсвэл **tooltip** зэрэг давхарлаж харагдах элементүүдийг зохицуулахад маш хэрэгтэй байдаг.
