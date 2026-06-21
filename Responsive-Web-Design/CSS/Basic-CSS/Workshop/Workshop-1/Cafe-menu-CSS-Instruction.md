## **Алхам 1**

Энэ workshop-д та **CSS (Cascading Style Sheets)**-ийн үндсийг дадлагажуулж, **кафены меню** бүтээнэ.

Эхлээд менюгийн контентыг нэмье. Одоо байгаа **`body` элемент дотор** нэг **`main` элемент** нэмнэ үү. Энэ элемент нь цаашдаа кафены санал болгож буй **кофе болон амттаны үнийн мэдээллийг** агуулна.

## **Алхам 2**

Кафены нэр нь **CAMPER CAFE** юм. Тиймээс **`main` элемент дотор** нэг **`h1` элемент** нэмээд, кафены нэрийг **бүгдийг нь том үсгээр** бичиж өгнө үү. Ингэснээр нэр нь илүү тод, анхаарал татахуйц харагдана.

## **Алхам 3**

Кафе **2020 онд байгуулагдсан** гэдгийг зочдод мэдэгдэхийн тулд **`h1` элементийн доор** нэг **`p` элемент** нэмээд, дотор нь **`Est. 2020`** гэсэн текстийг бичнэ үү.

## **Алхам 4**

Меню нь **хоёр хэсэгтэй** байна: нэг нь **кофе**, нөгөө нь **амттан**.

Эхлээд кофены хэсгийг хийхийн тулд, **`main` элемент дотор** нэг **`section` элемент** нэмнэ үү. Энэ `section` нь кафенд санал болгож буй **бүх кофены мэдээллийг байрлуулах** зориулалттай байна.

## Step 5
Create an h2 element in the section element and give it the text Coffee.

## **Алхам 6**

Одоог хүртэл та контентийн **харагдах байдал, дүрслэлд хязгаарлагдмал хяналттай** байсан.

Үүнийг өөрчлөхийн тулд **`head` элемент дотор** нэг **`style` элемент** нэмнэ үү. Ингэснээр та CSS ашиглан хуудсынхаа загварыг удирдах боломжтой болно.

## Step 7
In previous lessons, you learned how to add CSS properties and values like this:

Example Code
element {
 property: value;
}
Center the content of the h1 element by setting its text-align property to the value center.

## **Алхам 8**

Өмнөх алхамд та **төрлийн сонгогч (type selector)** ашиглан `h1` элементийг загварчилсан.

Одоо **`h2` болон `p` элементүүдийн контентыг голд нь байрлуулахын** тулд, одоо байгаа **`style` элемент дотор** эдгээрт тус бүр **шинэ type selector** нэмнэ үү.

## Step 9
You now have three type selectors with the same styling. You can add the same group of styles to many elements by creating a list of selectors. Each selector is separated with commas like this:

Example Code
selector1, selector2 {
  property: value;
}
Delete the three existing type selectors and replace them with one selector list that centers the text for the h1, h2, and p elements.

## **Алхам 10**

Та `style` тагийн дотор CSS бичиж **гурван элементийг загварчилсан** байна. Энэ нь ажиллаж байгаа ч, цаашдаа илүү олон загвар нэмэгдэх тул **бүх CSS-ийг тусдаа файлд** байрлуулж, түүнийг холбох нь хамгийн зөв арга юм.

Танд зориулж **`styles.css`** гэсэн тусдаа файл аль хэдийн үүсгэгдсэн байгаа. Редакторын дээд хэсэгт байгаа **tab-уудын** тусламжтайгаар файлуудын хооронд шилжиж болно.

Эхлээд:

* Одоогоор бичсэн **бүх CSS загваруудаа** `styles.css` файл руу **шилжүүлэн бичнэ үү**
* **`<style>` болон `</style>` тагуудыг оруулахгүй** гэдгийг анхаарна уу

## **Алхам 11**

Одоо CSS код чинь **`styles.css` файлд** орсон тул, **`style` элемент болон доторх бүх контентыг** HTML файлаас **бүрэн устгана уу**.

Үүнийг устгасны дараа өмнө нь голд байрласан байсан текстүүд **дахин зүүн тийш шилжиж** харагдах болно.

## **Алхам 12**

Одоо **`styles.css`** файлыг HTML баримттайгаа холбох хэрэгтэй, ингэснээр загварууд дахин хэрэгжинэ.

