How Do You Make Dynamic and Interactive Content Accessible?

Динамик болон интерактив контентыг хэрхэн хүртээмжтэй болгох вэ?

---

Та өмнө нь semantic markup болон ARIA attribute-ууд контентыг хүртээмжтэй болгодог талаар сурсан. Бодит аппликейшнуудад контент ихэнхдээ статик байдаггүй бөгөөд хуудсууд JavaScript-аар динамикаар шинэчлэгддэг. Ийм үед эдгээр өөрчлөлтүүд HTML-д мөн тусгагдсан байх нь чухал. Энэ нь screen reader-ууд шинэчлэгдсэн төлөвийг хэрэглэгчдэд зөв дамжуулах боломжийг олгодог. Хэрэв ингэхгүй бол туслах хэрэгсэл ашигладаг хүмүүс ямар нэг өөрчлөлт болсон гэдгийг огт мэдэхгүй байх, эсвэл хуучирсан, буруу мэдээлэл авах эрсдэлтэй.

JavaScript элементын төлөвийг өөрчилдөг түгээмэл нэг нөхцөлийг, мөн ARIA attribute-уудыг шинэчилснээр HTML-ээ хэрхэн хүртээмжтэй байлгахыг авч үзье.

Танд dropdown menu нээж, хаадаг товч байна гэж төсөөлье:

```html
<button id="menuButton" aria-expanded="false" aria-controls="menuList">
  Menu
</button>

<ul id="menuList" hidden>
  <li>List item 1</li>
  <li>List item 2</li>
</ul>
<script src="index.js"></script>

const button = document.getElementById("menuButton");
const menu = document.getElementById("menuList");

button.addEventListener("click", () => {
  const expanded = button.getAttribute("aria-expanded") === "true";
  button.setAttribute("aria-expanded", String(!expanded));
  menu.hidden = expanded;
});
```

HTML хэсэг нь dropdown menu-г удирдах товчийг тохируулж өгсөн байна. Товч нь aria-expanded attribute-ийг ашиглан menu нээгдсэн эсэхийг илэрхийлдэг бөгөөд aria-controls attribute нь menu-ийн id-г зааж, хооронд нь холбоно.

JavaScript нь menu товч дээрх click event-ийг сонсож ажиллана. Дарсан үед aria-expanded утгыг сольж, мөн menu дээрх hidden property-ийг шинэчилнэ. Ингэснээр menu-ийн харагдах байдал болон хүртээмжийн мэдээлэл хоорондоо синхрон хэвээр байна. Үүний үр дүнд хараагаар харж буй хэрэглэгчид болон screen reader ашиглагчид хоёулаа menu нээгдсэн эсвэл хаалттай байгааг мэдэх боломжтой болно.

Та дараагийн хичээлүүдэд эдгээр ARIA attribute-уудын талаар илүү дэлгэрэнгүй сурах болно. Одоохондоо JavaScript элементын төлөвийг өөрчилж байгаа үед холбогдох ARIA attribute-уудыг мөн шинэчилж байх хэрэгтэй гэдгийг санаарай. Ингэснээр туслах технологиуд дэлгэц дээр үнэхээр юу болж байгааг зөв тусган харуулж чадна.
