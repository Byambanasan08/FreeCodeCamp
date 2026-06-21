**lang болон data-lang Attribute-тэй элементүүдийг Attribute Selector ашиглан хэрхэн сонгох вэ?**

Олон хэлтэй вэб сайт бүтээх эсвэл custom data attribute-уудтай ажиллах үед элементүүдийг тухайн доторх хэл эсвэл тодорхой data утгад нь үндэслэн style хийх шаардлага гардаг.

**lang** болон **data-lang** attribute-ууд ийм зорилгоор түгээмэл ашиглагддаг бөгөөд CSS дахь **attribute selector** нь эдгээр attribute дээр үндэслэн style хэрэглэх боломж олгодог.

**lang attribute** нь HTML-д элемент доторх контентийн хэлийг заахад ашиглагддаг. Олон хэлтэй вэб сайт дээр тухайн текст ямар хэл дээр бичигдсэнээс хамааран өөр өөр style хэрэглэх шаардлага гарч болно.

Доорх нь тодорхой **lang attribute**-тэй элементүүдийг сонгох жишээ юм:

```html
<link rel="stylesheet" href="styles.css">
<p lang="en">This is an English paragraph.</p>
<p lang="fr">Ceci est un paragraphe en français.</p>
```

```css
p[lang="en"] {
  font-style: italic;
}
```

Энэ CSS дүрэм нь **lang attribute нь English (en)** гэж тохируулагдсан бүх paragraph элементүүдэд italic style хэрэглэнэ. Энэ нь олон хэлтэй документ дотор English текстийг онцлоход ашигтай байж болно.

Үүнтэй адил **data-lang attribute**-тэй элементүүдийг attribute selector ашиглан сонгож болно.

**data-lang** зэрэг custom data attribute-ууд нь элемент дотор нэмэлт мэдээлэл хадгалахад ашиглагддаг. Жишээлбэл тухайн текстийн хэсэг ямар хэл дээр байгааг заахад ашиглаж болно.

Доорх нь **data-lang attribute** дээр үндэслэн CSS ашиглан элементүүдийг style хийх жишээ юм:

```html
<link rel="stylesheet" href="styles.css">
<p data-lang="fr">Ceci est un paragraphe en français.</p>
<p data-lang="en">This is a paragraph in English.</p>
```

```css
p[data-lang="fr"] {
  color: blue;
}
```

Энд **data-lang attribute нь French (fr)** гэж тохируулагдсан бүх **p** элементүүдийн текстийн өнгө **blue** болно. Ингэснээр data-lang attribute дотор хадгалагдсан хэлний мэдээлэл дээр үндэслэн контентийн хэсгүүдийг хурдан таньж, style хийх боломжтой.

Ийм төрлийн **attribute selector**-ууд нь HTML дотор агуулагдсан metadata дээр үндэслэн нөхцөлт styling хийх боломж олгодог бөгөөд ингэснээр веб хуудсуудыг илүү динамик болон контекстэд нийцсэн байдлаар зохион байгуулах боломжтой болдог.
