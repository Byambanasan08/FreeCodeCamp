# Дизайндаа Background болон Foreground-ийн сайн Contrast-ийг хэрхэн үүсгэх вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино.

Эхлээд та **contrast**-ийн тухай ойлголттой танилцах хэрэгтэй.

**Contrast** гэдэг нь хоёр өнгийн хоорондох **ялгаа**, өөрөөр хэлбэл тэдгээрийг хооронд нь **ялгаж харах хэр амархан байгааг** илэрхийлдэг.

**Илүү өндөр contrast**-тай өнгүүд нь харагдах байдлаараа илүү тод ялгаатай байдаг. Харин **бага contrast**-тай өнгүүд нь хоорондоо илүү төстэй харагддаг.

Жишээлбэл:

* **хар ба цагаан** өнгө нь маш **өндөр contrast ratio**-той байдаг
* харин **цайвар хөх** болон **цайвар нил ягаан** өнгүүдийн хооронд contrast бага байдаг.
<style>
  .example {
    padding: 20px;
    margin-bottom: 20px;
    font-size: 18px;
    font-family: sans-serif;
  }

  .high-contrast {
    background-color: black;
    color: white;
  }

  .low-contrast {
    background-color: #add8e6; 
    color: #dda0dd; 
  }

  .label {
    font-weight: bold;
    margin-bottom: 5px;
  }
</style>

<div class="example high-contrast">
  <div class="label">High Contrast</div>
  This text has high contrast (black background and white text).
</div>

<div class="example low-contrast">
  <div class="label">Low Contrast</div>
  This text has low contrast (light blue background and light purple text).
</div>

Мэдээж эдгээр жишээнүүдэд ялгаа нь layout-ийн нөлөөгөөр илүү тод харагдаж байж болно. Харин эдгээр өнгүүдийг текст дээр ашиглавал яах вэ? Та **цагаан background дээр өндөр contrast-той хар текст** ашиглаж болно. Мөн **цэнхэр background дээр бага contrast-той нил ягаан текст** ашиглаж болно.

<style>
  .text-example {
    padding: 10px;
    margin-bottom: 20px;
    font-size: 18px;
    font-family: sans-serif;
  }

  .text-high-contrast {
    background-color: white;
    color: black;
  }

  .text-low-contrast {
    background-color: #add8e6; 
    color: #dda0dd; 
  }

  .label {
    font-weight: bold;
    margin-bottom: 5px;
    display: block;
  }
</style>

<div class="text-example text-high-contrast">
  <span class="label">High Contrast Text</span>
  This is high contrast text: black text on a white background.
</div>

<div class="text-example text-low-contrast">
  <span class="label">Low Contrast Text</span>
  This is low contrast text: purple text on a light blue background.
</div>

Гэхдээ “хангалттай сайн” contrast гэж юуг хэлэх вэ гэдгийг хэрхэн тодорхойлох вэ? Та зөвхөн текст танд хэрхэн харагдаж байгаагаар нь дүгнэж болохгүй, учир нь хэрэглэгч бүрийн харах туршлага өөр өөр байдаг. Аз болоход **Web Content Accessibility Guidelines**, буюу **WCAG**, энэ талаар стандарт тогтоож өгсөн байдаг.

**4.5:1 contrast ratio**-той текстийг **AA стандарт** гэж үздэг бөгөөд энэ нь ихэнх хэрэглэгчдэд хүртээмжтэй байхын тулд дагаж мөрдөх ёстой хамгийн бага шаардлага юм. **7:1 contrast ratio**-той текстийг **AAA стандарт** гэж үздэг бөгөөд энэ нь хүртээмжийн **хамгийн өндөр түвшнийг** хангадаг.

<style>
  .contrast-example {
    padding: 15px;
    margin-bottom: 20px;
    font-size: 18px;
    font-family: sans-serif;
  }

  .aa-contrast {
    background-color: #ffffff; 
    color: #4b4b4b; 
  }

  .aaa-contrast {
    background-color: #ffffff; 
    color: #1a1a1a; 
  }

  .label {
    font-weight: bold;
    margin-bottom: 8px;
    display: block;
  }
