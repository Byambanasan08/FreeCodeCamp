What Is the aria-expanded Attribute, and How Does It Work? 

aria-expanded attribute гэж юу вэ, мөн хэрхэн ажилладаг вэ?

---

aria-expanded attribute нь accessibility зорилгоор ашиглагддаг бөгөөд control нь тэлэгдсэн (expanded) эсвэл хумигдсан (collapsed) эсэхийг илэрхийлдэг. Энэ нь menu, accordion болон контентын харагдах байдлыг удирддаг бусад collapsible widget-уудтай хамт ашиглагддаг. aria-expanded attribute нь control тэлэгдсэн үед true, харин хумигдсан үед false утгатай байна.

aria-expanded-аар өгөгдсөн мэдээлэл нь screen reader ашиглаж буй хүмүүст тухайн control-ийн одоогийн төлөвийг (тэлэгдсэн эсвэл хумигдсан) ойлгоход тусалдаг.

aria-expanded attribute нь collapsible widget-ийн харагдах байдлыг солих interactive элемент дээр тавигддаг. Жишээ нь, хэрэв button expandable menu-г нээж, хааж байвал aria-expanded attribute нь button дээр байрлана.

Menu тэлэгдсэн үед aria-expanded attribute дараах жишээ шиг true байх ёстой:

```html id="c4q4rx"
<button aria-expanded="true">Menu</button>
```

Menu хумигдсан үед харин false гэж тохируулна.

```html id="txfhk1"
<button aria-expanded="false">Menu</button>
```

Та controlling элемент дээр aria-expanded attribute-ийг үргэлж true эсвэл false утгатай байлгах ёстой. Жишээ нь, хэрэв button menu-ийн харагдах байдлыг удирдаж байвал aria-expanded-ийн анхны утга нь menu-ийн анхны харагдах байдлаас хамаарна.

Хэрэв menu анхнаасаа тэлэгдсэн байвал aria-expanded эхэндээ true байна. Хэрэв menu анхнаасаа хумигдсан байвал aria-expanded эхэндээ false байна.

aria-expanded-ийн утга нь хэрэглэгч элементтэй харилцах үед JavaScript ашиглан динамикаар шинэчлэгдэх ёстой.

Нэмэлтээр aria-controls болон aria-owns property-уудыг aria-expanded-тэй хамт ашиглан controlling элемент болон удирдагдаж буй элемент хооронд programmatic холбоо үүсгэж болно.

Эхлээд aria-controls-оос эхэлье. aria-expanded-тэй хамт ашиглагдах үед aria-controls attribute нь удирдаж буй элементийг тодорхойлдог. Жишээ нь, button нь menu болж ажиллах list-ийг тэлэх эсвэл хумих боломжтой. aria-controls-ийн утга нь удирдагдаж буй элементийн id байна (энэ жишээнд menu list).

```html id="e6g2m6"
<link rel="stylesheet" href="styles.css">

<button aria-expanded="false" aria-controls="menu1">Menu</button>
<ul id="menu1" hidden>
  <li>...</li>
  <li>...</li>
</ul>

<script src="index.js"></script>

button {
  background-color: #0078d4;
  color: white;
  padding: 8px 12px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

button:hover {
  background-color: #005ea2;
}

ul {
  list-style: none;
  padding: 0;
  margin: 8px 0 0;
  border: 1px solid #ccc;
  border-radius: 4px;
  width: 150px;
  background: #fff;
}

li {
  padding: 8px;
  cursor: pointer;
}

li:hover {
  background-color: #f2f2f2;
}

const button = document.querySelector('button');
const menu = document.getElementById(button.getAttribute('aria-controls'));

button.addEventListener('click', () => {
  const expanded = button.getAttribute('aria-expanded') === 'true';
  button.setAttribute('aria-expanded', String(!expanded));
  menu.hidden = expanded;
});
```

