**Font Squirrel болон Google Fonts зэрэг External Fonts-той хэрхэн ажиллах вэ?**

External font гэдэг нь таны төслийн файлууд дотор шууд багтаагүй фонтын файл юм. Ихэвчлэн тэдгээрийг тусдаа сервер дээр байршуулсан байдаг. Сервер гэдэг нь сүлжээгээр дамжуулан бусад компьютерууд руу өгөгдөл эсвэл үйлчилгээ үзүүлдэг компьютер юм. Та серверийн талаар дараагийн хичээлүүдэд илүү дэлгэрэнгүй сурах болно. External fonts нь хэрэглэгчийн төхөөрөмж дээр суусан байх албагүй custom фонтуудыг ашиглах боломж олгодог тул илүү уян хатан байдлыг бий болгодог.

Google Fonts болон Font Squirrel нь вэб хөгжүүлэлтэд зориулсан үнэгүй фонтуудыг олох, ашиглахад түгээмэл хэрэглэгддэг онлайн эх сурвалжууд юм. Та тэдгээрийг төслүүддээ маш амархан оруулж ашиглаж болно.

Эхлээд Google Fonts-оос эхэлье. Энэ нь Google-ийн үйлчилгээ бөгөөд вэб хөгжүүлэлтэд зориулж тусгайлан зохион бүтээгдсэн олон төрлийн фонтуудын цуглуулгыг санал болгодог. Google Fonts-ийн хэрэглэгчийн интерфейс дээр олон янзын элементүүд харагддаг. Тэдгээрийг нэг бүрчлэн авч үзье. Зүүн талын sidebar дээр та дараах хэсгүүдийг олно:

* Фонтуудыг харах, хайх, болон шүүх хэсэг.
* Noto нэртэй тусгай хэсэг. Энэ нь 1,000 гаруй хэл болон 150 гаруй бичгийн системд ашиглах боломжтой, янз бүрийн жин, өргөн, хэв маягтай өндөр чанартай фонтуудын цуглуулга юм.
* Вэб төслүүддээ ашиглах icon-уудыг олох, татах хэсэг.
* Фонт болон тэдгээрийг ашиглах шилдэг практикуудын талаар сурах хэсэг, мөн түгээмэл асуултууд.

Google Font-ийг вэбсайтдаа нэмэхийн тулд та эхний хэсэг болох **Fonts** руу орно. Та зүүн sidebar дээрх “Preview” хэсэгт харагдах preview текстийг өөрчлөх боломжтой. Та харахыг хүссэн текстээ бичихэд тэр даруй шинэчлэгдэнэ. Энэ нь таны вэбсайт дээр ашиглах гэж буй бодит тексттэй хамт фонтыг урьдчилан харахад тусалдаг. Та мөн фонтын хэмжээг тохируулж, фонтуудыг шинж чанараар нь шүүх боломжтой.

Фонтын талаар илүү мэдээлэл харахын тулд түүн дээр дарна. Тэгвэл тухайн фонтыг хэн зохиосон, preview текст, мөн light, regular, medium, bold, black зэрэг өөр өөр хэв маягуудын тухай мэдээллийг харж болно. Дээд хэсгийн сонголтууд дээр дарвал type tester-г ашиглах, тус бүрийн glyph-ийг харах, мөн фонт болон лицензийн талаар илүү их мэдээлэл авах боломжтой.

Та preview текстийн хэмжээг preview текст бичих хэсгийн хажууд байрлах цэнхэр slider ашиглан өөрчилж болно. Фонтыг төслдөө нэмэхэд бэлэн болмогц дээд талын цэнхэр **“Get font”** товчийг дарна. Дараа нь таны сонгосон фонтууд харагдах summary хуудас руу шилжинэ. Та нэгэн зэрэг олон фонт сонгож болно.

Дараагийн алхамд та фонтын файлуудыг татаж аваад төслөө local file хэлбэрээр нэмэх эсвэл external font хэлбэрээр Google-ийн серверээс татаж ашиглах эсэхээ сонгоно. Хэрэв та тэдгээрийг татаж авахыг хүсвэл **“Download all”** дээр дарна. Харин external font хэлбэрээр ашиглахыг хүсвэл **“Get embed code”** дээр дарна. **“Get embed code”** дээр дарвал эдгээр external фонтуудыг төслдөө хэрхэн нэмэх зааврыг харах болно.

Вэб хөгжүүлэлтийн төслүүдэд танд хоёр сонголт байдаг. Та **link element** эсвэл **@import** ашиглаж болно. Хэрэв link element ашиглавал HTML snippet болон CSS rule-уудыг хуулж төслдөө нэмнэ. Та кодыг HTML файлын **head** элемент дотор байрлуулж, шаардлагатай CSS rule-уудыг нэмэх хэрэгтэй.

Доорх нь бүх Roboto хэв маягуудыг ашигласан жишээ юм:

```html id="sknjz4"
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="styles.css">

<p class="roboto-thin">roboto-thin</p>
<p class="roboto-light">roboto-light</p>
<p class="roboto-regular">roboto-regular</p>
<p class="roboto-medium">roboto-medium</p>
<p class="roboto-bold">roboto-bold</p>
<p class="roboto-black">roboto-black</p>

<p class="roboto-thin-italic">roboto-thin-italic</p>
<p class="roboto-light-italic">roboto-light-italic</p>
<p class="roboto-regular-italic">roboto-regular-italic</p>
<p class="roboto-medium-italic">roboto-medium-italic</p>
<p class="roboto-bold-italic">roboto-bold-italic</p>
<p class="roboto-black-italic">roboto-black-italic</p>
```

