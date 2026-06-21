# Зургуудын эргэн тойронд Border нэмэх ямар аргууд байдаг вэ?

CSS-д зурагны эргэн тойронд border нэмэх хэд хэдэн арга байдаг бөгөөд эдгээр нь өөр өөр загварын сонголтууд болон хяналтын түвшинг санал болгодог.

Хамгийн түгээмэл бөгөөд уян хатан зарим аргуудыг авч үзье.

Зурагт border нэмэх хамгийн энгийн арга бол **border property** ашиглах явдал юм. Энэ property нь **shorthand** хэлбэр бөгөөд border-ийн **өргөн (width), стиль (style), өнгө (color)**-ийг нэг дор тохируулах боломжийг олгодог.

```html id="19i6s0"
<link rel="stylesheet" href="styles.css">

<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute cat lying on its back.">
```

```css id="i7fsvv"
img {
  border: 2px solid red;
}
```

Энэ CSS дүрэм нь бүх **img** элементүүдийн эргэн тойронд **2 пиксел өргөнтэй, тасралтгүй улаан border** нэмнэ. Та border-ийн **өргөн**, **стиль** (жишээ нь dashed, dotted, double), мөн **өнгө**-ийг өөрийн дизайны хэрэгцээнд тохируулан өөрчилж болно.

Хэрэв border-ийн **тал бүрийг тусад нь илүү нарийн хянах** шаардлагатай бол та тал бүрт зориулсан border property-үүдийг ашиглаж болно.

```html id="qad8r7"
<link rel="stylesheet" href="styles.css">

<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute cat lying on its back.">
```

```css id="ezf7me"
img {
  border-top: 10px solid red;
  border-right: 10px dashed green;
  border-bottom: 10px dotted blue;
  border-left: 10px double purple;
}
```

Энэ нь зурагны **тал бүрд өөр өөр border стиль** үүсгэх боломжийг олгодог.

Border эффект үүсгэх өөр нэг арга бол **outline property** ашиглах юм. Outline нь border-тэй төстэй боловч **элементийн хэмжээ болон layout-д нөлөөлдөггүй**.

```html id="3elajq"
<link rel="stylesheet" href="styles.css">

<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute cate lying on its back.">
```

```css id="gtzbc9"
img {
  outline: 3px solid gold;
}
```

Энэ нь зурагны эргэн тойронд **алтлаг outline** үүсгэх бөгөөд зурагны **хэмжээ болон байрлал өөрчлөгдөхгүй**.

Хэрэв та border дээр **дугуй булан (rounded corners)** үүсгэхийг хүсвэл **border-radius property**-г border-тэй хамт ашиглаж болно.

```html id="kz4z31"
<link rel="stylesheet" href="styles.css">

<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/relaxing-cat.jpg" alt="A cute cate lying on its back.">
```

```css id="4r5g49"
img {
  border: 2px solid black;
  border-radius: 10px;
}
```

Эдгээр аргуудыг **хамтад нь ашиглаж**, мөн **өөрийн хэрэгцээнд тохируулан өөрчилж** өвөрмөц border эффектүүд үүсгэж болно. Аль аргыг ашиглах нь таны дизайны шаардлага болон хэрэгтэй нарийвчлалын түвшнээс хамаарна.
