HTML Validator гэж юу вэ, мөн таны кодыг debug хийхэд хэрхэн тусалдаг вэ?

HTML нь **алдаанд тэсвэртэй (forgiving)** хэл юм. Жишээлбэл, та хаах таг (closing tag) нэмэхээ мартсан ч элементүүд ихэнхдээ харагдсаар байдаг.

Жишээ нь, дараах кодонд нэг **h2 элемент** хаах таггүй байна:

Жишээ код

```html
<h1>Article Topic</h1>
<h2>Subheading 1 </h2>
<h2>Subheading 2 </h2>

<!-- This h2 does not have a closing tag -->
<h2>Subheading 3
```

Хаах таггүй байгаа h2 элемент ч гэсэн хэвийн харагдана. Энэ нь браузерууд нийтлэг алдааг засч ойлгох, HTML-ийг зохиогчийн санаанд аль болох ойр байдлаар харуулах **parsing алгоритм** ашигладагтай холбоотой.

Гэхдээ энэ нь зарим тохиолдолд асуудал үүсгэж болдог. Одоо дээрх гарчгуудын доор хэдэн догол мөр (paragraph) нэмье:

Жишээ код

```html
<h1>Article Topic</h1>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores, nisi.</p>

<h2>Subheading 1 </h2>
<p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. At, doloremque.</p>

<h2>Subheading 2 </h2>
<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde, placeat.</p>

<!-- This h2 does not have a closing tag -->
<h2>Subheading 3
<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Tempore, illum.</p>
```

Үүний үр дүнд хаах h2 таггүй гарчгийн доорх **p элемент** нь **heading 2** шиг харагдана. Ийм учраас **HTML validator** хэрэгтэй байдаг.

**HTML validator** гэдэг нь таны HTML кодыг албан ёсны HTML стандарт (HTML specifications)-тай харьцуулан шалгадаг хэрэгсэл юм. Энэ нь таны код доторх **алдаа (error)** болон **анхааруулга (warning)**-уудыг илрүүлж, вэб хуудсууд зөв бүтэцтэй, веб стандартын дагуу бичигдсэн эсэхийг баталгаажуулахад тусалдаг.

HTML validator ашиглах нь зөвхөн танд болон ирээдүйн кодын шалгалтад төдийгүй, таны кодыг уншиж, ашиглах бусад хүмүүст (жишээ нь хамтран ажиллагчид, open-source төсөлд оролцогчид) ч ашигтай.

Ашиглаж болох олон төрлийн HTML validator байдаг. Хамгийн өргөн хүлээн зөвшөөрөгдсөн нь **w3.org markup validation service** юм.

`validator.w3.org` сайт руу орвол **Validate by Direct Input** товч дээр дарж, өөрийн HTML кодыг хуулж тавьж болно.

**Check** товчийг дарахад засах шаардлагатай алдаануудын жагсаалт гарч ирнэ.

Мөн ашиглаж болох өөр нэг HTML validator бол **jsonformatter.org** юм.

Та HTML кодоо эхний editor хэсэгт хуулж тавиад, **Validate** товчийг дарвал кодонд байгаа алдаануудыг харуулна.
