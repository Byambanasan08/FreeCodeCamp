**@font-face At-Rule гэж юу вэ, мөн энэ хэрхэн ажилладаг вэ?**

Эхлээд CSS дээр at-rule гэж юу болохыг мэдэх хэрэгтэй. At-rule-ууд нь browser-д заавар өгдөг statement-ууд юм. Та тэдгээрийг media queries, keyframes, font faces зэрэг stylesheet-ийн янз бүрийн талыг тодорхойлоход ашиглаж болно. Та media queries болон keyframes зэрэг ойлголтуудын талаар дараагийн хичээлүүдэд илүү ихийг сурах болно. Энэ удаад та @font-face at-rule-ийн талаар сурах болно.

@font-face ашигласнаар та фонтын файлыг, форматыг, мөн жин болон хэв маяг зэрэг бусад чухал шинжүүдийг зааж өгч custom фонт тодорхойлж болно. Энэ бол үндсэн синтакс юм. Та @font-face-ийг, дараа нь curly bracket-аар хүрээлэгдсэн block-ийг харж болно:

```css
@font-face {
  /* Descriptors */
}
```

Curly bracket дотор та фонтын төрхийг өөрчлөх descriptor-уудыг оруулах хэрэгтэй. Хамгийн түгээмэл ашиглагддаг зарим descriptor-уудыг харцгаая. font-family descriptor нь stylesheet дотор тухайн фонтыг заахдаа ашиглах нэрийг тодорхойлдог. Жишээлбэл, та дараах @font-face rule-г тодорхойлсон гэж үзье. Үүнд font-family descriptor тодорхойлогдсон бөгөөд түүний утга нь MyCustomFont байна:

```css
@font-face {
  font-family: "MyCustomFont";
}
```

Тэгвэл та stylesheet дотор CSS selector-той таарах бүх элементүүдэд энэ custom фонтын гэр бүлийг оноохыг хүссэн газар бүрт энэ нэрийг ашиглах хэрэгтэй болно. Жишээлбэл, та үүнийг font-family property-ийн утга болгон ашиглана:

```css
body { 
  font-family: "MyCustomFont"; 
}
```

Гэхдээ @font-face at-rule хүчинтэй байхын тулд src-г мөн зааж өгөх шаардлагатай. Энэ нь фонтын resource-уудын reference-уудыг агуулдаг. Үндсэндээ энэ нь таслалаар тусгаарлагдсан external reference-ууд эсвэл locally-installed font face нэрсийн жагсаалт юм. Мөн фонтын resource-ийн формат болон технологийн талаархи мэдээллийг агуулж болно.

Доорх кодонд src тодорхойлогдсон байна. Түүний утга нь таслалаар тусгаарлагдсан URL-уудын жагсаалт бөгөөд уншихад хялбар болгохын тулд тус тусдаа мөрөнд бичигдсэн байна:

```css
@font-face {
  font-family: "MyCustomFont"; 
  src: url("path/to/font.woff2"),
    url("path/to/font.woff"),
    url("path/to/font.otf");
}
```

Та url() function-г ашиглан stylesheet дотор файл оруулж болно. Энэ тохиолдолд бид фонтын файлуудыг оруулж байна. Та хаалт болон хашилтын дотор файлын замыг бичих хэрэгтэй бөгөөд файлын өргөтгөлийг мөн оруулна. Уншихад хялбар болгохын тулд resource бүрийг өөр мөрөнд бичиж болно, харин сүүлийнх нь цэг таслалаар (semicolon) төгсөх ёстой.

Фонтын resource бүрийн хувьд та форматыг мөн зааж өгч болно. Энэ нь optional юм. Энэ нь browser-д фонтын форматын талаар hint өгдөг. Хэрэв формат заагаагүй бол resource татагдаж дууссаны дараа формат нь тодорхойлогдоно. Хэрэв формат буруу байвал тухайн resource татагдахгүй.

Боломжит фонтын форматууд нь collection, embedded-opentype, opentype, svg, truetype, woff, болон woff2 юм.

Доорх нь фонтын формат заасан жишээ юм. Бид тодорхой форматыг хаалт болон хашилтын дотор бичиж байгааг анзаараарай:

```css
@font-face {
  font-family: "MyCustomFont"; 
  src: url("path/to/font.woff2") format("woff2"),
    url("path/to/font.otf") format("opentype"),
    url("path/to/font.woff") format("woff");
}
```

Энэ жишээнд бид WOFF2 формат, OpenType формат, болон WOFF форматыг зааж өгсөн байна.

woff гэдэг нь “Web Open Font Format” гэсэн утгатай. WOFF болон WOFF2-ын ялгаа нь өгөгдлийг шахахад ашигладаг алгоритм юм. OpenType нь Microsoft болон Adobe-ийн боловсруулсан scalable computer fonts-ийн формат бөгөөд хэрэглэгчид фонтын нэмэлт боломжуудыг ашиглах боломжийг олгодог. Энэ нь ихэнх томоохон үйлдлийн системүүд дээр өргөн хэрэглэгддэг.

Форматыг заахаас гадна та фонтын resource-ийн технологийг мөн зааж өгч болно. Энэ нь мөн optional юм. Доорх нь хоёр дахь фонтын resource-ийн технологийг заасан жишээ юм.

```css
@font-face {
  font-family: "MyCustomFont"; 
  src: url("path/to/font.woff2") format("woff2"),
    url("path/to/font.otf") format("opentype") tech(color-COLRv1),
    url("path/to/font.woff") format("woff");
}
```

Эдгээр нь @font-face rule-ийн үндсэн ойлголтууд юм. Энэ at-rule ашигласнаар та өөрийн өвөрмөц дизайнд зориулж custom фонтуудыг тодорхойлохын тулд фонтын файлыг зааж өгч чадна.
