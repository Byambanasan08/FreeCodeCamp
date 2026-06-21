## Алхам 1 — Давсан

Энэ workshop-д та нохой биш, **Mr. Whiskers** нэртэй мууранд зориулсан блог хуудас бүтээх замаар **semantic HTML**-тэй ажиллах дадлага хийнэ.

Таны эхлээд бүтээх хэсэг бол хуудасны **header** хэсэг юм.

**Header элемент** нь хуудасны навигаци болон бусад танилцуулах шинжтэй мэдээлэл зэрэг эхлэлийн контентыг илэрхийлэхэд ашиглагддаг.

Header элементийг ашигласан жишээг доор үзүүлэв:

Жишээ код

```html
<header>
  <h1>Main Page Title Goes Here</h1>
  <img src="example-logo.png" alt="Example logo" />
</header>
```

**Body элемент дотор header элементийг нэмнэ үү.**

## Алхам 2 — Давсан

Header хэсэг нь блогийн **үндсэн гарчиг**, **зураг**, мөн **хуудасны навигаци**-ийг харуулах үүрэгтэй байна.

**Header элемент дотор** `Welcome to Mr. Whiskers' Blog Page!` гэсэн тексттэй **h1 элемент** нэмнэ үү.

## Алхам 3 — Давсан

Энэхүү танилцуулах контент хэсэгт та **Mr. Whiskers**-ийн зургийг тайлбартай нь хамт харуулах хэрэгтэй.

**h1 элементийн доор** эхлээд **figure элемент** нэмнэ үү.

**Figure элемент дотор** нэг **img элемент** нэмнэ.

Img элементийн **src атрибут** нь
`https://cdn.freecodecamp.org/curriculum/css-photo-gallery/1.jpg`
гэсэн утгатай байх ёстой бөгөөд **alt текст** нь
`a cat in the garden`
байна.

**Img элементийн доор** `Mr. Whiskers in the Garden` гэсэн тексттэй **figcaption элемент** нэмнэ үү.

## Алхам 4 — Давсан

Таны блог хуудсанд хэрэглэгчид хуудасны өөр өөр хэсгүүд рүү шилжих боломжтой байх ёстой.

**Nav элемент** нь баримт бичгийн доторх бусад хэсгүүд рүү эсвэл вэбсайтын бусад хуудсууд руу чиглэсэн навигацийн холбоосуудыг хангахад ашиглагддаг. Ихэнхдээ nav элементийг **цэс (menu)** эсвэл **агуулгын хүснэгт (table of contents)** хэлбэрээр ашигласан байдаг.

Nav элементийг ашигласан жишээг доор үзүүлэв:

Жишээ код

```html
<nav>
  <ul>
    <li><a href="#">Home</a></li>
    <li><a href="#about">About</a></li>
    <li><a href="#contact">Contact</a></li>
  </ul>
</nav>
```

**Figure элементийн доор** нэг **nav элемент** нэмээд, түүний дотор **ul элемент** байрлуулна.

**Ul элементийн дотор** гурван **li элемент** нэмнэ үү.

## Алхам 5 — Давсан

**Li элемент бүрийн дотор** нэг **anchor элемент (a элемент)** байрлуулах шаардлагатай.

Эхний anchor элементийн текст нь **About** байх бөгөөд **href атрибутын утга** нь `#about` байна. About-ийн өмнөх hash (`#`) тэмдэг нь дараа нь төслийн явцад нэмэгдэх **id нэрийг** илэрхийлж байгаа юм.

Хоёр дахь anchor элементийн текст нь **Posts** байх бөгөөд **href атрибутын утга** нь `#posts` байна.

Гурав дахь anchor элементийн текст нь **Contact** байх бөгөөд **href атрибутын утга** нь `#contact` байна.

## Step 6 Passed
Now that you are finished building out the page header, you will need to start adding your main content.

Below your header, add a main element.

## Step 7 Passed
The first section on the page will be the about section. The section will introduce Mr. Whiskers and give users an idea of what this blog is about.

Inside your main element, add a section element with the id attribute set to "about".

Inside the section element, add an h2 with the text of About.

## Step 8 Passed
Below your h2 element, add a paragraph element with the text of Hi there! I'm Jane Doe, a passionate writer who finds endless inspiration in the antics of my beloved cat, Mr. Whiskers..

Below your paragraph element, add another paragraph element with the text of His playful nature and boundless energy keeps me on my toes. I love him so much.

## Step 9 Passed
Now that you have added the about section, try clicking on the About link to see the page jump down to that section.

The next section in the blog page will be a list of posts talking about Mr. Whiskers.

Add another section element with an id set to "posts".

Inside the section element, add an h2 element with the text of Posts.

## Алхам 10 — Давсан

Эхний блог постод **article элемент** ашиглана.

**Article элемент** нь вэб хуудсан дээрх бие даасан (self-contained) контентыг илэрхийлдэг.

Жишээ код

