# Дизайндаа Зурагтай Ажиллахад Баримтлах Шилдэг Практикууд юу вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино.

Вэбсайтдаа зураг нэмэх нь хэрэглэгчдийн анхаарлыг татах болон таны сайтын **харагдах байдлыг илүү сонирхолтой болгох** маш сайн арга юм. Гэхдээ дизайнд зураг ашиглахдаа анхаарах хэд хэдэн зүйл байдаг.

Хамгийн түрүүнд анхаарах зүйл бол **responsive images** үүсгэх явдал юм. **Responsive images** гэдэг нь тухайн зураг **харагдаж буй дэлгэцийн хэмжээнд тохируулан масштаблагддаг** зураг юм. Энэ нь чухал ач холбогдолтой бөгөөд ингэснээр таны зургууд **desktop компьютерээс эхлээд гар утас хүртэл бүх төхөөрөмж дээр** зөв харагдах боломжтой болдог.
<style>
  body {
    font-family: sans-serif;
    padding: 20px;
    background-color: #fefefe;
    color: #333;
    text-align: center;
  }

  img {
    max-width: 100%;
    height: auto;
    border-radius: 8px;
  }

  p {
    font-size: 16px;
    max-width: 600px;
    margin: 20px auto;
    line-height: 1.6;
  }
</style>

<h1>Responsive Cat Image</h1>

<img 
  src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" 
  alt="Two cats peacefully sleeping together."
/>

<p>
  This image automatically scales based on the screen size. Whether you're viewing on a desktop or a mobile phone,
  it adjusts its size without losing proportions, making the design clean and user-friendly on all devices.
</p>

Зураг ашиглахдаа анхаарах өөр нэг зүйл бол **зургийн resolution** юм. Илүү чанартай, өндөр resolution-той зургууд нь **нэг инчид илүү олон пиксел** агуулдаг. **Пиксел (pixels)** гэдэг нь зургийг бүрдүүлдэг жижиг дөрвөлжин элементүүд юм.

**Pixels per inch**, буюу **PPI**, нь зургийн нэг инчид хэдэн пиксел байгааг илэрхийлдэг. **PPI өндөр байх тусам зургийн чанар илүү сайн** байдаг.

Та өөрийн зургууд **өндөр чанартай** бөгөөд **бүх төхөөрөмж дээр сайн харагдах** эсэхийг шалгах хэрэгтэй. Энэ нь та **вэбэд тохируулан оновчлогдсон өндөр resolution-той зургууд** ашиглах шаардлагатай гэсэн үг юм.

Анхаарах өөр нэг зүйл бол **зургийн хэмжээ** болон тэдгээр нь layout дахь зайд **хэрхэн багтаж байгаа** явдал юм. Та зургууд **зөв хэмжээтэй** бөгөөд **хэт том эсвэл хэт жижиг биш** байхыг баталгаажуулах хэрэгтэй.

Дизайн дахь жижиг зайд зориулагдсан хэсэгт **хэт том зураг ашиглах** нь таны вэбсайтыг **удаашруулах** бөгөөд хэрэглэгчдэд сайтыг **ачаалахад хүндрэлтэй** болгодог. Иймээс зургууд **зөв хэмжээтэй**, мөн **вэбэд тохируулан оновчлогдсон** байх хэрэгтэй.

Зургийг хаана байрлуулах тухайд **balance**, **hierarchy**, болон **alignment**-ийг бодолцох хэрэгтэй. Ингэснээр таны зургууд вэбсайтад **оновчтой байрласан** байх боломжтой болно.

**Balance** гэдэг нь дизайнд байгаа **харагдах жингийн хуваарилалт** юм. Та сайт дээр **текст болон зурагны хооронд зөв тэнцвэр** бий болгосноор **зохицолтой дизайн** үүсгэх боломжтой.

<style>
  body {
    font-family: sans-serif;
    margin: 0;
    padding: 40px 20px;
    background-color: #f9f9f9;
    color: #333;
  }

  .container {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-between;
    gap: 30px;
    max-width: 1000px;
    margin: 0 auto;
  }

  .text {
    flex: 1 1 400px;
  }

  .text h2 {
    font-size: 28px;
    margin-bottom: 10px;
  }

  .text p {
    font-size: 16px;
    line-height: 1.6;
  }

  .image {
    flex: 1 1 400px;
  }

  .image img {
    width: 100%;
    height: auto;
    border-radius: 8px;
  }