**`head` элемент дотор** нэг **`link` элемент** нэмнэ үү. Үүнд:

* `rel` атрибутын утгыг **`"stylesheet"`**
* `href` атрибутын утгыг **`"styles.css"`**
  гэж тохируулна.

**Тэмдэглэл:**
`link` элемент нь **void element** тул **хаалтын таггүй** байдаг. Ийм элементүүдийг
`<link>`
хэлбэрээр бичдэг бөгөөд
`<link></link>`
гэж бичих ёсгүй.

## **Алхам 13**

Хуудасны загвар **гар утас**, **desktop**, **laptop** дээр ижил төстэй харагдахын тулд, тусгай `content` атрибуттай **`meta` элемент** нэмэх хэрэгтэй.

Та өмнөх хичээлүүдэд **viewport meta элемент**-ийн талаар сурсан.

**Жишээ код:**

```html
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
```

Энэ `meta` элементийг **`head` элемент дотор** нэмж өгнө үү.

## Step 14
The text is centered again so the link to the CSS file is working. Add another style to the file that changes the background-color property to brown for the body element.

## **Алхам 15**

Одоогийн **бор өнгийн background** нь текстийг уншихад хэцүү болгож байна.

Тиймээс **`body` элементийн background өнгийг** **`burlywood`** болгон өөрчилнө үү. Ингэснээр хуудсанд өнгө үлдэх боловч текстийг **уншихад илүү хялбар** болно.

## **Алхам 16**

`div` элемент нь өмнө нь ашигласан контентын элементүүдээс ялгаатайгаар, голчлон **layout болон дизайны зорилгоор** ашиглагддаг.

Одоо:

* **`body` элемент дотор** нэг **`div` элемент** нэмнэ үү
* Дараа нь **бусад бүх элементүүдийг** энэ шинэ `div` дотор **шилжүүлэн байрлуулна**

Мөн **нээх `div` таг дээр**:

* `id` атрибут нэмж,
* утгыг нь **`menu`** гэж өгнө үү.

## **Алхам 17**

Одоо зорилго нь `div` элемент хуудсын **бүх өргөнийг эзлэхгүй** байхаар тохируулах явдал юм. Үүний тулд CSS-ийн **`width`** шинж чанар яг тохирно.

Та **`id` сонгогч (id selector)** ашиглан `id` атрибуттай тодорхой нэг элементийг онилж болно.

Өмнөх хичээлүүдэд та `id` сонгогчийг дараах байдлаар ашиглаж сурсан:

```css
#cat {
  width: 250px;
}
```

Одоо **`#menu` сонгогчийг** ашиглан тухайн элементэд **300px өргөн** өгнө үү.
## **Алхам 18**

CSS дахь **comment** дараах хэлбэртэй байдаг:

```css
/* энд comment бичнэ */
```

Одоо **style sheet**-дээ байгаа **`background-color` property болон түүний утгыг агуулсан мөрийг comment болгож** (comment out) өгнө үү. Ингэснээр зөвхөн **`#menu` элементийг загварчилж буй нөлөөг** харах боломжтой болно.

Үүний үр дүнд хуудасны background **дахин цагаан** болж харагдана.

## Step 19
Now use the existing #menu selector to set the background color of the div element to be burlywood.

## Step 20
Now it's easy to see that the text is centered inside the #menu element. Currently, the width of the #menu element is specified in pixels (px).

Change the width property's value to be 80%, to make it 80% the width of its parent element (body).

## **Алхам 21**

Одоо **`#menu` элементийг хэвтээ чиглэлд голлуулах** хэрэгтэй.

Үүнийг хийхийн тулд:

* `margin-left` болон
* `margin-right`
  хоёуланг нь **`auto`** гэж тохируулна.

Margin-ийг элементийн эргэн тойрон дахь **үл харагдах зай** гэж ойлгож болно. Эдгээр хоёр margin шинж чанарыг ашигласнаар **`#menu` элемент нь `body` элементийн дотор хэвтээ тэнхлэгийн дагуу голд байрлана**.
## **Алхам 22**

Одоог хүртэл та элементүүдийг загварчлахдаа **type selector** болон **id selector** ашиглаж ирсэн. Гэхдээ бодит практикт элементүүдийг загварчлахад **өөр төрлийн сонгогч** илүү түгээмэл ашиглагддаг.

