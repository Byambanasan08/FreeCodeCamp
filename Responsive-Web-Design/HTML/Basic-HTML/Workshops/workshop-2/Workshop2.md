## Step:1 
Энэ workshop-д та гарчиг (headings), догол мөр (paragraphs), жагсаалт (lists) зэрэг HTML-ийн үндсэн элементүүдтэй ажилласнаар cat photo app бүтээхийг үргэлжлүүлэн сурна.

Workshop-ийг эхлүүлэхийн тулд дараах тексттэй h1 элемент нэмнэ: CatPhotoApp

## Step:2

Below the h1 element, add an h2 element with this text: Cat Photos

## Step:3
Create a p element below your h2 element and give it the following text: Everyone loves cute cats online!

## Step:4

**Commenting** нь браузер дээрх харагдацад нөлөөлөлгүйгээр тайлбар, тэмдэглэл үлдээх боломж өгдөг. Мөн кодыг түр ашиглахгүй “идэвхгүй” болгоход ашигладаг. HTML-д comment нь `<!--` гэж эхэлж, дурын тооны текстийн мөр агуулж болох бөгөөд `-->` гэж дуусдаг.

Доорх нь `TODO: Remove h1` гэсэн комментын жишээ:

**Example Code**

```
<!-- TODO: Remove h1 -->
```

Одоо **p элементын дээр** дараах тексттэй comment нэмнэ:

**TODO: Add link to cat photos**

## Step:5

HTML5 нь контентын өөр, өөр бүсүүдийг илэрхийлэх зориулалттай хэд хэдэн элементтэй. Эдгээр элементүүд нь HTML-ийг илүү уншигдахуйц болгохоос гадна **Search Engine Optimization (SEO)** болон **accessibility**-д сайнаар нөлөөлдөг.

**main элемент** нь HTML баримт бичгийн body хэсгийн үндсэн контентыг төлөөлөхөд ашиглагддаг. main элементийн дотор байрлах контент нь тухайн баримтад **давтагдашгүй**, зөвхөн тэр хуудасанд хамаарах агуулга байх ёстой.

**Жишээ код**

```
<main>
  <h1>Most important content of the document</h1>
  <p>Some more important content...</p>
</main>
```

Энэ хуудсын үндсэн хэсгийг тодорхойлохын тулд **h1 элементын өмнө `<main>` opening tag**, мөн **p элементын дараа `</main>` closing tag** нэмнэ.

## Step 6

Өмнөх алхамд та **h1**, **h2**, comment, болон **p** элементүүдийг **main** элементийн дотор байрлуулсан. Үүнийг **nesting** гэж нэрлэдэг.
Nesting хийсэн элементүүд нь өөрсдийнхөө parent элементээс **хоёр зай (two spaces)** илүү баруун тал руу байрлах ёстой. Энэ зайны зохион байгуулалтыг **indentation** гэдэг бөгөөд HTML-ийг уншихад илүү ойлгомжтой болгодог.

Доорх нь nesting болон indentation-ийн жишээ:

**Example Code**

```
<main>
  <h1>Most important content of the document</h1>
  <p>Some more important content...</p>
</main>
```

Доорх кодон дээр **h1 элемент**, **h2 элемент**, мөн коммент нь main элементээс **хоёр зайгаар илүү** indented хийгдсэн байгаа.
Одоо **p элементын өмнө keyboard-ийн space bar ашиглан хоёр зай нэмээд**, бусад элементтэй адил зөв indentation-тэй болгоорой.

---

## Step 7 
You can add images to your website by using the img element. img elements have an opening tag without a closing tag. An element without a closing tag is known as a void element.

Add an img element below the p element. At this point, no image will show up in the browser.



---

## Step 8 — Passed

HTML attributes нь элементүүдийн opening tag дотор бичигддэг бөгөөд тухайн элементийн үйл ажиллагааг удирдах тусгай үгс юм.
**img элемент дэх `src` attribute** нь зургийн URL-ийг (өөрөөр хэлбэл зураг хаана байрлаж байгааг) заадаг.

