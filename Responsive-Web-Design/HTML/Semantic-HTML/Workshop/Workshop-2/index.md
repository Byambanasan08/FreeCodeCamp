## Алхам 1

Энэ workshop-д та семантик HTML-тэй ажиллах дадлага хийж, хөгжүүлэгчийн ажилд ороход хэрэгтэй Quincy Larson-ы зарим зөвлөгөөг агуулсан вэб хуудас бүтээнэ. HTML-ийн үндсэн boilerplate код аль хэдийн танд бэлдэгдсэн байгаа.

Эхлээд **Quincy's Tips for Getting a Developer Job** гэсэн тексттэй `h1` элемент үүсгээрэй.

## Step 2
Now, create a paragraph element below the h1 element. Inside this paragraph add the text Learning to code is hard, but as Quincy Larson says, You can become a developer.

## Алхам 3

Өмнөх хичээл дээр та `q` элемент нь иш татсан текстийг эргэн тойрны агуулгаас ялгаж харагдуулахад ашиглагддгийг сурсан.

Дараах нь жишээ юм:

**Жишээ код**

```html
<p>
  Nancy said, <q>Learning is fun!</q>
</p>
```

Орчин үеийн ихэнх хөтчүүд `q` элемент ашиглах үед inline quote-ийн эргэн тойронд хашилтыг автоматаар нэмдэг.

Paragraph-ийн доторх **You can become a developer.** гэсэн текстыг inline quotation элементээр ороож, paragraph-ийн бусад хэсгийг өөрчлөлгүй үлдээгээрэй.

## Алхам 4

Хэрэв ишлэлийн эх сурвалж нь вэбсайт бол, `cite` attribute ашиглан иш татаж болно. Энэ attribute-ийн утга нь хүчинтэй URL байх ёстой. `cite` attribute нь block quote-ийн харагдах байдалд нөлөөлөхгүй ч, screen reader болон search engine-д ишлэлийн талаар илүү их мэдээлэл өгөхөд маш хэрэгтэй.

Дараах нь `cite` attribute-тэй inline quotation элементын жишээ юм:

**Жишээ код**

```html
<p>
  Nancy said,
  <q cite="https://example.com">Learning is fun!</q>
</p>
```

Inline quotation элементэд дараах URL-ийг ашиглан `cite` attribute нэмээрэй:

```
https://www.freecodecamp.org/news/learn-to-code-book/
```

## Step 5
Below the paragraph element, add a main element and nest three section elements inside it.

## Step 6
Inside the first section element, add an h2 element with the text Envisioning Success.

## Алхам 7

`h2` элементын доор та Quincy-гийн өөр нэг ишлэлийг нэмнэ. Энэ удаад ишлэл нь том paragraph-ийн нэг хэсэг биш, харин бүхэлдээ нэг ишлэл бүхий paragraph байна. Ийм төрлийн иш татсан текстийг ялгаж харуулахын тулд **block quotation элемент (`blockquote`)** ашиглах хэрэгтэй. Хөтөч дээр харахад текст нь бага зэрэг баруун тийш догол мөртэй харагдана.

Дараах нь иш татсан тексттэй block quotation элементын жишээ юм:

**Жишээ код**

```html
<blockquote>
  The first thing you should consider about education is this is an economic decision.
</blockquote>
```

Одоо, **эхний section** дотор `h2` элементын доор дараах текстийг агуулсан `blockquote` элемент нэмээрэй:

**Can you imagine what it would be like to be a successful developer? To have built software systems that people rely upon?**

## Step 8
Exactly like the inline quotation element, you can also add a cite attribute to a block quotation element.

Here is an example of a block quotation element with a cite attribute:

Example Code
<blockquote cite="https://www.freecodecamp.org/news/is-college-worth-it/">
  The first thing you should consider about education is this is an economic decision.
</blockquote>
Now, add a cite attribute to the block quotation element with the URL https://www.freecodecamp.org/news/learn-to-code-book/.

## Алхам 9

Block quotation элементын доор дараах тексттэй `p` элемент нэмээрэй:

```
&mdash;Quincy Larson, How to Learn to Code and Get a Developer Job [Full Book].
```

`&mdash;` нь **em dash (—)**-ийг илэрхийлдэг HTML entity юм.

## Алхам 10

Одоог хүртэл та ишлэлийн эх сурвалжийг заахын тулд `cite` attribute ашиглаж ирсэн. Гэхдээ энэ attribute нь эх сурвалжийг хэрэглэгчид шууд харагдах байдлаар харуулдаггүй.

Хэрэв та эх сурвалжийг **харагдахуйц байдлаар** харуулахыг хүсвэл, block quotation элементын гадна `cite` гэсэн citation элемент нэмж болно. Citation элемент (`cite`) нь ном, нийтлэл, дуу, кино, вэбсайт, эсвэл судалгааны өгүүлэл зэрэг иш татагдсан бүтээлийн **гарчгийг тэмдэглэхэд** ашиглагддаг HTML элемент юм.

Дараах нь жишээ юм:

**Жишээ код**

```html
<div>
  <blockquote cite="https://www.freecodecamp.org/news/is-college-worth-it/">
    The first thing you should consider about education is this is an economic decision.
  </blockquote>
  <p>—Quincy Larson, <cite>Is College Still Worth it? Tips from my 20 Years in Adult Education</cite></p>
</div>
```

Block quotation элементын доорх `p` элементын доторх
**How to Learn to Code and Get a Developer Job [Full Book]**
гэсэн текстыг `cite` элементээр ороогоорой.

## Step 11
Inside the second section element, nest an h2 element with the text Importance of Networking.

Below this heading, add a block quotation element with a cite attribute with the value https://www.freecodecamp.org/news/learn-to-code-book/.

## Алхам 12

Та иш татсан текстыг эхний `section` элемент дээр хийсэн шигээ block quotation элемент дотор шууд бичиж болно. Эсвэл нэг эсвэл хэд хэдэн paragraph (`p`) элементээр ороож бичиж ч бас болно. Текст олон догол мөртэй боловч тэдгээрийг нэг block quotation элемент дотор хадгалахыг хүссэн үед энэ нь маш хэрэгтэй.

Дараах нь хоёр paragraph-тай жишээ юм:

**Жишээ код**

```html
<blockquote cite="https://www.freecodecamp.org/news/is-college-worth-it/">
  <p>So many people ask me each week: is college still worth it? In this 1-hour video I answer this question and other commonly asked questions about university.</p>
  <p>I've been in adult education for two decades at this point, and even though I'm not a labor market economist, I do feel confident enough to answer these questions.</p>
</blockquote>
```

**Хоёр дахь section** дотор, аль хэдийн байгаа block quotation элементын дотор дараах текстүүдийг **дарааллын дагуу** агуулсан **дөрвөн `p` элемент** нэмээрэй:

* So much of getting a job is who you know.
* It's OK to be an introvert, but you do need to push your boundaries.
* Create GitHub, Twitter, LinkedIn, and Discord accounts.
* Go to tech meetups and conferences. Travel if you have to.


## Step 13
In the third and last section element, you are going to create the same HTML structure as you did in the preceding section.

First, inside the last section, add an h2 element with the text Importance of Building a Reputation.

Then, below the h2 element, add a block quotation element with a cite attribute set to https://www.freecodecamp.org/news/learn-to-code-book/.

Lastly, nest three paragraph elements inside the block quotation element with the following texts, in order:

Share short video demos of your projects.
Keep applying to speak at bigger and bigger conferences.
Hang out at hackerspaces and help people who are even newer to coding than you.
Congratulations! With this you have finished this workshop.