Та өмнөх хичээлүүдэд **class selector**-той хэрхэн ажиллахыг дараах байдлаар сурсан:

```css
.class-name {
  styles
}
```

Одоо байгаа **`#menu` сонгогчийг** **class selector** болгож өөрчилнө үү. Үүний тулд:

* `#menu`-г устгаад
* оронд нь **`.menu`** гэсэн класс нэрийг ашиглана.
## Step 23
To apply the class's styling to the div element, remove the id attribute and add a class attribute to the div element's opening tag. Make sure to set the class value to menu.

## **Алхам 24**

Кафены гол бүтээгдэхүүн нь **кофе** тул, хуудасны **арын дэвсгэрт кофены үрийн зураг** ашиглаж болно.

Одоо:

* **`body` type selector** дотор байгаа **comment болон түүний доторх агуулгыг устгана уу**
* Үүний дараа **`background-image`** шинж чанарыг нэмж,
* утгыг нь
  **`url(https://cdn.freecodecamp.org/curriculum/css-cafe/beans.jpg)`**
  гэж тохируулна уу
## Step 25
Now that things look good, it's time to start adding some menu items.

Add an empty article element under the Coffee heading. It will contain a flavor and price of each coffee you currently offer.
## Step 26
article elements commonly contain multiple elements that have related information. In this case, it will contain a coffee flavor and a price for that flavor.

Nest two p elements inside your article element. The first one's text should be French Vanilla, and the second's text 3.00.

## **Алхам 27**

Одоогийн байгаа **кофе / үнэ** хосын **доороос эхлэн**, дараах кофе болон үнийг **`article` элементүүд** ашиглан нэмнэ үү. `article` бүрийн дотор **хоёр `p` элемент** байна.

**Нэмэх кофе ба үнэ:**

* Caramel Macchiato — 3.75
* Pumpkin Spice — 3.50
* Hazelnut — 4.00
* Mocha — 4.50

Өмнөхтэй адил:

* **эхний `p` элемент** → кофены нэр (амт)
* **хоёр дахь `p` элемент** → үнэ
  байхаар бичнэ үү.
## **Алхам 28**

Одоогоор кофены **амт** болон **үнэ** нь тус тусын `p` элемент дотроо **босоогоор давхарлан**, мөн **голд нь байрласан** байна. Харин амтыг **зүүн талд**, үнийг **баруун талд** байрлуулбал илүү тохиромжтой харагдана.

Эхний алхам болгон **French Vanilla**-ийн текстийг агуулж байгаа `p` элемент дээр **`flavor`** гэсэн **class нэр** нэмнэ үү.

## Step 29
Using your new flavor class as a selector, set the text-align property's value to left.

## Step 30
Next, you want to align the price to the right. Add a class named price to your p element that has 3.00 as its text.

## Step 31
Now align the text to the right for the elements with the price class.

## Step 32
That is kind of what you want, but now it would be nice if the flavor and price were on the same line. p elements are block-level elements, so they take up the entire width of their parent element.

To get them on the same line, you need to apply some styling to the p elements so they behave more like inline elements.

To do that, start by adding a class attribute with the value item to the first article element under the Coffee heading.
## **Алхам 33**

`p` элементүүд нь **`item`** гэсэн `class` атрибуттай **`article` элемент дотор** байрлаж байна. Та **`item`** класстай элементүүдийн дотор хаана ч байрласан бүх `p` элементүүдийг дараах байдлаар загварчилж болно:

```css
.item p { }
```

Дээрх сонгогчийг ашиглан:

* **`display`** шинж чанарыг нэмээд,
* утгыг нь **`inline-block`** гэж тохируулна уу.

Ингэснээр `p` элементүүд **inline элемент шиг аашилж**, нэг мөрөнд зэрэгцэн байрлах боломжтой болно.
## **Алхам 34**

Одоо илүү ойрхон болсон ч **үнэ баруун талдаа тогтож харагдахгүй** байна. Учир нь **`inline-block` элементүүд нь зөвхөн өөрийн контентийнхоо өргөнийг л эзэлдэг**.

Тэднийг хооронд нь илүү сайн тарааж байрлуулахын тулд:

* **`flavor`** болон
* **`price`**
  гэсэн **class selector**-уудад тус бүр **`width`** шинж чанар нэмээд,