</style>

<div class="contrast-example aa-contrast">
  <span class="label">AA Standard (Contrast Ratio ~4.5:1)</span>
  This text meets the minimum accessibility standard for contrast.
</div>

<div class="contrast-example aaa-contrast">
  <span class="label">AAA Standard (Contrast Ratio ~7:1)</span>
  This text meets the highest accessibility standard for contrast.
</div>

Хоёр өнгийн хоорондох **contrast ratio**-г шалгах боломжтой олон вэбсайт байдаг. Мөн ихэнх браузерууд таны вэбсайтын **developer tools** дотор шууд энэ шалгалтыг хийх боломжийг олгодог.

Одоо энэ ойлголтыг илүү сайн ойлгохын тулд contrast ratio-ийн хэд хэдэн жишээг харцгаая.

Доорх нь **цагаан background дээрх хар текстийн** жишээ бөгөөд энэ нь **21:1 contrast ratio**-той байдаг.
<style>
  .contrast-21 {
    background-color: white;
    color: black;
    padding: 15px;
    font-family: sans-serif;
    font-size: 18px;
    margin-bottom: 20px;
  }

  .label {
    font-weight: bold;
    margin-bottom: 8px;
    display: block;
  }
</style>

<div class="contrast-21">
  <span class="label">Contrast Ratio 21:1</span>
  This is black text on a white background, which has the highest contrast ratio of 21:1.
</div>

Энэ жишээ нь **AAA стандартын шаардлагыг бүрэн хангахаас ч илүү** байна. Одоо **цэнхэр background дээрх нил ягаан текстийн** жишээг харцгаая.
<style>
  .contrast-21 {
    background-color: white;
    color: black;
    padding: 15px;
    font-family: sans-serif;
    font-size: 18px;
    margin-bottom: 20px;
  }

  .label {
    font-weight: bold;
    margin-bottom: 8px;
    display: block;
  }

  .purple-on-blue {
    background-color: #0000cc;
    color: #800080; 
    padding: 15px;
    font-family: sans-serif;
    font-size: 18px;
    margin-bottom: 20px;
  }
</style>

<div class="contrast-21">
  <span class="label">Contrast Ratio 21:1</span>
  This example more than meets the AAA standard with black text on white background.
</div>

<div class="purple-on-blue">
  <span class="label">Purple on Blue (Lower Contrast)</span>
  This doesn't meet the AA standard.
</div>

Энэ жишээ нь **1.48:1 contrast ratio**-той бөгөөд **AA стандартын шаардлагыг ч хангахгүй** байна.

Үүнийг хэрхэн засах вэ? Contrast ratio-д нөлөөлдөг **гурван үндсэн хүчин зүйл** байдаг.

Эхнийх нь **hue** юм. **Hue** нь өнгийн ерөнхий төрлийг илэрхийлдэг бөгөөд жишээлбэл **улаан, хөх, улбар шар** зэрэг өнгөнүүд орно. Одоо хөх өнгөнөөс илүү хол байрлах hue рүү шилжүүлье. Энэ тохиолдолд **улаан өнгийг** ашиглая.
<style>
  .contrast-21 {
    background-color: white;
    color: black;
    padding: 15px;
    font-family: sans-serif;
    font-size: 18px;
    margin-bottom: 20px;
  }

  .label {
    font-weight: bold;
    margin-bottom: 8px;
    display: block;
  }

  .red-on-blue {
    background-color: #0000cc; 
    color: #ff0000; 
    padding: 15px;
    font-family: sans-serif;
    font-size: 18px;
    margin-bottom: 20px;
  }
</style>

<div class="contrast-21">
  <span class="label">Contrast Ratio 21:1</span>
  This example more than meets the AAA standard with black text on white background.
</div>

<div class="red-on-blue">
  <span class="label">Red on Blue (Higher Contrast Hue Shift)</span>
  This doesn't meet accessibility standards.
</div>

