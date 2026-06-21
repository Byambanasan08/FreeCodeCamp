# Гүйцэтгэлийн (Performance) гол ойлголтууд юу вэ?

Яагаад зарим вебсайтууд хурдан (snappy), шуурхай хариу үйлдэлтэй (responsive) мэт санагддаг байхад, зарим нь удаан (sluggish) мэт санагддаг вэ? Хариулт нь хуудсыг хэрхэн ачаалж (load) болон рэндэрлэх (render) явцад нөлөөлдөг гүйцэтгэлийн гол ойлголтуудад (key performance concepts) оршдог. Вебийн гүйцэтгэлийн (web performance) гол ойлголтуудыг ойлгох нь хурдан, жигд (smooth), хэрэглэгчдэд ээлтэй (user-friendly) вебсайтууд бүтээхэд маш чухал.

Source order, critical rendering path, latency болон бусад ойлголтуудыг задалж харцгаая.

Эхлээд source order-ийг харцгаая.

Source order гэдэг нь HTML элементүүдийг баримт бичиг (document)-д хэрхэн бүтэцлэн (structured) байрлуулсныг хэлнэ. Энэ нь аль элемент түрүүлж ачаалагдахыг тодорхойлдог бөгөөд гүйцэтгэл (performance) болон хүртээмж (accessibility)-д ихээхэн нөлөөлж чадна.

Үүнд дараах шилдэг туршлагууд (best practices) орно:

```
Гарчиг (headings), навигаци (navigation) эсвэл үндсэн текст (main text) зэрэг чухал контентыг HTML бүтэц дотор дээд хэсэгт байрлуулах.

Аналитик (analytics) эсвэл гуравдагч талын widget зэрэг шаардлагагүй (non-essential) скриптүүдийг defer хийх, ингэснээр рэндэрлэх процессыг (rendering) блоклохгүй байх.

Progressive enhancement ашиглах, ингэснээр style болон script ачаалагдахаас өмнө ч үндсэн туршлага (core experience) ажиллах боломжтой байх. Progressive enhancement гэдэг нь HTML-ийг эхэнд нь ажиллах боломжтой байдлаар суурь болгон вебсайт болон аппликейшн бүтээх арга юм.
```

Доорх нь бидний сая дурдсан шилдэг туршлагуудыг ашигласан сайн source order-ийн жишээ юм.

<!-- Good source order: Essential content first -->

<h1>Welcome to FastSite!</h1>
<p>Critical information loads first.</p>
<script src="slow-script.js" defer></script>

Source order-ийг оновчтой болгосноор хэрэглэгчид чухал контентыг аль болох хурдан харах боломжтой болдог.

Одоо critical rendering path-ийг харцгаая.

Critical rendering path гэдэг нь браузер (browser) кодыг дэлгэц дээрх пиксел (pixels) болгон хувиргахын тулд дагадаг алхмуудын дараалал юм.

Доорх нь бид дараа дэлгэрэнгүй үзэх гол алхмууд юм:

```
HTML-ийг parse хийх: DOM (Document Object Model)-ийг үүсгэнэ

CSS-ийг parse хийх: CSSOM (CSS Object Model)-ийг үүсгэнэ

JavaScript гүйцэтгэх (execution): DOM болон CSSOM-ийг өөрчилж чадна

Render Tree байгуулах (construction): DOM болон CSSOM-ийг нэгтгэнэ

Layout болон Painting: Элементүүдийн хэмжээг тодорхойлж, пикселүүдийг зурна

Оновчлолууд (Optimizations):

    Render-blocking нөөцүүдийг (resources) багасгах (жишээ нь: том CSS файлууд, ашиглагдаагүй JS).

    Скриптүүдэд async болон defer attribute ашиглах:

    Эхэнд зөвхөн чухал style-уудыг ачаалж, чухал биш CSS-ийг defer хийх.
```

Ерөнхийдөө critical rendering path богино байх тусам perceived performance илүү хурдан байна гэсэн үг. Бид үүнийг дараа илүү дэлгэрэнгүй авч үзнэ.

Эцэст нь latency-г харцгаая.

Latency гэдэг нь хүсэлт (request) браузер болон сервер (server)-ийн хооронд дамжихад зарцуулах хугацаа юм. Өөрөөр хэлбэл, өндөр latency = удаан хуудсууд гэсэн үг.

Latency-г багасгах зарим аргууд:

```
CDN (Content Delivery Networks)-уудыг ашиглах, өөрөөр хэлбэл файлуудыг хэрэглэгчид ойр байрлалаас хүргэх.

Gzip зэрэг технологи ашиглан шахалт (compression)-ыг идэвхжүүлж, файлын хэмжээг багасгах.

Зургийг оновчтой болгох (optimize) болон lazy loading ашиглах — үүнийг бид дараа мөн дэлгэрэнгүй авч үзнэ.
```

Latency-г багасгаснаар харилцан үйлдэл (interactions) бараг шууд (instant) мэт санагддаг болно.

Тэгэхээр дүгнэж хэлбэл, source order-ийг оновчтой болгох, critical path-ийг багасгах, мөн latency-г бууруулснаар та вебсайтаа хурдан мэт мэдрэгддэг болгож чадна.