* утгыг нь **`50%`** гэж тохируулна уу.

Ингэснээр амт болон үнэ нь эцэг элементийн өргөнийг тэнцүү хуваан авч, амт зүүн талд, үнэ баруун талд илүү зохистой байрлана.
## **Алхам 35**

За, энэ нь ажилласангүй. `p` элементүүдийг `inline-block` болгож, тус тусдаа мөрөнд бичсэнээр эхний `p` элементийн баруун талд **нэмэлт зай** үүсээд, хоёр дахь нь **дараагийн мөр рүү шилжиж** байна.

Үүнийг засах нэг арга нь `p` элемент бүрийн өргөнийг **50%-аас жаахан бага** болгох юм. Тиймээс хоёр классын `width` утгыг хоёуланг нь **49%** болгон өөрчилж, ямар өөрчлөлт гарч байгааг харна уу.
## **Алхам 36**

Энэ нь ажилласан ч, **үнэний баруун талд бага зэрэг зай** хэвээр үлдсэн байна.

Та өргөний хувийг өөр өөрөөр туршиж үзэж болох ч, үүний оронд дараах аргыг ашиглаарай.

* **`price` класстай `p` элементийг**
* **`flavor` класстай `p` элементийн яг хажууд**
  редактор дотор **backspace** товч ашиглан ойртуулж байрлуулна уу
* **Хоёр `p` элементийн хооронд ямар ч зай (space) үлдээхгүй** байх ёстой

Ингэснээр тэд редактор дээр ч, хуудас дээр ч **нэг мөрөнд яг зэрэгцэн** зөв байрлах болно.
## Step 37
Now go ahead and change both the flavor and price class' widths to be 50% again.
## **Алхам 38**

Одоо энэ арга **зөв ажиллаж байгааг** мэдсэн тул, үлдсэн `article` болон `p` элементүүдийг **эхнийхтэй адил хэлбэрт оруулж** болно.

Эхлээд:

* **бусад бүх `article` элементүүд дээр**
* **`item`** гэсэн **class**-ийг нэмнэ үү.
## Step 39
Next, position the other p elements to be on the same line with no space between them.
## Step 40
To complete the styling, add the applicable class names flavor and price to all the remaining p elements.

## **Алхам 41**

Хуудасны preview-ийн өргөнийг багасгавал, тодорхой нэг цэгээс эхлээд **зүүн талын текст дараагийн мөр рүү орж (wrap)** байгааг анзаарах болно. Учир нь зүүн талын `p` элементүүд одоогоор **зөвхөн 50% өргөн** эзэлж чаддаг.

Баруун талын **үнэ** нь тэмдэгтийн тоо цөөн тул илүү бага зай шаарддаг. Тиймээс:

* **`flavor` классын `width`-ийг `75%`**
* **`price` классын `width`-ийг `25%`**
  болгон шинэчилнэ үү.

Ингэснээр амт илүү өргөн зай авч, үнэ баруун талд илүү оновчтой байрлах болно.
## **Алхам 42**

Та удахгүй менюгийн загварчлал руу дахин буцаж ирэх болно. Харин одоохондоо дараах ажлыг хийнэ үү.

* Эхний `section` элементийн **доор**
* кафены санал болгож буй **амттаныг (desserts)** харуулах зориулалттай
* **хоёр дахь `section` элемент** нэмнэ үү
## Step 43
Add an h2 element in the new section and give it the text Desserts.
## Step 44
Add an empty article element under the Desserts heading. Give it a class attribute with the value item.

## **Алхам 45**
`article` элемент дотор хоёр `p` элементийг доторлуулж байрлуул. Эхнийх нь `Donut` гэсэн тексттэй, хоёр дахь нь `1.50` гэсэн тексттэй байна. Эдгээр хоёр `p` элементийг **нэг мөрөнд**, хооронд нь **ямар ч зай үлдээлгүйгээр** байрлуул.

## **Алхам 46**
Сая нэмсэн хоёр `p` элементийн хувьд, эхний `p` элементийн `class` атрибутын утгыг `dessert` гэж, хоёр дахь `p` элементийн `class` атрибутын утгыг `price` гэж тус тус оноо.

