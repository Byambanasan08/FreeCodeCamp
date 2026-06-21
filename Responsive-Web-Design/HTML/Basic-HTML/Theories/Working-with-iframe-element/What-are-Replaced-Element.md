**Replaced элемент гэж юу вэ, ямар жишээнүүд байдаг вэ?**

Replaced элемент гэдэг нь тухайн элементийн контент нь CSS-ээс бус, харин **гадаад эх сурвалцаас** бүрддэг элемент юм. CSS (cascading stylesheets) нь веб хуудсанд загвар нэмж өгөх зориулалттай боловч replaced элементүүдийн доторх контентыг шууд өөрчлөх боломжгүй.

Түгээмэл replaced элементүүдийн жишээнд **img**, **iframe**, **video** элементүүд орно.

Replaced элементүүдэд CSS-ээр байрлал, зохион байгуулалт зэргийг удирдах боломжтой боловч элементийн доторх бодит контентыг өөрчлөх боломжгүй. Үүнийг дараах жишээнүүд илүү ойлгомжтой болгоно.

Доорх зураг оруулах жишээг авч үзье:

```html
<img src="example-img-url" alt="Descriptive text goes here">
```

Элемент нь `src`-ээр заагдсан **зураг**-аар солигддог. CSS нь зургийн байрлал эсвэл filter зэрэг стильд нөлөөлж чадна, гэхдээ зургийн **өөрийнх нь контентыг** өөрчилж чадахгүй.

Илүү тод жишээ бол веб хуудсанд гадаад сайт оруулах **iframe** элемент юм.

Доорх нь freeCodeCamp-ийн суваг дээрх YouTube видеог iframe ашиглан оруулсан жишээ:

```html
<iframe width="400" height="200" src="https://www.youtube.com/embed/u43gJJrVa1I?si=BoDW_puFsy8OEr_Z" title="Professional Cloud Architect Certification Course – Pass the Exam! (YouTube video)" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
```

Хүсвэл `src`-ийн утгыг өөр видео линкээр солиод урьдчилан харах боломжтой (интерактив редактор шаардлагатай).

**Тайлбар:** `referrerpolicy`, `allowfullscreen` зэрэг нэмэлт атрибутуудын талаар дараагийн workshop-д үзнэ.

Мөн iframe элемент ашиглан газрын зураг оруулах нь түгээмэл. Доорх нь газрын зураг оруулсан жишээ:

```html
<iframe
  title="Map of the Royal Observatory, Greenwich, London"
  width="300"
  height="200"
  src="https://www.openstreetmap.org/export/embed.html?bbox=-0.004017949104309083%2C51.47612752641776%2C0.00030577182769775396%2C51.478569861898606&amp;layer=mapnik">
</iframe>
```

Энд элемент нь гадаад объект — **веб сайт**-аар солигдож байна. CSS нь оруулсан сайтын байрлалд нөлөөлж чадна, гэхдээ тухайн сайтын **доторх контентыг** өөрчлөх боломжгүй. Жишээ нь, тэр сайтад `h1` элемент байсан ч таны CSS түүнийг загварчилж чадахгүй.

Бусад replaced элементүүдийн жишээнд **video**, **embed** орно. Мөн зарим элемент тодорхой нөхцөлд replaced элемент болж хувирдаг. Жишээ нь, `input` элементийн `type="image"` гэж өгвөл дараах хэлбэртэй replaced элемент болно:

```html
<input type="image" alt="Descriptive text goes here" src="example-img-url">
```

Харин `type="text"` болон `type="email"` зэрэг нь replaced элемент биш.
