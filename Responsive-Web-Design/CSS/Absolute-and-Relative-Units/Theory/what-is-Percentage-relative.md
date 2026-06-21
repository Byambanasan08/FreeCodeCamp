**CSS-д Percentage гэж юу вэ, мөн хэзээ ашиглах ёстой вэ?**

CSS-д **percentage** нь **relative unit** бөгөөд хэмжээ, хэмжээс болон бусад property-уудыг **parent element-тэй нь харьцуулсан хувь хэмжээ** хэлбэрээр тодорхойлох боломжийг олгодог. Percentage утга ашиглах үед та үндсэндээ “Үүнийг контейнерийнх нь **X% хэмжээтэй болго”** гэж зааж өгч байна гэсэн үг.

Жишээлбэл, хэрэв та нэг элементэд **width: 50%** гэж тохируулбал тухайн элемент нь **parent container-ийн өргөний тал хувийг** эзэлнэ. Энэ нь percentage-ийг **өөр өөр дэлгэцийн хэмжээнд дасан зохицдог responsive дизайн** бүтээхэд маш хэрэгтэй болгодог.

<link rel="stylesheet" href="styles.css" />
<div class="container">
  <div class="box"></div>
</div>

--css--
.container {
  width: 400px;
  height: 200px;
  background-color: lightgray;
}

.box {
  width: 50%;
  height: 100%;
  background-color: red;
}

Percentage нь янз бүрийн дэлгэцийн хэмжээнд автоматаар дасан зохицдог **fluid layout** бүтээхэд маш тохиромжтой. Жишээлбэл, хэрэв та нэг container-ийг **width: 80%** гэж тохируулбал тухайн элемент ямар төхөөрөмж ашиглаж байгаагаас үл хамааран **parent элементийнхээ өргөний 80%-ийг** эзэлнэ.

<link rel="stylesheet" href="styles.css" />
<div class="parent">
  <div class="child"></div>
</div>

--css--

.parent {
  width: 100%;
  height: 300px;
  background-color: lightblue;
}

.child {
  width: 80%;
  height: 100%;
  background-color: red;
}

Зурагт **max-width: 100%** тохируулснаар flexible image ашиглах нь бас түгээмэл практик юм. Ингэснээр зураг нь **aspect ratio**-гаа хадгалсан хэвээрээ жижиг дэлгэц дээр автоматаар багасаж масштаблагдах боломжтой болно.

<link rel="stylesheet" href="styles.css" />
<img src="https://placehold.co/150x150" alt="Example Product Image" />
---css---
img {
  max-width: 100%;
  height: auto;
}

Хэдийгээр төдийлөн түгээмэл биш боловч **percentage**-ийг **font size** тодорхойлоход ашиглаж, масштаблагддаг typography үүсгэж болно. Жишээлбэл, **font-size: 120%** гэж тохируулбал тухайн текст нь **parent элементийн font size-ээс 20%-иар том** болно.

<link rel="stylesheet" href="styles.css" />
<div class="text-container">
  Parent text.
  <p class="text">This is some example text.</p>
</div>
----css---
.text-container {
  font-size: 16px;
}

.text {
  font-size: 120%;
}

Percentage нь **vertical centering** хийхэд мөн ашигтай байж болно. Доорх нь **transform** property-той хамт percentage ашиглан элементийг босоо чиглэлд төвд байрлуулах жишээ юм.

Энэ жишээнд элемент нь контейнерийнхээ дээд хэсгээс **50%** зайд байрлана. Дараа нь **transform** ашиглан өөрийн өндөрийн тал хэмжээгээр дээш шилжүүлснээр элемент босоо чиглэлд яг төвд байрлана.

<link rel="stylesheet" href="styles.css" />
<div class="centered"></div>
---css---
.centered {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  width: 300px;
  height: 300px;
  background-color: red;
}

Ирээдүйн хичээлүүдэд та **absolute positioning** болон **transform** property-ууд хэрхэн ажилладгийг илүү дэлгэрэнгүй судлах болно.

Percentage нь үргэлж ямар нэгэн зүйлтэй **харьцангуй** байдгийг санаарай. **width** зэрэг хэвтээ чиглэлийн property-уудын хувьд percentage нь **parent элементийн өргөнтэй** харьцуулагдана. Харин **height** зэрэг босоо чиглэлийн property-уудын хувьд ихэвчлэн **parent элементийн өндөртэй** (хэрэв тодорхойлсон бол) харьцуулагддаг.

Гэхдээ percentage ашигласан хэмжээс бүхий элементүүдийг давхарлан (nesting) байрлуулах үед болгоомжтой байх хэрэгтэй, учир нь энэ нь заримдаа санаанд оромгүй үр дүн гаргаж болдог. Мөн parent элементэд тодорхой **height** тохируулаагүй тохиолдолд percentage-д суурилсан **height** ашиглах нь төвөгтэй байж болохыг анхаарах хэрэгтэй.

Дүгнэж хэлбэл, CSS дахь **percentage** нь уян хатан, responsive дизайн бүтээхэд маш хүчтэй хэрэгсэл юм. Элементүүд контейнерийнхээ хэмжээнд пропорциональ байдлаар масштаблагдах шаардлагатай үед, эсвэл өөр өөр дэлгэцийн хэмжээнд саадгүй дасан зохицох layout хэрэгтэй үед percentage ашиглах нь тохиромжтой.
