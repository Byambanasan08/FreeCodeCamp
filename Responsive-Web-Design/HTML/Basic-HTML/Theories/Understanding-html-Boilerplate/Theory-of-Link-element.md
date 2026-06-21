1. HTML дэх link элемент ямар үүрэгтэй вэ, мөн хэрхэн external stylesheet-үүдтэй холбох вэ?

Одоо **link элемент** гэж юу болох, мөн түүнийг хэрхэн *external stylesheet*-тэй холбох талаар сурцгаая.

**Link элемент** нь гадны нөөцүүдтэй — жишээ нь **stylesheets**, **site icons** зэрэгтэй холбогдоход ашиглагддаг. External CSS файлтай холбох link элементийн үндсэн синтакс нь дараах хэлбэртэй:

```
<link rel="stylesheet" href="./styles.css" />
```

**rel attribute** нь HTML баримт бичиг болон холбогдож буй нөөцийн хооронд ямар харилцаа байгааг тодорхойлдог. Энэ тохиолдолд бид энэ нөөц **stylesheet** гэдгийг зааж өгөх шаардлагатай.

HTML болон CSS файлуудыг **тус тусад нь салгаж бичих нь хамгийн зөв практик** гэж үздэг. Хөгжүүлэгчид бүх CSS-ээ HTML дотор бичихийн оронд гадны CSS файлыг link элемент ашиглан холбодог.

**href attribute** нь гадны нөөц рүү хөтлөх URL-ийн байршлыг заадаг.

Жишээ дээрх **dot + forward slash (`./`)** нь тухайн файлыг одоогийн хавтас (directory)-д хай гэж компьютерт хэлж буй хэрэг юм.

**Link элемент нь заавал head элемент дотор байрлах** ёстой. Жишээ:

```
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Examples of the link element</title>
  <link rel="stylesheet" href="./styles.css" />
</head>
```

Мэргэжлийн код дээр ихэвчлэн олон **link элементүүд** ашиглагддаг. Тэдгээр нь өөр, өөр stylesheets, fonts, icons руу холбогддог. Доорх жишээнд **Google Font — Playwrite Cuba** шрифтийг link элементийн тусламжтайгаар холбож байна:

```
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
  href="https://fonts.googleapis.com/css2?family=Playwrite+CU:wght@100..400&display=swap"
  rel="stylesheet"
/>
```

**Google Fonts** нь ямар ч төсөлд ашиглаж болох үнэгүй, нээлттэй эхийн custom font-уудын цуглуулга юм. Та ашиглах font-оо сонгох бөгөөд Google танд холбох шаардлагатай HTML болон CSS кодыг өгөх болно.

Энэ жишээнд, **rel="preconnect"** утга нь браузерт `href`-д заагдсан сервер рүү **урьдчилсан холболт (early connection)** үүсгэж өгөхийг заадаг. Энэ нь гадны нөөцүүдийн ачаалалтын хурдыг нэмэгдүүлэх зорилготой.

**Link элементийн** өөр нэг түгээмэл хэрэглээ бол **icons** холбох явдал юм. Жишээ нь favicon холбохдоо дараах байдлаар бичнэ:

```
<link rel="icon" href="favicon.ico" />
```

**Favicon** буюу *favorite icon* гэдэг нь браузерийн tab дээр сайтын нэрний хажууд харагддаг жижиг дүрс юм. Олон сайтууд favicon ашиглан өөрсдийн брэндийн icon-ийг харуулдаг.

---