Харамсалтай нь энэ өөрчлөлт contrast ratio-г **зөвхөн 1.49:1** болгож нэмэгдүүлсэн бөгөөд энэ нь **saturation**, өөрөөр хэлбэл өнгийн “хэмжээ”-г өөрчлөх шаардлагатай гэсэн үг юм. Текст дэх **улаан өнгийн хэмжээг** нэмэгдүүлье. Ингэснээр contrast ratio **3.54:1** болж, зорилгодоо илүү ойртож байна.

<style>
  .contrast-21 {
    background-color: white;
    color: black;
    padding: 15px;
    font-family: sans-serif;
    font-size: 18px;
    margin-bottom: 20px;
  }

  .label {
    font-weight: bold;
    margin-bottom: 8px;
    display: block;
  }

  .low-sat-red-on-blue {
    background-color: #0000cc; 
    color: #b23333; 
    padding: 15px;
    font-family: sans-serif;
    font-size: 18px;
    margin-bottom: 20px;
  }

  .high-sat-red-on-blue {
    background-color: #0000cc; 
    color: #ff4d4d;
    padding: 15px;
    font-family: sans-serif;
    font-size: 18px;
    margin-bottom: 20px;
  }
</style>

<div class="contrast-21">
  <span class="label">Contrast Ratio 21:1</span>
  This example more than meets the AAA standard with black text on white background.
</div>

<div class="low-sat-red-on-blue">
  <span class="label">Low Saturation Red on Blue (Contrast ~1.49:1)</span>
  This red has low saturation, resulting in a poor contrast ratio.
</div>

<div class="high-sat-red-on-blue">
  <span class="label">Higher Saturation Red on Blue (Contrast ~3.54:1)</span>
  Increasing the saturation of red improves contrast but it’s still below AA standard.
</div>

Гэсэн хэдий ч та сүүлийн утга болох **lightness**-ийг өөрчилснөөр илүү сайн үр дүнд хүрч чадна. **Lightness** нь тухайн өнгөнд **хэр хэмжээний цагаан өнгө агуулагдаж байгааг** илэрхийлдэг.

Одоо улаан өнгийн **lightness**-ийг багасгая. Ингэснээр цайвар хөх background дээр **илүү бараан улаан** гарч ирэх бөгөөд contrast ratio **10.34:1** болно.
<style>
  .contrast-21 {
    background-color: white;
    color: black;
    padding: 15px;
    font-family: sans-serif;
    font-size: 18px;
    margin-bottom: 20px;
  }

  .label {
    font-weight: bold;
    margin-bottom: 8px;
    display: block;
  }

  .blue-bg {
    background-color: #add8e6; 
    padding: 15px;
    font-family: sans-serif;
    font-size: 18px;
    margin-bottom: 20px;
  }

  .low-sat-red-on-blue {
    background-color: #0000cc; 
    color: #b23333;
    margin-bottom: 20px;
  }

  .high-sat-red-on-blue {
    background-color: #0000cc; 
    color: #ff4d4d; 
    margin-bottom: 20px;
  }
  
  .dark-red-on-light-blue {
    background-color: #add8e6; 
    color: #8b0000;
  }
</style>

<div class="contrast-21">
  <span class="label">Contrast Ratio 21:1</span>
  This example more than meets the AAA standard with black text on white background.
</div>

<div class="low-sat-red-on-blue blue-bg">
  <span class="label">Low Saturation Red on Medium Blue (Contrast ~1.49:1)</span>
  This red has low saturation, resulting in a poor contrast ratio.
</div>

<div class="high-sat-red-on-blue blue-bg">
  <span class="label">Higher Saturation Red on Medium Blue (Contrast ~3.54:1)</span>
  Increasing the saturation of red improves contrast but it’s still below AA standard.
</div>

<div class="dark-red-on-light-blue">
  <span class="label">Darker Red on Light Blue (Contrast ~10.34:1)</span>
  Decreasing the lightness of the red increases the contrast ratio significantly.
</div>

Та хүссэн **харагдах нөлөө (visual effect)** болон **хүртээмжтэй contrast ratio** хоёрын хооронд тэнцвэрийг олохын тулд өнгүүдийг цаашид өөрчилж тохируулж болно. Гэхдээ **accessibility** нь үргэлж **эн тэргүүнд тавигдах ёстой** гэдгийг санах нь чухал.
