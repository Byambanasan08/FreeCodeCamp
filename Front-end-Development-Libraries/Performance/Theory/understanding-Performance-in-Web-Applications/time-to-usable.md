# "Time to Usable"-ийг хэрхэн сайжруулах вэ?

"Time to usable"-ийг сайжруулах нь, өөрөөр хэлбэл хэрэглэгч хуудас хүсэлт (request) илгээснээс эхлээд утгатайгаар (meaningfully) харилцаж эхлэх хүртэлх хугацааг багасгах нь хэрэглэгчийн туршлагыг (user experience) сайжруулахад маш чухал.

Илүү хурдан "time to usable" хүрэх үр дүнтэй стратегиудыг (strategies) авч үзье.

Эхлээд хэрэглэгчийн хамгийн түрүүнд харж буй контент дээр анхаарлаа төвлөрүүл. Энэ нь чухал элементүүдийг шууд ачаалж, чухал биш компонентуудыг (non-critical components) хойшлуулах (defer) гэсэн үг.

Жишээлбэл, та lazy loading хэрэгжүүлж болно.

Бид lazy loading-ийг өмнө нь үзсэн, гэхдээ сануулах зорилгоор lazy load image-ийн жишээг харуулъя:

<img src="image.jpg" loading="lazy" alt="Description">

Танд хийх хэрэгтэй зүйл бол image tag-д loading="lazy" attribute нэмэх. Энэ нь зурагнуудыг хэрэгтэй үед нь, ихэвчлэн хэрэглэгчийн viewport-д орж ирэх үед нь ачаалахыг хойшлуулдаг. Зураг болон видеог зөвхөн viewport-д орж ирэх үед ачаалснаар бид bandwidth-ийг хэмнэж, мөн эхний рэндэрлэлтийг (initial rendering) хурдлуулж байна.

Ер нь веб хуудас бүх зурагнуудыг нэг дор ачаалдаг, дэлгэц дээр харагдахгүй байгаа зурагнуудыг ч гэсэн. Харин lazy loading ашигласнаар fold-оос доош байрласан зурагнууд буюу off-screen байгаа зурагнууд хэрэглэгч доош scroll хийх үед л ачаалагдана.

Мөн lazy load iframe-ийн жишээ:

<iframe src="video.html" loading="lazy"></iframe>

Та өмнө хэрэглэсэнтэй адил attribute-г энэ удаад iframe-д хэрэглэж болно, мөн адил зарчим үйлчилнэ.

Мөн defer attribute ашиглан чухал биш JavaScript-ийг (non-critical JavaScript) эхний хуудас ачаалалтын дараа гүйцэтгэхээр хойшлуулж болно. Үүний жишээ:

<script src="non-critical.js" defer></script>

Та мөн render-blocking нөөцүүдийг (resources) багасгах талаар бодож болно.

Render-blocking нөөцүүд нь хуудсыг интерактив (interactive) болох хугацааг хойшлуулдаг.

Үүнээс зайлсхийхийн тулд CSS-ийг асинхрон (asynchronously) ачаалахыг оролдож болно. Чухал биш CSS-д media attribute ашиглан stylesheet-уудыг нөхцөлт (conditionally) ачаалах боломжтой. Үүний жишээ:

<link rel="stylesheet" href="print.css" media="print">

media утгыг print гэж өгснөөр print.css зөвхөн хуудас хэвлэх (print) эсвэл preview хийх үед л ачаалагдана. Дараагийн жишээнд media attribute-д min-width: 800px гэсэн утга өгснөөр desktop.css зөвхөн 800px-ээс өргөн дэлгэц дээр ачаалагдана гэж хэлж байна:

<!-- This stylesheet is only loaded on screens wider than 800px -->

<link rel="stylesheet" href="desktop.css" media="(min-width: 800px)">

Ингэснээр шаардлагагүй style-уудыг алгасаж, bandwidth-ийг хэмнэдэг.

Тэгэхээр дүгнэж хэлбэл, эдгээр стратегиудыг хэрэгжүүлснээр та вебсайтынхаа "time to usable"-ийг мэдэгдэхүйц багасгаж, хэрэглэгчид контенттой хурдан харилцах боломжийг бүрдүүлж чадна.