Жагсаалт controlling button-ийн яг дараа байрлаж байгааг анзаараарай. Ийм төрлийн expandable control-д expanded контент нь түүнийг удирдаж буй элементтэй DOM-д шууд дараалж байрлах нь хамгийн зөв байдаг. Ингэснээр screen reader хэрэглэгчид expanded контентыг хайж олох шаардлагагүй болж, мөн keyboard хэрэглэгчид expanded контент доторх interactive control-уудаар илүү амархан шилжих боломжтой болно.

Хэрэв expanded контентыг controlling элементын дараа байрлуулах боломжгүй бол aria-owns attribute ашиглан accessibility tree дотор виртуалаар дараа нь байрлуулж болно. Энэ нь screen reader зэрэг assistive technology-д expanded контент нь DOM-д control-ийн дараа байрлаж байгаа мэт харагдуулах боломж олгодог.

```html id="h7g3r2"
<link rel="stylesheet" href="styles.css">

<button aria-owns="menu1" aria-expanded="true">Menu</button>
<main>
  <!-- an entire page worth of content --->
</main>
<ul id="menu1">
  <li>...</li>
  <li>...</li>
</ul>

<script src="index.js"></script>

button {
  background-color: #0078d4;
  color: white;
  padding: 8px 12px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin-bottom: 10px;
}

button:hover {
  background-color: #005ea2;
}

ul {
  list-style: none;
  padding: 0;
  margin: 8px 0;
  border: 1px solid #ccc;
  border-radius: 4px;
  width: 150px;
  background: #fff;
  position: absolute;
  z-index: 10;
}

li {
  padding: 8px;
  cursor: pointer;
}

li:hover {
  background-color: #f2f2f2;
}

const button = document.querySelector('button');
const menu = document.getElementById(button.getAttribute('aria-owns'));

button.addEventListener('click', () => {
  const expanded = button.getAttribute('aria-expanded') === 'true';
  button.setAttribute('aria-expanded', String(!expanded));
  menu.hidden = expanded;
});

// Close the menu if user clicks outside
document.addEventListener('click', (e) => {
  if (!button.contains(e.target) && !menu.contains(e.target)) {
    button.setAttribute('aria-expanded', 'false');
    menu.hidden = true;
  }
});
```

aria-owns attribute ашиглахад сул талууд бий. Энэ нь screen reader хэрэглэгчдэд илүү их verbosity (хэт дэлгэрэнгүй уншилт) үүсгэдэг, учир нь ихэнх screen reader expanded элемент анх нээгдэхэд бүх агуулгыг шууд уншдаг. Мөн tab дарааллыг өөрчилдөггүй тул keyboard хэрэглэгчид expanded контент руу хүрэхээс өмнө хуудсан дахь бусад бүх interactive control-уудаар дамжин tab хийх шаардлагатай болдог, хэрэв та JavaScript ашиглан tab дарааллыг удирдахгүй бол.

Идеал тохиолдолд expandable контент нь control элементын дараа байрлах ёстой бөгөөд aria-owns attribute-ийг зөвхөн боломжгүй нөхцөлд (хамгийн сүүлчийн арга болгон) ашиглах хэрэгтэй. Хэрэв ашиглах шаардлагатай бол олон төрлийн screen reader болон browser дээр сайтар тест хийж, таны хэрэгжүүлэлт бүх хэрэглэгчдэд хүртээмжтэй эсэхийг баталгаажуулах шаардлагатай.

Мөн сануулахад, aria-controls эсвэл aria-owns аль аль нь ашиглагдсан байсан ч aria-expanded-ийн утга control тэлэгдэх болон хумигдах үед байнга шинэчлэгдэж байх ёстой.

aria-expanded attribute нь control тэлэгдсэн эсвэл хумигдсан эсэхийг илэрхийлдэг. Энэ мэдээлэл нь screen reader хэрэглэгчдэд маш чухал бөгөөд menu, accordion болон ижил төстэй disclosure widget-уудын одоогийн төлөвийг ойлгоход тусалдаг.

aria-expanded-ийг зөв ашигласнаар та бүх хэрэглэгчдэд ойлгомжтой, уялдаа сайтай хэрэглэгчийн туршлага бий болгож чадна.