## **Алхам 47**
Ямар нэг зүйл зөв харагдахгүй байна. Та `Donut` гэсэн тексттэй `p` элементэд зөв `class` атрибутын утгыг нэмсэн ч, түүнд зориулсан selector-ийг тодорхойлоогүй байна.

`flavor` класст зориулсан CSS дүрэм аль хэдийн танд хэрэгтэй байгаа шинж чанаруудыг тохируулсан байгаа. Тиймээс энэ CSS дүрэмд **нэмэлт selector** болгон `dessert` классыг нэм.

## Step 48
Below the dessert you just added, add the rest of the desserts and prices using three more article elements, each with two nested p elements. Each element should have the correct dessert and price text, and all of them should have the correct classes.

Example Code
Cherry Pie 2.75
Cheesecake 3.00
Cinnamon Roll 2.50

## **Алхам 49**
Та `padding`-ийн янз бүрийн шинж чанаруудыг ашиглан цэсний (`menu`) контент болон хоёр хажуу талын хооронд зай өгч болно.

`menu` класст `padding-left` болон `padding-right` шинж чанаруудыг хоёуланг нь **20px** утгатайгаар өг.
## Step 50
That looks better. Now try to add the same 20px padding to the top and bottom of the menu.

## **Алхам 51**
`menu`-ийн дөрвөн тал бүгд ижил дотоод зайтай байгаа тул, тус тусад нь өгсөн дөрвөн `padding` шинж чанарыг устгаад, оронд нь **нэг** `padding` шинж чанарыг **20px** утгатайгаар ашигла.

## **Алхам 52**
Одоогийн байдлаар `menu`-ийн өргөн нь `body` элементийн өргөний **80%**-ийг үргэлж эзэлж байна. Маш өргөн дэлгэц дээр кофе болон амттаны нэрс үнэ цэнээсээ хэт хол байрлаж харагдаж байна.

Үүнийг хэт их тэлэхээс сэргийлэхийн тулд `menu` класст **500px** утгатай `max-width` шинж чанарыг нэм.
## **Алхам 53**
Та текстийн `font-family`-г өөрчилснөөр браузерын анхдагч фонтоос өөр харагдуулж чадна. Браузер бүрт нийтлэг ашиглагддаг зарим фонтууд байдаг.

`body` доторх бүх текстийг өөрчлөхийн тулд `font-family` шинж чанарыг **sans-serif** утгатайгаар нэм. Энэ нь нэлээд түгээмэл хэрэглэгддэг, уншихад маш ойлгомжтой фонт юм.

## **Алхам 54**
Бүх текст ижил `font-family`-тай байх нь бага зэрэг уйтгартай санагдана. Та текстийн ихэнх хэсгийг `sans-serif` хэвээр үлдээгээд, зөвхөн `h1` болон `h2` элементүүдийг өөр selector ашиглан өөр фонттой болгож чадна.

`h1` болон `h2` элементүүдийг **нэг selector**-оор загварчилж, эдгээр элементүүдийн текстийг **Impact** фонтоор харагддаг болго.

## **Алхам 55**
`font-family` шинж чанарт фонтын нэрийг таслалаар тусгаарлан нэмснээр **fallback** утга өгч болно. Fallback нь эхний заасан фонт олдохгүй эсвэл ашиглах боломжгүй үед хэрэглэгддэг.

**Impact** фонтын дараа **serif** гэсэн fallback фонтыг нэм.

## **Алхам 56**
`Est. 2020` текстийг налуу (italic) болгохын тулд `established` класст зориулсан selector үүсгээд, түүнд `font-style` шинж чанарыг **italic** утгатайгаар өг.

## Step 57
Now apply the established class to the Est. 2020 text.

## Step 59
Add a footer element below the main element, where you can add some additional information.

## Step 60
Inside the footer, add an address element. You will add contact information to this element in the next few steps.
## Step 61
Inside the address, add a p element. Then, nest an anchor (a) element in the p that links to https://www.freecodecamp.org and has the text Visit our website.

Make sure that the link opens in a new tab by adding a target attribute with the value _blank.

## Step 62
Add a second p element below the one with the link and give it the text 123 Free Code Camp Drive.

## Step 63
You can use an hr element to display a divider between sections of different content.

Example Code
<section>
  <h2>Things cats love</h2>
  <hr>
  <p>Cats love lasagna.</p>
</section>
First, add an hr element between the p element with the class established and the first section element.

