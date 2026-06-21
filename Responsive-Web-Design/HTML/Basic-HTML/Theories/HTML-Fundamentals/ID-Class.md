ID болон Class гэж юу вэ, хэзээ ашиглах ёстой вэ?

**id attribute** нь HTML элементийн хувьд **давтагдашгүй (unique) тодорхойлогч** нэмдэг.

Доорх нь **id="title"** утгатай h1 элементийн жишээ:

```
<h1 id="title">Movie Review Page</h1>
```

Одоо энэ h1 элементийн доор **id="subtitle"** утгатай **h2 элемент** нэмнэ.
h2 доторх текстийг та хүссэнээрээ бичиж болно; preview цонхонд тэр даруй харагдана. (Interactive editor идэвхтэй байх хэрэгтэй.)

---

### ID-г JavaScript болон CSS дотор ашиглах

Та `title` гэсэн id-г CSS болон JavaScript дотор ашиглан тухайн элемент рүү шууд хандаж болно.
Доорх нь CSS ашиглан `title` id-тэй элементэд **улаан өнгө** өгсөн жишээ:

```
#title {
  color: red;
}
```

Энд `#` тэмдэг нь CSS-д **id сонгох** (id selector) гэдгийг илтгэдэг.

> *Хэрэв interactive editor-ийг идэвхжүүлээд styles.css таб руу орвол `color: red;`-ийг `color: blue;` болгож өөрчилж болно.*

Доорх нь тухайн жишээний бүтэн HTML код:

```
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Review page Example</title>
    <link rel="stylesheet" href="./styles.css" />
  </head>
  <body>
    <h1 id="title">Movie Review Page</h1>
  </body>
</html>
```

---

### ID утгуудын дүрэм

* **id утга давтагдах ёсгүй** (unique байх ёстой).
* **id утгад space ашиглаж болохгүй**.

Доорх нь буруу жишээ:

```
<h1 id="main heading">Main heading</h1>
```

Браузер `main heading` гэдгийг бүхэлд нь id гэж уншина. Энэ нь CSS болон JavaScript ашиглах үед асуудал үүсгэнэ.

ID-д зөвшөөрөгдөх тэмдэгтүүд:

* үсэг (letters)
* цифр (digits)
* underscores (_)
* dashes (-)

---

## Class attribute — id-с ялгаатай нь

**class attribute** нь unique байх шаардлагагүй бөгөөд **нэг элементэд олон class** байж болно. Мөн class утгууд **space**-ээр тусгаарлагддаг.

Доорх нь `class="box"` утгатай div элемент:

```
<div class="box"></div>
```

Нэг элементэд олон class өгөх жишээ:

```
<div class="box red-box"></div>
```

Олон элементэд олон class ашигласан жишээ:

```
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Colored boxes example</title>
    <link rel="stylesheet" href="./styles.css" />
  </head>
  <body>
    <div class="box red-box"></div>
    <div class="box blue-box"></div>
    <div class="box red-box"></div>
    <div class="box blue-box"></div>
  </body>
</html>
```

Холбогдох CSS:

```
.box {
  width: 100px;
  height: 100px;
}

.red-box {
  background-color: red;
}

.blue-box {
  background-color: blue;
}
```

> Хэрэв interactive editor-ийг идэвхжүүлээд styles.css рүү орвол
> `background-color: red;`–г `background-color: black;` болгон өөрчлөх боломжтой.

---

## Дүгнэлт: ID-г хэзээ, Class-ийг хэзээ ашиглах вэ?

* **Class** → олон элементэд нэг ижил стиль (CSS rule) хэрэглэх үед хамгийн тохиромжтой.
* **ID** → зөвхөн *нэг тодорхой элемент* рүү хандах шаардлагатай үед ашиглана. Учир нь id нь давтагдашгүй байх ёстой.

---