```css id="g6tfwd"
.roboto-thin {
  font-family: "Roboto", sans-serif;
  font-weight: 100;
  font-style: normal;
}

.roboto-light {
  font-family: "Roboto", sans-serif;
  font-weight: 300;
  font-style: normal;
}

.roboto-regular {
  font-family: "Roboto", sans-serif;
  font-weight: 400;
  font-style: normal;
}

.roboto-medium {
  font-family: "Roboto", sans-serif;
  font-weight: 500;
  font-style: normal;
}

.roboto-bold {
  font-family: "Roboto", sans-serif;
  font-weight: 700;
  font-style: normal;
}

.roboto-black {
  font-family: "Roboto", sans-serif;
  font-weight: 900;
  font-style: normal;
}

.roboto-thin-italic {
  font-family: "Roboto", sans-serif;
  font-weight: 100;
  font-style: italic;
}

.roboto-light-italic {
  font-family: "Roboto", sans-serif;
  font-weight: 300;
  font-style: italic;
}

.roboto-regular-italic {
  font-family: "Roboto", sans-serif;
  font-weight: 400;
  font-style: italic;
}

.roboto-medium-italic {
  font-family: "Roboto", sans-serif;
  font-weight: 500;
  font-style: italic;
}

.roboto-bold-italic {
  font-family: "Roboto", sans-serif;
  font-weight: 700;
  font-style: italic;
}

.roboto-black-italic {
  font-family: "Roboto", sans-serif;
  font-weight: 900;
  font-style: italic;
}
```

Фонтын хэв маяг бүрт зориулсан CSS rule байна. Rule бүр custom фонтыг fallback фонттой хамт оноож өгдөг бөгөөд ингэснээр custom фонт ачаалагдахгүй тохиолдолд fallback фонт ашиглагдана.

Хэрэв та **@import** сонголтыг ашиглавал энэ rule-г CSS файлдаа нэмэх хэрэгтэй. Жишээ нь:

```css id="4lb4v8"
@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');
```

CSS rule-ууд яг ижил байдаг.

Хэрэв та зөвхөн тодорхой фонтын хэв маягуудыг ашиглахыг хүсвэл snippet-ээс тэдгээрийг хасах боломжтой. HTML болон CSS snippet-үүд автоматаар шинэчлэгдэнэ.

Энэ бол Google Fonts юм. Энэ нь вэб хөгжүүлэлтийн төслүүдэд зориулсан үнэгүй, нээлттэй эхийн фонтуудыг олох хамгийн түгээмэл сонголтуудын нэг юм.

Өөр нэг сайн сонголт бол Font Squirrel юм. Энд та дизайнд тохирох custom фонтуудыг хайж олж, татаж авах боломжтой. Хэрэв та фонт хайгаад үр дүн дээр дарвал тухайн фонтын тухай илүү дэлгэрэнгүй мэдээллийг харах боломжтой. Үүнд specimens, test drive, glyphs, болон Webfont kit зэрэг орно. Мөн thin, light, medium, bold, black зэрэг янз бүрийн хэв маягуудын жишээг харж болно.

Та төслдөө ашиглах фонтоо сонгосны дараа **“Webfont Kit”** tab руу орно. Энд тухайн фонтын лиценз @font-face CSS embedding-д ашиглахыг зөвшөөрдөг эсэхийг шалгаж болно. Мөн subset болон формат сонгох боломжтой.

**“Download @font-face Kit”** товчийг дарвал compressed (zip) файл татагдана. Хэрэв та задлах (unzip) хийвэл **“web fonts”** нэртэй folder, лицензийн text файл, мөн web fonts хэрхэн ашиглах заавартай HTML файл харагдана. Web fonts folder дотор таны төслүүдэд хэрэгтэй бүх фонтын файлууд байна. Тэдгээр нь янз бүрийн фонтын хэв маягуудын дагуу тусдаа folder-ууд дотор бүлэглэгдсэн байна.

Хэрэв та HTML файлыг browser дээр нээвэл фонтуудыг төслдөө хэрхэн нэмэх, stylesheet дотор @font-face declaration ашиглан хэрхэн оруулах, мөн CSS rule-ууд дотор хэрхэн ашиглах талаар зааварчилгаа харагдана.

Ингэж та Font Squirrel-ийн custom фонтуудыг төслдөө нэмэх боломжтой. Мөн та тэдгээрийг тусдаа сервер дээр байршуулж external font хэлбэрээр ашиглаж болно. External fonts нь вэбсайтын ерөнхий харагдах байдал болон дизайныг өөрчлөхөд маш их тусалдаг. Тэд таны вэбсайтыг үнэхээр өвөрмөц болгож чадна.

Гэхдээ олон external font ашиглах нь вэбсайтын ачааллах хугацааг нэмэгдүүлж, нийт гүйцэтгэлд нөлөөлж болзошгүйг санах хэрэгтэй. Та үргэлж хэв маяг болон үр ашиг хоёрын хооронд тэнцвэрийг олохыг хичээх хэрэгтэй.
