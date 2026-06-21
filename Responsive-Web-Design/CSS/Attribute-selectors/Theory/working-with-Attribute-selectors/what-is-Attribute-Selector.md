**Attribute Selector гэж юу вэ, мөн href болон title attribute-тэй link-үүдийг хэрхэн сонгож болох вэ?**

CSS дахь **attribute selector** нь HTML элементүүдийг тэдний attribute дээр үндэслэн сонгох боломж олгодог хүчирхэг хэрэгсэл юм. Энэ нь тодорхой attribute-тэй элементүүдэд, эсвэл тухайн attribute-ийн тодорхой утгатай элементүүдэд style хэрэгжүүлэх боломжийг олгодог.

Энэ нь ялангуяа элементүүдийг динамик байдлаар style хийх үед, эсвэл class нэр дангаараа хангалттай нарийвчлал өгөхгүй үед маш хэрэгтэй байдаг.

Жишээлбэл, **href attribute**-тэй бүх link-үүдийг сонгохын тулд attribute selector ашиглаж болно. Энэ нь хуудсан дээрх бүх link-үүдэд ижил style хэрэглэхэд тохиромжтой.

Доорх нь **href attribute**-тэй link-үүдийг сонгох жишээ юм:

```html
<link rel="stylesheet" href="styles.css">
<a href="https://example.com">Example link with an href attribute</a>
<a>Example link without an href attribute</a>
```

```css
a {
  display: block;
}

a[href] {
  color: blue;
  text-decoration: underline;
}
```

Энэ CSS дүрэм нь **href attribute** агуулсан бүх link-д цэнхэр өнгө болон underline хэрэгжүүлнэ. Ингэснээр бүх clickable link-үүд ижил style-тэй болно.

Гэхдээ attribute selector-ууд илүү нарийвчлалтай байж чадна. Жишээлбэл, зөвхөн **title attribute**-тэй link-үүдийг сонгож болно. **title attribute** нь link-ийн талаар нэмэлт мэдээлэл өгдөг тул ийм link-үүдийг өөрөөр style хийхийг хүсэж болно.

```html
<link rel="stylesheet" href="styles.css">
<a href="https://example.com" title="Example link with a title attribute">Example link with a title attribute</a>
<a>Example link without a title or href attribute</a>
```

```css
a {
  display: block;
}

a[title] {
  font-weight: bold;
  text-decoration: none;
}
```

Энэ дүрэм нь **title attribute**-тэй бүх link-д bold текст өгч underline-ийг арилгана. Энэ нь тухайн link-үүдийг бусдаас ялгахад тусалдаг.

Мөн attribute selector-уудыг **хослуулж** ашиглаж болно. Жишээлбэл, **href** болон **title** attribute хоёуланг нь агуулсан link-үүдийг сонгох:

```html
<link rel="stylesheet" href="styles.css">
<a href="https://example.com" title="Example link with a title attribute">Example link with a title attribute</a>
<a>Example link without a title or href attribute</a>
```

```css
a {
  display: block;
}

a[href][title] {
  display: block;
  color: green;
}
```

Энд зөвхөн **href** болон **title** attribute хоёуланг нь агуулсан link-үүд ногоон өнгөтэй болно.

Attribute selector-ийн өөр нэг жишээ нь attribute доторх **space-ээр тусгаарлагдсан утгуудын жагсаалтаас нэг утгыг сонгох** юм.

Жишээлбэл олон class-тэй anchor элемент:

```html
<a href="https://example.com" class="btn primary large">Visit Example Site</a>
```

Тухайн элементийг дараах selector ашиглан сонгож болно:

```html
<link rel="stylesheet" href="styles.css">
<a href="https://example.com" class="btn primary large">Visit Example Site</a>
```

```css
a[class~="primary"] {
  color: red;
  font-weight: bold;
}
```

Энд **[attr~=value]** syntax нь **class attribute дотор “primary” гэсэн үг агуулсан бүх anchor элементүүдийг** сонгоно.

Хэрэв attribute-ийн утга **тодорхой утгаар эхэлдэг** элементүүдийг сонгох шаардлагатай бол **[attr^=value]** syntax ашиглана.

```html
<link rel="stylesheet" href="styles.css">
<a href="https://example.com" class="btn primary large">Visit Example Site</a>
```

```css
a[href^="https://"] {
  color: green;
  text-decoration: underline;
}
```

Энэ selector нь **href утга нь "https://" гэж эхэлдэг бүх anchor элементүүдийг** сонгоно.

Хэрэв attribute-ийн утга **тодорхой утгаар төгсдөг** элементүүдийг сонгох бол **[attr$=value]** syntax ашиглана.

```html
<link rel="stylesheet" href="styles.css">
<a href="https://example.com">Visit Example Site</a>
```

```css
a[href$=".com"] {
  color: darkgreen;
  text-decoration: underline dotted;
}
```

Энд **a[href$=".com"]** selector нь **href утга нь ".com"-оор төгссөн бүх anchor элементүүдийг** сонгоно.

Attribute selector-уудыг ашиглах нь веб хуудсын styling-ийг сайжруулахын зэрэгцээ **accessibility**-г сайжруулахад тусалдаг. Ялангуяа link зэрэг интерактив элементүүдийг attribute дээр нь үндэслэн илүү ялгарах байдлаар харагдуулах боломж олгодог.