```html
<article>
  <h1>Example heading</h1>
  <p>Example article text</p>
</article>
```

**H2 элементийн доор** нэг **article элемент** нэмнэ үү.

**Article элементийн дотор** `Mr. Whiskers' First Day Home` гэсэн тексттэй **h3 элемент** нэмнэ.

Энд h3 элемент ашиглаж байгаа шалтгаан нь гарчгийн элементүүдийн зөв бүтцийн шатлал (structural hierarchy)-ыг хадгалах нь чухал учраас юм. Posts дэд гарчиг нь h2 элемент тул, шатлалын дараагийн түвшин нь h3 элемент байх ёстой.

## Алхам 11 — Давсан

Энэ блог пост нь **lorem ipsum** текст бүхий хэд хэдэн догол мөрөөс бүрдэнэ.

**Lorem ipsum** нь вэб хөгжүүлэлтэд түгээмэл ашиглагддаг **placeholder текст** юм. Энэ нь бодит контентод анхаарал хандуулахгүйгээр, эхлээд вэб хуудасны үндсэн бүтцийг байгуулахад төвлөрөх боломж олгодог.

Lorem ipsum ашигласан жишээг доор үзүүлэв:

Жишээ код

```html
<p>
  Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam
  quod, voluptates, quae, quos quibusdam dolorum quia nemo repudiandae
  quidem voluptatum quas. Quisquam quod, voluptates, quae, quos
  quibusdam dolorum quia nemo repudiandae quidem voluptatum quas.
</p>
```

**H3 элементийн доор** lorem ipsum тексттэй **хоёр p элемент** нэмнэ үү.

## Step 12 Passed
For the second blog post, you will need to add another article element.

Inside the article element, add an h3 element with the text of Mr. Whiskers' First Bath.

Below your h3 element, add two paragraphs of lorem ipsum text.

## Step 13 Passed
For the third blog post, you will need to add another article element.

Inside the article element, add an h3 element with the text of Mr. Whiskers' First Birthday Party.

Below your h3 element, add two paragraphs of lorem ipsum text.

## Алхам 14 — Давсан

Одоо та бүх блог постуудыг нэмж дуусгасан тул **Posts** холбоос дээр дарж үзээрэй. Ингэснээр хуудас **Posts** хэсэг рүү доош үсэрч (jump) очих ёстой.

Таны блог хуудсанд нэмэх хамгийн сүүлийн бүрэлдэхүүн хэсэг бол **contact section** юм.

**Main элементийн доор** нэг **footer элемент** нэмнэ үү.

## Step 15 Passed
Inside the footer element, add a section element with an id set to contact.

Inside the section element, add an h2 element with the text of Contact.

## Алхам 16 — Давсан

Contact section дотор та блогийн зохиогчийн **холбоо барих мэдээллийг** харуулах хэрэгтэй. Үүний тулд **address элемент** ашиглана.

**Address элемент** нь хүн эсвэл байгууллагын холбоо барих мэдээллийг илэрхийлэхэд ашиглагддаг.

Доорх нь бодит хаягийг харуулахад address элементийг ашигласан жишээ юм. Энд **br элемент** нь текстийн хооронд мөр таслах (line break) зорилгоор ашиглагдсан байна.

Жишээ код

```html
<address>
  1234 Make Believe Lane <br />
  Pretend City, USA
</address>
```

**H2 элементийн доор** нэг **address элемент** нэмнэ үү.

## Step 17Passed
For this step, you will need to add the phone number and email address for the blog author.

Inside the address element, add a paragraph element with the text of Phone: 555-555-5555.

Below that paragraph element, add another paragraph element with the text of Email: fake@email.com.

## Алхам 18 — Давсан

Хэрэглэгчийн туршлагыг сайжруулахын тулд утасны дугаарыг **дарж залгах боломжтой** болгож өгнө.

Доорх нь утасны дугаарыг дарж болдог (clickable) болгох жишээ юм:

Жишээ код

```html
<a href="tel:2345678912">234-567-8912</a>
```

**555-555-5555** гэсэн текстийг **anchor элементээр (a элемент)** хүрээлж, **tel:** ашиглан дарж залгах боломжтой утасны дугаар болгоно уу.

## Алхам 19 — Давсан

Үүнтэй адил хэрэглэгчид имэйл хаяг дээр дарж, өөрсдийн **анхдагч имэйл клиентээс** шууд имэйл илгээх боломжтой байх ёстой.

Имэйл хаягийг дарж болдог болгох жишээг доор үзүүлэв:

Жишээ код

```html
<a href="mailto:contact@company.com">contact@company.com</a>
```

Эцсийн энэ алхамд **[fake@email.com](mailto:fake@email.com)** гэсэн текстийг **anchor элементээр (a элемент)** хүрээлж, **mailto:** ашиглан дарж болдог имэйл хаяг болгоно уу.

Ингэснээр таны блог хуудас бүрэн дууслаа.

