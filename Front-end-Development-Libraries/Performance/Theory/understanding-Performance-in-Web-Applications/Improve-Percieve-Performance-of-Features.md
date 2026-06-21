# Feature-үүдийн хүлээн авч буй гүйцэтгэлийг (Perceived Performance) хэрхэн сайжруулах вэ?

Бидний мэдэж байгаачлан, perceived performance нь зөвхөн сайт бодитоор хэр хурдан байгаагаас хамаарахгүй — харин хэрэглэгчид хэр хурдан мэт мэдрэгдэж байгаагаас хамаардаг. Тиймээс жишээ нь, та хэзээ нэгэн удаан мэт санагдсан вебсайт ашиглаж байсан уу, гэхдээ үнэндээ тийм ч удаан биш байсан? Энэ бол perceived performance — сайт хэрэглэгчид хэр хурдан мэт мэдрэгдэж байгааг хэлнэ.

Жижиг өөрчлөлтүүд (tweaks) нь хэрэглэгчийн туршлагад (user experience) асар их ялгаа гаргаж чадна. Perceived performance-ийг сайжруулах практик аргуудыг харцгаая!

Spinner-ууд нь хэрэглэгчдэд бодитоосоо илүү удаан хүлээж байгаа мэт мэдрэмж төрүүлдэг. Үүний оронд skeleton screen ашиглаарай — жинхэнэ контентыг дуурайсан саарал (gray) placeholder-ууд бөгөөд аажмаар ачаалагдана:

<div class="skeleton"></div>
<script>
  setTimeout(() => {
    document.querySelector(".skeleton").innerHTML = "✅ Content Loaded!";
  }, 2000);
</script>

Ингэснээр хэрэглэгчид харанхуйд (waiting in the dark) зүгээр хүлээж байгаагаас илүүтэйгээр, хуудас аажмаар (progressively) ачаалагдаж байна гэж мэдэрдэг.

Үүнээс гадна, хэрэглэгчид бүх зүйл ачаалагдахыг хүлээхгүйгээр харилцаж эхлэх боломжтой байх ёстой. Чухал контентыг эхлээд ачаалж, үлдсэнийг background-д ачаална. Үүнийг бид өмнө lazy loading-оор харсан:

<img src="placeholder.jpg" data-src="real-image.jpg" class="lazy">
<script>
  document.addEventListener("DOMContentLoaded", function () {
    const lazyImages = document.querySelectorAll("img.lazy");
    lazyImages.forEach(img => {
      img.src = img.dataset.src;
    });
  });
</script>

Ингэснээр бүх зүйл хараахан ачаалагдаагүй байсан ч хуудас хурдан хариу үйлдэлтэй (responsive) мэт санагдана.

Одоо — хэрэв таны сайт хэрэглэгч дараа нь юу дарахыг урьдчилан таамаглаж чадвал яах вэ? Preloading ашигласнаар та дараагийн хуудсыг хэрэглэгч хүсэлт гаргахаас өмнө татаж (fetch) чадна:

<link rel="preload" href="next-page.html" as="document">

Ингэснээр хэрэглэгч navigation хийх үед perceived loading time бараг тэг (near zero) болно.

Эцэст нь, хэрэглэгчид тодорхойгүй байдалд (uncertainty) дургүй. Тэд товч дээр дарахад, тэдний үйлдлийг шууд хүлээн зөвшөөрөх (acknowledge) хэрэгтэй:

<button onclick="this.innerText='⏳ Processing...'; setTimeout(() => this.innerText='✅ Done!', 2000);">
  Click Me
</button>

Ингэснээр, саатал (delay) байсан ч хэрэглэгч ямар нэг зүйл болж байна гэж мэдэрдэг.

Тэгэхээр дүгнэж хэлбэл, perceived performance-ийг сайжруулах нь зөвхөн raw speed-ээс хамаарахгүй, харин хурд хэрэглэгчид хэрхэн мэдрэгдэж байгаагаас хамаарна. Skeleton screen ашиглах, чухал контентыг түрүүнд ачаалах, ухаалгаар preload хийх, мөн шууд feedback өгөх замаар сайтаа илүү хурдан мэт мэдрэгддэг болгоорой.
