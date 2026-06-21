How Does Scale Work in Design?
**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино.

Ямар нэг зүйлийн **scale** гэдэг нь түүний **хэмжээг** хэлнэ.

Вэб дизайн дахь scaling-ийг авч үзэх үед та өөр өөр элементүүдийн **хэмжээний харьцаа** болон эдгээр элементүүд **өөр өөр дэлгэцийн хэмжээнд хэрхэн дасан зохицохыг** харж байна гэсэн үг.

Элементүүдэд зөв **scale** ашиглах нь **visual hierarchy**-д чухал үүрэг гүйцэтгэдэг. Илүү **том элементүүд** нь илүү их анхаарал татдаг бөгөөд энэ нь хэрэглэгчдийг таны хүссэн дарааллаар контентыг даган харахад чиглүүлж чадна.

Жишээлбэл, **гарчиг (heading)** болон **догол мөр (paragraph)**-ийн хоорондох харагдах ялгаа нь уншигчийн анхаарлыг татдаг. Гэхдээ scale нь тохиромжтой байх ёстой бөгөөд ингэснээр уншигчийн анхаарлыг тухайн хэсэг рүү татах **нүдэнд тусах текст** бий болно.
<style>
  body {
    font-family: sans-serif;
    padding: 20px;
    background-color: #fdfdfd;
    color: #333;
  }

  .section {
    margin-bottom: 40px;
  }

  .big-heading {
    font-size: 40px;
    font-weight: bold;
    margin-bottom: 12px;
  }

  .paragraph {
    font-size: 16px;
    max-width: 600px;
    line-height: 1.6;
  }
</style>

<div class="section">
  <div class="big-heading">Discover the Power of Smart Design</div>
  <p class="paragraph">
    Great design isn’t just about colors or fonts — it’s also about scale. 
    A large heading like this one instantly grabs your attention, while the paragraph beneath it provides context and detail.
    Proper scaling creates a clear path for the reader’s eye to follow.
  </p>
</div>

**Scale** нь зөвхөн текстэд хамаарах ойлголт биш. Энэ нь **зурагт** мөн адил чухал. Жишээлбэл, **banner зурагны scale** нь desktop layout-д тохиромжтой байж болох ч mobile layout дээр хэт том байж болно.

Зургийн scale-ийг илүү тохиромжтой **харьцаанд багасгаснаар** та харагдах **visual impact**-ийг хадгалж, мөн вэбсайт дээрх мэдээллийг **харагдахуйц байлгах** боломжтой.

<style>
  body {
    font-family: sans-serif;
    padding: 20px;
    background-color: #fefefe;
    color: #333;
  }

  .banner {
    max-width: 100%;
    height: auto;
    display: block;
    margin: 0 auto 20px auto;
    border-radius: 8px;
  }

  .content {
    max-width: 600px;
    margin: 0 auto;
    font-size: 16px;
    line-height: 1.6;
  }

  @media (max-width: 600px) {
    .banner {
      max-width: 90%;
    }

    .content {
      font-size: 15px;
    }
  }
</style>

<img 
  src="https://placehold.co/1200x400/png?text=Large+Banner+Image"
  alt="Banner" 
  class="banner"
>

<div class="content">
  <p>
    This banner image looks great on a large screen, but on smaller devices, it scales down automatically.
    That way, it still delivers a strong visual impression without pushing the actual content off the screen.
    Scaling images properly helps maintain balance and accessibility across layouts.
  </p>
</div>

**Scale** нь мөн **интерактив байдал** болон таны вэбсайтыг бодитоор ашиглах боломжтой эсэхэд чухал нөлөөтэй. Хэрэв **navigation bar** дахь текстийн scale тохиромжтой биш байвал гар утасны хэрэглэгчид холбоос дээр дарахад хүндрэлтэй болно.

Харин scale-ийг зөв тохируулснаар холбоосууд нь **зөвхөн уншихад хялбар болоод зогсохгүй**, гар утас ашиглаж буй хэрэглэгчдэд **дарахаар илүү тохиромжтой** болдог.

<style>
  body {
    font-family: sans-serif;
    padding: 20px;
    margin: 0;
    background-color: #fafafa;
  }

  .navbar {
    background-color: #004080;
    padding: 15px 20px;
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
  }

  .nav-link {
    color: white;
    text-decoration: none;
    font-size: 18px;
    padding: 10px 15px;
    display: inline-block;
    border-radius: 4px;
  }

  .nav-link:hover {
    background-color: #0059b3;
  }

  @media (max-width: 600px) {
    .nav-link {
      font-size: 20px;
      padding: 14px 18px;
    }
  }
</style>

<nav class="navbar">
  <a href="#" class="nav-link">Home</a>
  <a href="#" class="nav-link">About</a>
  <a href="#" class="nav-link">Services</a>
  <a href="#" class="nav-link">Contact</a>
</nav>

Дизайнд **scale** чухал үүрэг гүйцэтгэх олон арга байдаг. Бид үндсэн ойлголтуудыг авч үзсэн тул одоо та түүний ач холбогдлын талаар **суурь ойлголттой болсон** байх ёстой.