Энд `src` attribute нь freeCodeCamp-ийн лого руу чиглэсэн **img элемент**ийн жишээ байна:

**Example Code**

```
<img src="https://cdn.freecodecamp.org/platform/universal/fcc_secondary.svg">
```

Одоо байгаа **img элемент дотор** дараах URL-тай **src attribute** нэмнэ:

```
https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg
```


## Step 9 — Passed

Бүх **img элемент** нь **alt attribute**-тай байх ёстой.
**Alt attribute**-ийн текст нь *screen reader* төхөөрөмжүүдэд зориулсан хүртээмжийг сайжруулдаг бөгөөд зураг ачаалагдаагүй тохиолдолд хэрэглэгчдэд харагдана.

Доорх нь alt attribute-аар тоноглогдсон img элементийн жишээ:

**Example Code**

```
<img src="cat.jpg" alt="A cat">
```

Одоо img элемент дотор дараах тексттэй **alt attribute** нэмнэ:

**A cute orange cat lying on its back**

---
## Step 10 Passed
You can link to another page with the anchor (a) element.

Here is an example linking to https://www.freecodecamp.org:

Example Code
<a href="https://www.freecodecamp.org"></a>
Add an anchor element after the paragraph that links to https://freecatphotoapp.com. At this point, the link won't show up in the preview.

## Step 11 Passed
A link's text must be placed between the opening and closing tags of an anchor (a) element.

Here is an example of a link with the text click here to go to freeCodeCamp.org:

Example Code
<a href="https://www.freecodecamp.org">click here to go to freeCodeCamp.org</a>
Add the anchor text cat photos to the anchor element. This will become the link's text.

## Step 12 Passed
Add the words See more  before the anchor element and  in our gallery after the anchor element.
## Step 13 Passed
Add p tags to turn See more <a href="https://freecatphotoapp.com">cat photos</a> in our gallery. into a paragraph.
## Step 14 Passed
Turn the existing text cute cats into an anchor element that links to:

https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg
## Step 15 Passed
To open links in a new tab, you can use the target attribute on the anchor (a) element.

The target attribute specifies where to open the linked document. target="_blank" opens the linked document in a new tab or window.

Here is the basic syntax for an a element with a target attribute:

Example Code
<a href="https://www.freecodecamp.org" target="_blank">freeCodeCamp</a>
Add a target attribute with the value _blank to the anchor (a) element's opening tag, so that the link opens in a new tab.

## Step 16Passed
Now that you have added the link you can remove the comment.

## Step 17 — Passed

Өмнөх алхмууд дээр та **anchor элемент** ашиглан текстийг холбоос болгон хувиргасан.
Anchor элемент нь зөвхөн текст гэлтгүй, **өөр төрлийн контентыг ч link болгох** боломжтой — зөвхөн anchor tag-ийг түүний гадуур байрлуулахад л хангалттай.

Доорх нь зурагийг link болгон хувиргасан жишээ:

**Example Code**

```
<a href="example-link">
  <img src="image-link.jpg" alt="A photo of a cat.">
</a>
```

Одоо зурагийг link болгохын тулд түүнийг шаардлагатай **element tag**-уудаар ороож өгнө.
Anchor элементийн `href` attribute-ийн утгыг дараах URL болгож ашиглана:

