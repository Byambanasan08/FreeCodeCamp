JavaScript-д Comment гэж юу вэ, мөн хэзээ ашиглах ёстой вэ?

Програмчлалд comment нь кодын талаар нэмэлт тайлбар өгөх, өөртөө болон бусдад зориулж тэмдэглэл үлдээхэд ашиглагддаг.

Comment нь кодын мөр эсвэл блок хэлбэртэй текст бөгөөд JavaScript engine кодыг ажиллуулах үед тэдгээрийг үл тоодог. Өөрөөр хэлбэл, comment нь зөвхөн код уншиж байгаа хүмүүст зориулагдсан байдаг.

JavaScript-д comment бичих хоёр арга байдаг: нэг мөрийн (single-line) болон олон мөрийн (multi-line) comment.

Нэг мөрийн comment нь хоёр ташуу зураас (//)-аар эхэлдэг. Жишээ:

```id="bktvov"
// I am a single line comment in JavaScript
```

Энэ төрлийн comment нь богино тайлбар, тодруулга хийхэд тохиромжтой.

Бодит жишээ:

```id="5tffmk"
// This is to allow English to build without having to download the i18n files.
// It fails when trying to resolve the i18n-curriculum path if they don't exist.
const curriculumLocale = process.env.CURRICULUM_LOCALE ?? 'english';
const I18N_CURRICULUM_DIR = path.resolve(
  __dirname,
  curriculumLocale === 'english' ? '.' : 'i18n-curriculum/curriculum'
);
```

Энэ код яг юу хийж байгааг ойлгох шаардлагагүй. Харин developer үлдээсэн comment дээр анхаарна уу. Энэ comment нь тухайн код яагаад хэрэгтэй байгааг тайлбарлаж байна.

Ийм comment нь багийн орчинд ажиллахад маш чухал:

* Бусад хөгжүүлэгчид кодын зорилгыг ойлгоно
* Багтай зөвшилцөхгүйгээр кодыг өөрчлөх, устгахаас сэргийлнэ (алдаа үүсэхээс хамгаална)

Олон мөрийн comment:

```
/*
 I am a multiline comment.
 This is helpful for longer explanations.
*/
```

Энэ нь урт тайлбар, дэлгэрэнгүй тэмдэглэл бичихэд тохиромжтой.

Бодит жишээ:

```id="i48cjs"
/* Since there can be more than one way to complete a certification (using the
legacy curriculum or the new one, for instance), we need a certification
field to track which certification this belongs to. */
const dupeCertifications = [
  {
    certification: 'responsive-web-design',
    dupe: '2022/responsive-web-design'
  }
];
const hasDupe = dupeCertifications.find(
  cert => cert.dupe === meta.superBlock
);
```

Энд мөн кодыг ойлгох шаардлагагүй. Харин comment нь энэ код яагаад бичигдсэнийг тодорхой тайлбарлаж байна.

Ийм comment нь тухайн кодын утга, зорилгыг ойлгоход тусалдаг бөгөөд шинэ хөгжүүлэгчид ч амархан ойлгох боломжтой болгодог.

Гэхдээ comment ашиглахдаа хэтрүүлэхээс зайлсхийх хэрэгтэй. Бүх мөр бүрийг тайлбарлах шаардлагагүй, ялангуяа код өөрөө ойлгомжтой бол.

Жишээ:

```id="r2m35b"
// This code uses the const keyword to create a new variable called price.
// We are assigning the number 10 to the price variable.
const price = 10;
```

Энд comment бичих шаардлагагүй, учир нь код өөрөө ойлгомжтой байна. Зорилго нь кодыг илүү ойлгомжтой болгох болохоос биш, илүүдэл тайлбараар дүүргэх биш юм.

Сурч байх үедээ comment ашиглах нь зүгээр. Харин бодит төслүүд дээр ажиллахдаа ойлгомжтой код бичих нь илүү чухал.

Мөн муу, ойлгомжгүй кодыг тайлбарлахын тулд comment ашиглах ёсгүй. Ийм тохиолдолд кодоо refactor (сайжруулах, өөрчлөх) хийх хэрэгтэй.

Comment нь кодыг баримтжуулах, ойлгоход хялбар болгох хүчирхэг хэрэгсэл юм. Та comment-ийг кодын тайлбар, тэмдэглэл үлдээхэд зөв ашиглах хэрэгтэй.
