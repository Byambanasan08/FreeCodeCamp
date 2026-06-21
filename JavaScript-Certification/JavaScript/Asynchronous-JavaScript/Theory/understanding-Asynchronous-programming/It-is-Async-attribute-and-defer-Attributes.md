How Does the Async Attribute Work Inside Script Elements, and How Does It Differ from the Defer Attribute?

HTML script элементүүд доторх async болон defer attribute-ууд нь JavaScript файлууд вэб хуудсанд хэрхэн ачаалагдаж (loaded) болон гүйцэтгэгдэх (executed) байдлыг тодорхойлоход чухал үүрэг гүйцэтгэдэг. Эдгээрийг ойлгох нь таны вэбсайтын гүйцэтгэл (performance) болон хэрэглэгчийн туршлагыг (user experience) сайжруулж чадна. Та HTML файлдаа script оруулахад дараах байдлаар харагдана:

```html
<script src="example.js"></script>
```

Browser энэ script tag-ийг олмогц HTML-ийг parsing хийхээ түр зогсоож, script-ийг татаж (download), гүйцэтгэж, дараа нь HTML parsing-ийг үргэлжлүүлдэг. Энэ нь таны вэб хуудсыг ачаалах явцыг удаашруулж болзошгүй, ялангуяа том script-үүдтэй үед.

Энд async болон defer attribute-ууд орж ирдэг. Эдгээр нь script-үүдийг илүү үр ашигтай ачаалах арга замыг санал болгодог.

Эхлээд async attribute-ийг харъя:

```html
<script src="example.js" async></script>
```

Script tag-д async attribute нэмснээр browser script татагдаж байх үед HTML parsing-ийг үргэлжлүүлнэ. Script бүрэн татагдсаны дараа browser HTML parsing-ийг түр зогсоож, script-ийг гүйцэтгэж, дараа нь HTML parsing-ийг дахин үргэлжлүүлнэ. Энэ нь хуудсын ачааллыг мэдэгдэхүйц хурдасгаж чадна.

Async script-үүд татагдсан даруйдаа гүйцэтгэгддэг гэдгийг анхаарах хэрэгтэй. Энэ нь тэд хүссэн дарааллаар ажиллахгүй байж магадгүй гэсэн үг. Энэ асуудлыг шийдэхэд defer attribute хэрэгтэй болдог. Одоо defer attribute-ийг харъя:

```html
<script src="example.js" defer></script>
```

Defer attribute нь async attribute-тэй төстэй. Гэхдээ defer script-үүд татагдсаны дараа шууд гүйцэтгэгддэггүй. Харин HTML parsing бүрэн дуусах хүртэл хүлээдэг. Мөн defer script-үүд HTML код дотор байрласан дарааллаараа гүйцэтгэгддэг.

Товчоор хэлбэл, гүйцэтгэлийн дараалал чухал биш script-үүдэд async-ийг ашигла, харин script-үүд зөв дарааллаар ажиллах шаардлагатай бол defer-ийг ашигла. Хоёр attribute хоёулаа script-үүдийг background-д татаж байх үед HTML parsing-ийг үргэлжлүүлэх боломж олгож, хуудсын ачааллын хурдыг мэдэгдэхүйц сайжруулдаг.
