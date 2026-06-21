# CSS Framework гэж юу вэ, мөн үүнийг ашиглахын давуу болон сул талууд юу вэ?

Та CSS дээр ажиллах үед зарим бэрхшээлүүдтэй тулгарч магадгүй, жишээлбэл style-уудыг тогтвортой (consistent) байлгах, браузеруудын хооронд нийцтэй (compatible) болгох, давхардлыг (repetition) зайлсхийх, мөн төсөл доторх CSS файлуудын тоо болон төвөгшлийг (complexity) удирдах зэрэг. CSS framework-ууд эдгээр асуудлуудыг эхнээс нь сэргийлэхэд маш тустай.

CSS framework гэдэг нь таны HTML элементүүдийг style хийхэд ашиглаж болох урьдчилан бичигдсэн (pre-written) CSS кодын багц юм.

CSS framework ашигласнаар та ажлын урсгалаа (workflow) хурдасгаж, вебсайтын туршид жигд визуал стиль (uniform visual style) бий болгож, олон браузер дээр дизайн тогтвортой харагдах нөхцөлийг бүрдүүлж, мөн нийтдээ CSS кодоо илүү зохион байгуулалттай (organized) байлгаж чадна.

Та CSS framework-ийг toolbox гэж төсөөлж болно, өөрөөр хэлбэл хэрэгцээндээ тохирох style эсвэл component-ийг хурдан олж, CSS property-уудаар өөрөө бичихгүйгээр шууд ашиглах боломжтой. Эдгээр framework-ууд ихэвчлэн урьдчилан тодорхойлогдсон style болон component-уудыг агуулдаг бөгөөд үүнд responsive layout үүсгэх style-ууд ч орно.

Хамгийн түгээмэл CSS framework-уудын жишээнд Tailwind CSS, Bootstrap, Materialize, болон Foundation орно.

Одоо CSS framework-уудын хоёр төрлийн талаар ярья: utility-first CSS framework болон component-based CSS framework.

Tailwind CSS нь utility-first CSS framework юм. Энэ нь margin, padding, background color зэрэг тодорхой зорилготой жижиг class-уудыг агуулдаг гэсэн үг. Та эдгээр жижиг class-уудыг HTML элементүүдэд шууд оноож ашиглаж болно.

Жишээ нь:

<button class="bg-blue-500 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-700">
  Button
</button>

Энэ button нь цэнхэр background, цагаан болон bold текст, босоо (vertical) padding 2 rem, хэвтээ (horizontal) padding 4 rem, мөн дугуйрсан border-тэй байна. hover:bg-blue-700 class нь хэрэглэгч mouse-оор hover хийх үед background-ийг бараан цэнхэр болгоно.

Таны харж байгаачлан Tailwind CSS-ийн class-ууд маш нарийн (granular) тул HTML элемент бүр дээр хэрэгцээний дагуу ашиглах боломжтой.

Үүний эсрэгээр Bootstrap нь component-based CSS framework юм. Энэ нь урьдчилан бүтээгдсэн (pre-built) component-ууд болон урьдчилан тодорхойлогдсон style-уудтай бөгөөд та тэдгээрийг вебсайтдаа амархан нэмэх боломжтой. Эдгээр component-ууд ихэвчлэн framework-ийн албан ёсны баримт бичигт (official documentation) байдаг бөгөөд тэндээс copy paste хийж төсөлдөө хурдан ашиглаж болно.

Жишээлбэл, Bootstrap ашиглан list group үүсгэхийг хүсвэл HTML дээр дараах байдлаар бичнэ:

<div class="card" style="width: 25rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">HTML</li>
    <li class="list-group-item">CSS</li>
    <li class="list-group-item">JavaScript</li>
  </ul>
</div>

Эдгээр урьдчилан тодорхойлогдсон class-ууд card, list group, болон list group item-уудад стандарт style-уудыг автоматаар онооно.

Энд бид жижиг, ерөнхий class-ууд нэмэхийн оронд бүтэн component-ийг HTML бүтэцтэй нь хамт ашиглаж байгааг анзаараарай. Тиймээс Bootstrap нь component-based юм.

<div class="card" style="width: 25rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">HTML</li>
    <li class="list-group-item">CSS</li>
    <li class="list-group-item">JavaScript</li>
  </ul>
</div>

CSS framework-ууд олон давуу талтай боловч мөн зарим сул талуудтай. Зөв шийдвэр гаргахын тулд та аль алиныг нь мэдэх хэрэгтэй.

CSS framework-ууд урьдчилан тодорхойлогдсон style-ууд дээр тулгуурладаг тул дээр нь custom CSS нэмэхэд specificity асуудлууд үүсч болно. Framework-ийн selector-ууд таны custom CSS-ийн selector-уудаас илүү өндөр specificity-тэй байж болох тул зөв style харагдахгүй байж магадгүй. Үүнийг шийдэхийн тулд та илүү өндөр specificity-тэй selector ашиглах хэрэгтэй болдог бөгөөд энэ нь нэмэлт хүндрэлүүдийг үүсгэж болно.

Мөн эдгээр framework-ууд нь олон вебсайтад ижил стандарт style-уудыг ашигладаг тул өвөрмөц байдал (uniqueness)-ыг тодорхой хэмжээнд хязгаарлаж болно. Гэхдээ та custom style-ууд нэмж үүнийг шийдэж чадна.

Эцэст нь performance асуудлыг (performance issues) ч авч үзэх хэрэгтэй. Зарим framework-ууд нэлээн том хэмжээтэй байдаг бөгөөд ачаалагдахад хугацаа шаардаж болно.

Хөгжүүлэгчийн хувьд та CSS framework ашиглах нь таны төсөлд тохиромжтой эсэх, эсвэл бүрэн custom CSS ашиглах нь дээр үү, эсвэл хоёрыг хослуулах уу гэдгийг шийдэх хэрэгтэй.
