HTML дээр Block Quote болон Inline Quote хэрхэн ажилладаг вэ?

HTML-д ишлэл (quoted) элементүүдийг иш татсан текстийг эргэн тойрны агуулгаас ялгаж харагдуулахад ашигладаг. Ингэснээр иш татсан текст нь танигдахуйц, ойлгомжтой форматтай болдог.

Өөр эх сурвалжаас авсан нэг хэсгийг илэрхийлэхдээ block quotation элемент ашиглах хэрэгтэй. Энэ нь голчлон урт ишлэлүүдэд зориулагддаг. Хэрэв ишлэлийн эх сурвалж нь хаягтай бол `cite` attribute ашиглан иш татаж болно. Энэ attribute-ийн утга нь хүчинтэй URL байх ёстой. Дараах нь block quotation элемент доторх ишлэлийн жишээ юм:

```html
<blockquote cite="https://www.freecodecamp.org/news/learn-to-code-book/">
  "Can you imagine what it would be like to be a successful developer? To have built software systems that people rely upon?"
</blockquote>
```

Энэ элемент нь `cite` attribute-тэй байна. `cite` attribute-ийн утга нь эх сурвалжийн URL юм. Энэ attribute нь block quote-ийн харагдах байдлыг өөрчилдөггүй ч, screen reader болон search engine-д ишлэлийн талаар илүү их мэдээлэл өгөхөд маш хэрэгтэй. Хөтөч (browser) дээр харахад текст нь бага зэрэг баруун тийш догол мөртэй харагдана.

Хэрэв block quote-ийг эхлэх болон дуусахдаа хашилт (quotation marks)-тай болгохыг хүсвэл, тэдгээрийг текст дотор гараар бичих шаардлагатай байж болно. Текстыг block quotation элемент дотор шууд бичиж болно, эсвэл нэг эсвэл хэд хэдэн paragraph (`p`) элементээр ороож бичиж болно. Текст олон догол мөртэй боловч нэг ишлэлд хамруулахыг хүсвэл энэ нь маш тохиромжтой. Дараах нь дөрвөн paragraph-тай жишээ юм:

```html
<blockquote cite="https://www.freecodecamp.org/news/learn-to-code-book/">
  <p>Build your projects. Show them to your friends. Build projects for your friends.</p>
  <p>Build your network. Help the people you meet along the way. What goes around comes around. You'll get what's coming to you.</p>   
  <p>It is not too late. Life is long.</p>
  <p>You will look back on this moment years from now and be glad you made a move.</p>
</blockquote>
```

Бүх paragraph-ууд нэг block quotation элемент дотор багтсан тул тэдгээр нь нэг ишлэлийн хэсэг юм. Элемент нь эх сурвалжийн URL-ийг заасан `cite` attribute-тэй байна. Хөтөч дээр харахад дөрвөн paragraph нь хоорондоо зэрэгцсэн байдлаар харагдах боловч, контейнер элементээсээ харьцангуй догол мөртэй байрлана.

Энд хүртэл би ишлэлийн эх сурвалжийг заахын тулд `cite` attribute ашигласан. Гэхдээ энэ attribute нь эх сурвалжийг хэрэглэгчид шууд харуулдаггүй. Энэ нь зөвхөн дотоод түвшинд (behind the scenes) ажилладаг.

Хэрэв та эх сурвалжийг харагдах байдлаар (visually) харуулахыг хүсвэл, block quotation элементын гадна `cite` гэсэн citation элемент нэмж болно. Энэ нь `cite` attribute-ээс өөр юм. Citation элемент нь ном, нийтлэл, дуу, кино, вэбсайт, эсвэл судалгааны өгүүлэл зэрэг иш татагдсан бүтээлийн гарчгийг тэмдэглэхэд ашиглагддаг HTML элемент юм. Дараах нь жишээ:

```html
<div>
  <blockquote cite="https://www.freecodecamp.org/news/learn-to-code-book/">
    Can you imagine what it would be like to be a successful developer? To have built software systems that people rely upon?
  </blockquote>
  <p>—Quincy Larson, <cite>How to Learn to Code and Get a Developer Job [Full Book].</cite></p>
</div>
```

Block quotation элемент нь иш татсан текстийг агуулж байна. Түүний доор зохиогчийн нэрийг агуулсан paragraph элемент байрлаж, түүн дотор citation элемент байна. Citation элемент нь ишлэл авсан номын гарчгийг агуулж байна.

Хөтөч дээр харахад одоо эх сурвалж нь тодорхой харагдах бөгөөд уг ишлэл нь Quincy Larson-ы бичсэн номоос авсныг ойлгож болно. Тус номын гарчиг нь *How to Learn to Code and Get a Developer Job* юм.

Ийм block quote-уудыг бусад эх сурвалжаас авсан урт ишлэлд ашиглах хэрэгтэй. Харин зарим тохиолдолд та зөвхөн нэг догол мөрийн дотор хэдхэн үг иш татах шаардлагатай байж болно.

Үүний тулд inline quotation элемент ашиглагддаг. Энэ нь бусад эх сурвалжаас авсан богино ишлэлийг нэг paragraph-ийн дотор оруулахад зориулагдсан. Орчин үеийн ихэнх хөтчүүд энэ элементийг ашиглах үед хашилтыг автоматаар нэмж өгдөг. Дараах нь жишээ:

```html
<p>
  As Quincy Larson said,
  <q cite="https://www.freecodecamp.org/news/learn-to-code-book/">
    Momentum is everything.
  </q>
</p>
```

Энд нэг paragraph элемент байна. Түүний доторх текстийн нэг хэсэг нь inline quote бөгөөд inline quotation элемент дотор байрлаж байна. Мөн энд `cite` attribute нэмж, эх сурвалжийг зааж өгч болно.

Энэ нь block quotation элемент дээр ажилласантай яг адилхан зарчмаар ажиллана. Харагдах байдлын өөрчлөлт гарахгүй ч, screen reader болон search engine-д ишлэлийн талаар илүү мэдээлэл өгнө.

Хөтөч дээр харахад иш татсан текст нь paragraph-ийн нэг хэсэг болж харагдах бөгөөд хашилтаар хүрээлэгдсэн байна. Орчин үеийн ихэнх хөтчүүд эдгээр хашилтыг автоматаар нэмдэг.

Тэгвэл block quote болон inline quote хоёрын ялгаа юу вэ? Бусад эх сурвалжаас авсан урт ишлэлд block quote ашиглах ёстой. Харин paragraph-ийн дотор багтах богино ишлэлд inline quote ашиглах нь тохиромжтой.