Note that the hr element is a void element.
## **Алхам 64**
`hr` элементийн анхдагч шинж чанарууд нь түүнийг нимгэн, цайвар саарал шугам хэлбэрээр харагдуулдаг. Та `height` шинж чанарт утга өгснөөр шугамын өндрийг өөрчилж болно.

`hr` элементийн өндрийг **3px** болгож өөрчил.

## Step 65
Change the background color of the hr element to brown so it matches the color of the coffee beans.

## **Алхам 66**
Шугамын ирмэг дагуух саарал өнгийг анзаарна уу. Эдгээр ирмэгүүдийг **border** гэж нэрлэдэг. Элементийн тал бүр өөр өөр өнгөтэй байж болох эсвэл бүгд ижил өнгөтэй байж болно.

`border-color` шинж чанарыг ашиглан `hr` элементийн бүх ирмэгийг түүний дэвсгэрийн өнгөтэй **ижил** болго.

## **Алхам 67**
Шугамын зузаан илүү том харагдаж байгааг анзаарна уу. `hr` элементүүдийн бүх ирмэгт `border-width` гэдэг шинж чанарын анхдагч утга нь **1px** байдаг. Border-ийг дэвсгэрийн өнгөтэй ижил болгосноор шугамын нийт өндөр **5px** (3px + дээд ба доод border-ийн 1px + 1px) болж байна.

`hr` элементийн `height` шинж чанарыг **2px** болгон өөрчилснөөр, түүний нийт өндөр **4px** болго.
## Step 68
Go ahead and add another hr element between the main element and the footer element.

## Step 69
To create a little more room around the menu, add 20px of space on the inside of the body element by using the padding property.**Алхам 69**

Цэсийн эргэн тойронд бага зэрэг илүү зай үүсгэхийн тулд `padding` шинж чанарыг ашиглан `body` элементын **дотор талд** 20px зай нэмнэ.

## **Алхам 70**

Цэсний нэршил болон үнийн мөрүүд дээр анхаарахад, мөр бүрийн хооронд нэлээд их зай байна.

`item` нэртэй класстай элементүүдийн дотор байрлаж буй бүх `p` элементүүдийг онилсон **аль хэдийн байгаа selector**-ыг ашиглаад, тэдгээрийн дээд (`margin-top`) болон доод (`margin-bottom`) margin-ыг 5px болгож тохируулна.
## Step 71

Using the same style selector in the previous step, make the font size of the items and prices larger by using a value of 18px.
## Step 72

Changing the margin-bottom to 5px looks great. However, now the space between the Cinnamon Roll menu item and the second hr element does not match the space between the top hr element and the Coffee heading.

Add some more space by creating a class named bottom-line using 25px for the margin-top property.
## Step 73

Now add the bottom-line class to the second hr element so the styling is applied.
## **Алхам 74**

Дараагийн алхамд `footer` элементийн загварыг тохируулна. CSS кодыг эмх цэгцтэй, уншихад ойлгомжтой байлгахын тулд `styles.css` файлын төгсгөлд `FOOTER` гэсэн тексттэй comment нэмж бичнэ.

## **Алхам 75**

Одоо `footer` элемент рүү шилжиж, тэнд байгаа бүх текстийн үсгийн хэмжээг (`font-size`) 14px болгож тохируулна.

## Step 76

The default styling of the address element is to have font-style set to italic. Add a selector for the address element and set its font-style to normal.

## **Алхам 77**

Дарж ороогүй холбоосын (link) анхдагч өнгө ихэвчлэн цэнхэр байдаг. Харин тухайн хуудсаас өмнө нь орж үзсэн холбоосын анхдагч өнгө ихэвчлэн ягаавтар (purple) байдаг.

`footer` хэсгийн холбоосуудыг өмнө нь орж үзсэн эсэхээс үл хамааран ижил өнгөтэй харагдуулахын тулд `a` (`anchor`) элементэд зориулсан type selector ашиглаж, `color` шинж чанарын утгыг `black` болгож тохируулна.

## **Алхам 78**

Холбоос руу орж үзсэний дараах төлөвийн шинж чанарыг `a:visited { propertyName: propertyValue; }` хэлбэртэй псевдо-селектор(Pseudo-selector) ашиглан өөрчилдөг.