**[https://freecatphotoapp.com]**

---

## Step 18 — Passed

Шинэ контент нэмэхээс өмнө одоогийн **cat photos** хэсгийг ирээдүйн контентуудаас тусгаарлахын тулд **section элемент** ашиглах хэрэгтэй.

**Section элемент** нь баримт бичгийн бүлэглэлүүдийг — жишээ нь бүлэг (chapter), header, footer, эсвэл бусад бүтэцчилсэн хэсгүүдийг — тодорхойлоход ашиглагддаг. Энэ нь **семантик(semantic) элемент** бөгөөд SEO болон accessibility-д сайнаар нөлөөлдөг.

**Example Code**

```
<section>
  <h2>Section Title</h2>
  <p>Section content...</p>
</section>
```

Одоо таны `h2` элемент, хоёр `p` элемент, мөн `a` (anchor) элементийг **section элемент дотор nest** хийнэ.

---

## Step 19 Passed
It is time to add a new section. Add a second section element below the existing section element.


---

## Step 21 — Passed

Та хуудас дээр **rank багатай heading элемент** (жишээ нь h3) нэмэх үед, энэ нь шинэ *subsection* эхэлж байна гэсэн утгыг агуулдаг.

Хоёр дахь **section** элементийн хамгийн сүүлийн **h2** элементийн дараа дараах тексттэй **h3 элемент** нэмнэ:

**Things cats love:**

---

## Step 22 — Passed

Дугаарлалгүй жагсаалт үүсгэхийн тулд **ul элемент** ашиглана.

**Things cats love:** гэсэн тексттэй **h3** элементийн дараа **unordered list (ul)** элемент нэмнэ.
Одоогоор энэ нь харагдахгүй байх нь хэвийн.

---
## Step 23 Passed
The li element is used to create a list item in an ordered or unordered list.

Here is an example of list items in an unordered list:

Example Code
<ul>
  <li>milk</li>
  <li>cheese</li>
</ul>
Within the ul element nest three list items to display three things cats love:

catnip

laser pointers

lasagna

## Step 24 Passed
After the unordered list, add a new image with a src attribute value set to:

https://cdn.freecodecamp.org/curriculum/cat-photo-app/lasagna.jpg

And its alt attribute value to:

A slice of lasagna on a plate.


## Step 25 — Passed

**figure элемент** нь өөрөө бүрэн бүтэн агуулгыг (self-contained content) төлөөлдөг бөгөөд зураг болон түүний тайлбарыг (caption) хооронд нь холбон ашиглах боломж олгодог.

Та сая нэмж оруулсан **image**-ийг **figure элемент дотор nest** хийнэ.

---

## Step 26 — Passed

**figcaption элемент** нь **figure элемент доторх зурагт тайлбар (caption)** нэмэхэд ашиглагддаг.

Доорх нь *A cute cat* гэсэн тайлбартай figcaption элементийн жишээ:

**Example Code**

```
<figure>
  <img src="image.jpg" alt="A description of the image">
  <figcaption>A cute cat</figcaption>
</figure>
```

Одоо **figure элементэд nest хийгдсэн image-ийн дараа**, дараах тексттэй **figcaption элемент** нэмнэ:

**Cats love lasagna.**

---

## Step 27 — Passed

Тодруулж онцлохыг хүссэн үг эсвэл өгүүлбэрийн хэсгийг **em элемент** ашиглан тэмдэглэж болно.

Одоо figcaption элемент доторх **love** гэдэг үгийг **emphasis хийхийн тулд em элементээр ороож** өгнө.

---

## Step 28 Passed
After the figure element, add another h3 element with the text:

Top 3 things cats hate:
---
## Step 29 Passed
The code for an ordered list (ol) is similar to an unordered list, but list items in an ordered list are numbered when displayed.

Below the h3 element, add an ordered list with these three list items:

flea treatment, thunder, other cats
---

## Step 30 Passed
After the ordered list, add another figure element.

---

## Step 31 Passed
Inside the figure element you just added, nest an img element with a src attribute set to https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg.

---

## Step 32 Passed
To improve the accessibility of the image you added, add an alt attribute with the text:

Two tabby kittens sleeping together on a couch.

## Step 33 Passed
After the last img element, add a figcaption element with the text Cats hate other cats.

## step 34

strong элемент нь тодорхой текстийг маш чухал эсвэл яаралтай анхаарах шаардлагатай гэдгийг илэрхийлэхэд ашиглагддаг.

Таны сая нэмсэн figcaption доторх hate гэдэг үгийг strong элементээр ороож, энэ нь онцгой ач холбогдолтой болохыг илэрхийлнэ.

## step 35

footer элемент нь баримт бичиг болон тухайн баримтын нэгэн хэсгийн footer хэсгийг тодорхойлоход ашиглагддаг.
Footer нь ихэвчлэн:

баримтыг бичсэн зохиогчийн мэдээлэл,

зохиогчийн эрхийн мэдэгдэл (copyright),

ашиглах нөхцлийн холбоосууд,

холбогдох мэдээлэл,

болон бусад нэмэлт мэдээллийг

агуулдаг.

main элементын дараа footer элемент нэмнэ.

## step 37

Одоо байгаа freeCodeCamp.org гэсэн текстийг hyperlink болгохын тулд түүнийг anchor (a) элементээр ороож, link болгоно.

href attribute-ийн утга дараах байршилтай байна:

https://www.freecodecamp.org

## Step 38 

Одоогоор та хуудсанд нэмж оруулсан бүх зүйл body элемент дотор байрлаж байгаа.
Хуудас дээр харагдах бүх контент body элемент дотор байрлах ёстой.
Гэхдээ үүнээс гадна чухал мэдээллүүд head элемент дотор байрладаг.

head элемент нь баримтын metadata—өөрөөр хэлбэл:

гарчиг (title),

stylesheet-үүдийн холбоос,

script-үүд,

болон хуудсан дээр шууд харагдахгүй боловч хуудасны тухай мэдээлэл

зэрэгийг агуулдаг.

Body элементын дээр head элемент нэмнэ.

## Step 39

title элемент нь тухайн хуудасны нэрийг браузерийн tab эсвэл title bar дээр хэрхэн харагдахыг тодорхойлдог.

Одоо head элемент дотор дараах тексттэй title элемент нэмнэ:

CatPhotoApp

## step 40

Хуудсанд байгаа бүх контент html элемент дотор nest хийгдсэн байгааг анзаараарай.
html элемент нь HTML хуудсын root элемент бөгөөд бүх контентыг ороож өгдөг.

Мөн та html элементэд lang attribute нэмснээр хуудсын хэлнийг тодорхойлж болно.

Одоо opening html tag дээр lang attribute нэмээд, утгыг нь en гэж тохируулж, хуудсын хэл англи болохыг заана.

## Step 41

Бүх HTML хуудсууд <!DOCTYPE html> гэж эхлэх ёстой.
Энэ тусгай мөрийг declaration гэж нэрлэдэг бөгөөд браузер HTML-ийг салбарын нийтлэг стандартад нийцүүлэн боловсруулахыг хангадаг.

<!DOCTYPE html> нь браузерт тухайн баримт нь HTML5 баримт болохыг — өөрөөр хэлбэл HTML-ийн хамгийн сүүлийн хувилбар болохыг — мэдэгддэг.

Одоо энэ declaration-ийг кодын энгийн эхний мөр болгон нэмнэ.

## Step 42

Браузерийн үйлдлийг тохируулахын тулд head хэсэгт **meta элемент** нэмэж болно. Жишээ нь:

**Example Code**

```
<meta attribute="value">
```

Одоо head элемент дотор **meta элемент nest хийгээд**, түүнд `charset` attribute-ийг `utf-8` утгатайгаар тохируулна.
Энэ нь браузерт тухайн хуудсан дээрх тэмдэгтүүдийг **яаж encode хийх** талаар заавар өгдөг.

`meta` элемент нь **void element** буюу closing tag-гүй элемент гэдгийг санана уу.

Энэ сүүлийн өөрчлөлтөөр та **Cat Photo App workshop**-ийг бүрэн дуусгалаа.
**Баяр хүргэе!**

---



