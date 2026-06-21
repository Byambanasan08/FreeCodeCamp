## Step 1Passed
In this workshop, you will build an HTML video player. The HTML boilerplate has been provided for you.

Create an h1 element and give it the text Working with the HTML Video Element.

## Step 2Passed
Next, create a video element below the h1. Over the next few steps, you will add the necessary attributes to make the video player functional.

## Step 3
In a previous lesson, you learned about different attributes available to the video element. The width attribute determines the width of the video in pixels.

Add the width attribute to the video element with a value of 640.

## Алхам 4

**Loop атрибут** нь видео тоглолт дуусмагц дахин эхлүүлж тоглуулна. Дахин дахин тоглогддог интернет meme-ийг төсөөлөөрэй. **Loop атрибутыг оруулаагүй** тохиолдолд видео зөвхөн **нэг удаа** тоглогдоно.

**Loop атрибут** нь **boolean атрибут** тул утга (value) заах шаардлагагүй.

**Video элементэд loop атрибут нэмнэ үү.**

## Алхам 5

**Controls атрибут** нь video элементэд тоглуулах (play), ухраах (rewind), дууны түвшин тохируулах (volume control) зэрэг **тоглуулах удирдлагуудыг** нэмдэг.

**Controls атрибут** нь **boolean атрибут** тул утга (value) заах шаардлагагүй.

**Video элементэд controls атрибут нэмнэ үү.**

Одоо video элемент хуудас дээр харагдах ёстой.

## Алхам 6

**Muted атрибут** нь видео анх тоглогдох үед дууг **унтраасан** байлгадаг. Хэрэв **controls** идэвхжсэн бол хэрэглэгч дууг дахин **асаах (unmute)** боломжтой. **Muted атрибутыг оруулаагүй** тохиолдолд видео анхнаасаа **дуутайгаар** тоглогдоно.

**Muted атрибут** нь **boolean атрибут** тул утга (value) заах шаардлагагүй.

**Video элементэд muted атрибут нэмнэ үү.**

## Алхам 7

**Poster атрибут** нь видеоны **thumbnail зураг** юм. YouTube дээр үздэг видеонуудыг төсөөлөөрэй. Видео татагдаж байх үед энэ зураг харагддаг. Хэрэв poster атрибутыг оруулаагүй бол татагдах явцад видеоны **эхний frame** харагдана.

Одоо video элементэд **poster атрибут** нэмээд, утгыг нь
`https://cdn.freecodecamp.org/curriculum/labs/past-event2.jpg`
гэж тохируулна уу.

## Алхам 8

Та одоогоор **жинхэнэ видео файлд холбоос хийгээгүй** байгааг анзаарсан байж магадгүй. Үүнийг дараагийн шатанд хийх болно. Видео файлын төрлүүдийн хувьд браузер бүрийн дэмжлэг өөр өөр байдаг. Үүнийг шийдэхийн тулд **video элементийн дотор source элементүүдийг** ашиглаж болох бөгөөд браузер нь **дэмждэг эхний source**-ийг автоматаар сонгодог.

Доорх нь **source элемент** ашигласан жишээ юм:

Жишээ код

```html
<video controls width="250">
  <source src="src-url-goes-here" type="video-type-goes-here" />
</video>
```

**Source элемент** нь **void элемент** тул хаах таг (closing tag) байхгүй.

**Video элементийн дотор нэг source элемент нэмнэ үү.**

## Step 9
To specify the media resource for the video, you will need to add the src attribute to the source element.

Add the src attribute with the value https://cdn.freecodecamp.org/curriculum/labs/what-is-the-map-method-and-how-does-it-work.mp4.

## Алхам 10

Та **mp4 өргөтгөлтэй видео файл** ашигласан тул браузер уг файлыг хэрхэн уншихаа мэдэхийн тулд үүнийг зааж өгөх шаардлагатай.

Үүний тулд **type атрибут** ашиглан **video/mp4 MIME төрөл**-ийг тодорхойлно.

**MIME (Multipurpose Internet Mail Extensions)** гэдэг нь ASCII текстээс өөр төрлийн баримтуудыг (жишээ нь: аудио, видео, зураг) тайлбарлах стандарт юм.

**MP4** (албан ёсоор **MPEG-4 Part 14**) нь дижитал мультимедиа контейнер формат бөгөөд видео, аудио хадгалахад өргөн ашиглагддаг. Мөн subtitle, хөдөлгөөнгүй зураг зэрэг бусад өгөгдлийн төрлүүдийг агуулж чадна. MP4 файлууд нь интернэтээр стрийм хийхэд зориулагдсан бөгөөд олон төрлийн төхөөрөмж, платформтой нийцтэй байдаг.

Одоо **type атрибут** нэмээд, утгыг нь **video/mp4** гэж тохируулна уу.

## Алхам 11

Өөр нэг түгээмэл **MIME төрөл** бол **video/webm** юм.

**WebM** нь Google-ийн хөгжүүлсэн **open-source аудио-видео медиа файл формат** бөгөөд вебэд суурилсан медиа контентод зориулагдсан. Энэ формат нь **VP8, VP9, AV1** зэрэг видео кодекуудыг, мөн **Vorbis, Opus** зэрэг аудио кодекуудыг дэмждэг тул HTML5-ийн **video** болон **audio** элементүүдэд өргөн ашиглагддаг.

Одоо **эхний source элементийн доор** дахин нэг **source элемент** нэмнэ үү. Түүнд:

* **src атрибут**-ыг
  `https://cdn.freecodecamp.org/curriculum/labs/mapmethod.webm`
* **type атрибут**-ыг
  `video/webm`

гэж тохируулна уу.

## Алхам 12

Өөр нэг түгээмэл **MIME төрөл** бол **video/ogg** юм.

**Ogg** нь дижитал мультимедиа контентыг **үр ашигтайгаар стрийм хийх** болон **боловсруулах** зориулалттай дижитал мультимедиа контейнер формат юм. Үүнийг **Xiph.Org Foundation** хариуцан хөгжүүлдэг бөгөөд **үнэгүй, open**, програм хангамжийн патентын ямар нэгэн хязгаарлалтгүй байдаг. Нэр нь **Netrek** гэдэг компьютер тоглоомоос гаралтай “**ogging**” гэх жаргоноос үүссэн.

Одоо **хоёр дахь source элементийн доор** гурав дахь **source элемент** нэмнэ үү. Түүнд:

* **src атрибут**-ыг
  `https://cdn.freecodecamp.org/curriculum/labs/mapmethod.ogg`
* **type атрибут**-ыг
  `video/ogg`

гэж тохируулна уу.

## Алхам 13

Нэмэх **сүүлийн source элемент** нь **video/quicktime MIME төрөл**-д зориулагдана.

**QuickTime** нь Apple-ийн бүтээсэн **өргөтгөх боломжтой мультимедиа архитектур** бөгөөд олон төрлийн дижитал медиа форматыг тоглуулах, стрийм хийх, encode болон transcode хийхийг дэмждэг. MP4 формат шиг өргөн хэрэглээтэй биш ч **хуучин (legacy) аппликейшнүүдийг дэмжихэд** хэрэг болох тохиолдол бий.

Одоо **гурав дахь source элементийн доор** дөрөв дэх **source элемент** нэмнэ үү. Түүнд:

* **src атрибут**-ыг
  `https://cdn.freecodecamp.org/curriculum/labs/mapmethod.mov`
* **type атрибут**-ыг
  `video/quicktime`

гэж тохируулна уу.

🎉 **Баяр хүргэе!** Та **HTML Video Player Workshop**-ийг амжилттай дуусгалаа.