</style>

<div class="container">
  <div class="text">
    <h2>Balanced Layout</h2>
    <p>
      Balance is essential in web design. By evenly distributing visual weight—such as pairing this block of text
      with a complementary image—you create a layout that feels calm, structured, and easy to navigate.
    </p>
  </div>

  <div class="image">
    <img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Two cats peacefully sleeping together.">
  </div>
</div>

**Hierarchy** гэдэг нь хуудсан дээрх элементүүдийг **ямар дарааллаар харахыг** илэрхийлдэг ойлголт юм. Та **чухал контенттой холбоотой зургуудыг**, ач холбогдол багатай зургуудтай харьцуулахад **илүү дээд хэсэгт байрлуулах** хэрэгтэй.

<style>
  body {
    font-family: sans-serif;
    padding: 30px 20px;
    background-color: #fff;
    color: #222;
    max-width: 800px;
    margin: 0 auto;
  }

  .section {
    margin-bottom: 40px;
  }

  .section img {
    width: 100%;
    height: auto;
    border-radius: 8px;
    margin-bottom: 15px;
  }

  .section h2 {
    font-size: 24px;
    margin-bottom: 10px;
  }

  .section p {
    font-size: 16px;
    line-height: 1.6;
  }
</style>

<div class="section">
  <img 
    src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" 
    alt="Two cats peacefully sleeping together."
  >
  <h2>Our Feline Rescue Mission</h2>
  <p>
    This image supports one of our most important stories — the rescue of 12 stray cats from a storm drain. 
    Placing it at the top ensures visitors connect emotionally with our mission right away.
  </p>
</div>

<div class="section">
  <h2>Upcoming Fundraiser</h2>
  <p>
    Join us for a small fundraising event to support our shelter. It’ll be a fun, casual afternoon with 
    snacks, games, and of course — plenty of cats!
  </p>
  <img 
    src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" 
    alt="Two cats peacefully sleeping together."
  >
</div>

**Alignment** гэдэг нь элементүүдийг хооронд нь **ямар байрлалын харьцаатайгаар байрлуулж байгааг** хэлнэ. Та зургуудыг сайт дээрх **текст болон бусад элементүүдтэй зөв зэрэгцүүлж байрлуулах** хэрэгтэй бөгөөд ингэснээр **нэгдмэл дизайн** бий болно.

<style>
  body {
    font-family: sans-serif;
    padding: 40px 20px;
    background-color: #ffffff;
    color: #222;
    max-width: 900px;
    margin: 0 auto;
  }

  .aligned-content {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 20px;
  }

  .aligned-content img {
    width: 300px;
    height: auto;
    border-radius: 8px;
    flex-shrink: 0;
  }

  .aligned-text {
    flex: 1;
    min-width: 250px;
  }

  .aligned-text h2 {
    font-size: 24px;
    margin-bottom: 10px;
  }

  .aligned-text p {
    font-size: 16px;
    line-height: 1.6;
  }
</style>

<div class="aligned-content">
  <img 
    src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" 
    alt="Two cats peacefully sleeping together."
  >

  <div class="aligned-text">
    <h2>Aligned Elements</h2>
    <p>
      In this example, the image is aligned horizontally next to the text block. This creates a visually cohesive layout, 
      where both elements feel like they belong together. Proper alignment like this improves readability and reinforces 
      structure in your design.
    </p>
  </div>
</div>

Анхаарах хамгийн сүүлийн зүйл бол **зурагны accessibility** юм. Та зургууд **бүх хэрэглэгчдэд хүртээмжтэй** байхыг хангах хэрэгтэй бөгөөд үүнд **харааны бэрхшээлтэй хэрэглэгчид** ч багтана. Энэ нь таны зургууд дээр **alt text** ашиглах ёстой гэсэн үг юм. Ингэснээр **screen reader** програмууд харааны бэрхшээлтэй хэрэглэгчдэд тухайн текстийг **уншиж өгч** чадна.