Хэрэглэгч тухайн холбоос руу орж үзсэн үед `footer` хэсэгт байрлах **“Visit our website”** холбоосын өнгийг саарал (`grey`) болгож өөрчилнө.

## **Алхам 79**

Холбоос дээр хулганы заагч очих үед (hover төлөв) шинж чанарыг нь `a:hover { propertyName: propertyValue; }` хэлбэртэй псевдо-селектор ашиглан өөрчилдөг.

Хэрэглэгч `footer` хэсэгт байрлах **“Visit our website”** холбоос дээр хулганы заагчаа аваачих үед, холбоосын өнгийг бор (`brown`) болгож өөрчилнө.

## **Алхам 80**

Холбоос дээр дарж байгаа агшинд (active төлөв) шинж чанарыг нь `a:active { propertyName: propertyValue; }` хэлбэртэй псевдо-селектор ашиглан өөрчилдөг.

`footer` хэсэгт байрлах **“Visit our website”** холбоос дээр дарах үед, холбоосын өнгийг цагаан (`white`) болгож өөрчилнө.

## **Алхам 81**

Одоогийн хар болон бор өнгийн ерөнхий шийдлийг хадгалахын тулд, холбоос руу орж үзсэн үеийн (visited төлөв) өнгийг хар (`black`) болгож, холбоос дээр дарж буй агшинд (active төлөв) ашиглагдах өнгийг бор (`brown`) болгож тохируулна.

## **Алхам 82**

Цэсийн **CAMPER CAFE** гэсэн текст дээд талаасаа, харин цэсний доод хэсэгт байгаа хаяг доод талаасаа өөр хэмжээний зайтай харагдаж байна. Энэ нь браузер `h1` элементэд анхнаасаа дээд (`top`) margin өгдөгтэй холбоотой.

`h1` элементийн дээд margin-ыг (`margin-top`) 0 болгож тохируулснаар дээд талын бүх зайг арилгана.
## Step 83

To remove some of the vertical space between the h1 element and the text Est. 2020, change the bottom margin of the h1 to 15px.
## Step 85

Now apply the address class to the p element containing the street address 123 Free Code Camp Drive.

## **Алхам 86**

Цэс ерөнхийдөө сайн харагдаж байгаа ч, кофены үрийн арын зургийг эс тооцвол ихэнх нь зөвхөн текстээс бүрдэж байна.

**Coffee** гарчгийн доор `https://cdn.freecodecamp.org/curriculum/css-cafe/coffee.jpg` гэсэн URL-тэй зургийг нэмнэ. Зургийн `alt` утгыг **coffee icon** гэж өгнө.

## **Алхам 87**

Таны нэмсэн зураг нь дээр байрлах **Coffee** гарчиг шигээ хэвтээ чиглэлд төвд харагдахгүй байна. Учир нь `img` элементүүд нь **inline элементтэй төстэй** байдлаар ажилладаг.

Зургийг гарчиг зэрэг block түвшний элемент шиг ажиллуулахын тулд `img`-д зориулсан type selector үүсгэнэ. `display` шинж чанарыг `block` болгож тохируулж, `margin-left` болон `margin-right` шинж чанаруудыг ашиглан зургийг хэвтээ чиглэлд төвд байрлуулна.

## Step 88

Add one last image under the Desserts heading using the URL https://cdn.freecodecamp.org/curriculum/css-cafe/pie.jpg. Give the image an alt value of pie icon.

## **Алхам 89**

`h2` элементүүд болон тэдгээрт харгалзах дүрс зургуудын хоорондох босоо зайг арай багасгавал илүү зохимжтой харагдана. `h2` элементүүд нь анхнаасаа дээд болон доод margin-тэй байдаг тул, доод (`margin-bottom`) утгыг нь 0 эсвэл өөр бага тоо болгож өөрчилж болно.

Гэхдээ үүнээс илүү хялбар арга бий. `img` элементүүдэд сөрөг (`negative`) дээд margin өгснөөр, зургийг одоогийн байрлалаас нь дээш татаж болно. Сөрөг утгыг тоон утгын өмнө `-` тэмдэг тавьж илэрхийлдэг.

Энэ workshop-ийг дуусгахын тулд `img` type selector дээр `margin-top`-д `-25px` гэсэн сөрөг утгыг ашиглана.

🎉 **Баяр хүргэе! Та Cafe Menu workshop-ийг амжилттай дуусгалаа.**

