2. HTML Boilerplate гэж юу вэ, яагаад чухал вэ?

Одоо **HTML boilerplate** буюу HTML суурийн загварын талаар сурцгаая.

HTML boilerplate гэж юу вэ гэж үү? Энэ нь таны вэб хуудсыг эхлүүлэхэд зориулсан **бэлэн загвар** юм. Үүнийг байшингийн суурьтай зүйрлэж болно. Boilerplate нь HTML баримт бичиг бүрт заавал байх ёстой үндсэн бүтэц, чухал элементүүдийг агуулдаг. Энэ нь таны цагийг хэмнэж, хуудсуудыг зөв бүтэцтэй эхлүүлэхэд тусалдаг. Жишээ нь:

```
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
       name="viewport"
       content="width=device-width, initial-scale=1.0" />
    <title>freeCodeCamp</title>
    <link rel="stylesheet" href="./styles.css" />
  </head>
  <body>
  </body>
</html>
```

Одоо энэ boilerplate-ийн гол хэсгүүдийг тайлбарлая. Юуны өмнө **DOCTYPE declaration** байна:

```
<!DOCTYPE html>
```

Энэ нь браузерууд таны ямар HTML хувилбар ашиглаж байгааг хэлж өгдөг. Дараагийнх нь **html tag**:

```
<!DOCTYPE html>
<html lang="en">
  <!--All other elements go inside here-->
</html>
```

Энэ tag нь бүх контентыг ороож, хуудсын хэл (language)-ийг тодорхойлж болдог.
`html` tag-ийн дотор хоёр үндсэн хэсэг оршино: **head** болон **body**.

```
<!DOCTYPE html>
<html lang="en">
  <head>
    <!--Important metadata goes here-->
  </head>
  <body>
    <!--Headings, paragraphs, images, etc. go inside here-->
  </body>
</html>
```

**Head хэсэг** нь таны хуудсын "behind-the-scenes" мэдээллийг агуулдаг:

```
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Document Title Goes Here</title>
  <link rel="stylesheet" href="./styles.css" />
</head>
```

Таны вебсайтын **metadata**, буюу meta элементүүдэд агуулагдах мэдээлэл нь:

* тэмдэгт кодчилол (character encoding),
* Twitter болон бусад сайтууд холбоосыг хэрхэн preview хийх,
* төхөөрөмжийн харагдац ямар байх,

зэрэг чухал мэдээллийг агуулдаг.

Мөн **title элемент** нь браузерийн tab эсвэл цонхонд харагдах хуудсын гарчгийг тодорхойлдог.

Эцэст нь ихэвчлэн stylesheet-үүдээ head хэсэгт **link элемент** ашиглан холбодог.

---

**Body хэсэг** дээр таны бүх харагдах контент байрлана:

```
<body>
  <h1>I am a main title</h1>
  <p>Example paragraph text</p>
</body>
```

---

### Boilerplate яагаад чухал вэ?

Boilerplate нь:

* хуудсуудыг зөв бүтэцтэй болгох,
* олон төрлийн браузерт асуудалгүй ажиллуулах,
* түгээмэл алдаанаас сэргийлэх,
* сайн практикуудыг дагахад

маш чухал үүрэгтэй.

Энэ нь вэб төслийн ямар ч эхлэлд **төгс суурь** болж өгдөг.

Түүнчлэн та boilerplate-аа өөрийн хэрэгцээнд тохируулан **customize** хийж болно. Туршлага нэмэгдэх тусам өөрийн дуртай meta tag-ууд, тохиргоонууд, stylesheet холбоосуудыг нэмдэг болно. Өөрийн boilerplate-ийг сайжруулах тусам шинэ төсөл эхлэхэд илүү хурдан болдог.

Дараагийн удаа шинэ HTML файл үүсгэхдээ boilerplate ашиглахаа мартав аа. Энэ нь танд бат бөх суурь болж өгнө.

---
