## Step 1

Энэ workshop-д та **div элементүүд**, **class**, **ID**-уудыг ашиглан контент зохион байгуулах дасгал хийж, өөр өөр номнуудын мэдээллийг харуулах **book card**-ууд бүхий bookstore хуудас бүтээнэ.

Эхлэхийн тулд дараах тексттэй **h1 элемент** нэмнэ:

**XYZ Bookstore**

---

## Step 2
Below the h1 element, add a p element with this text: Browse our collection of amazing books!.

---

## Step 3

**div элемент** нь бусад HTML элементүүдийг нэг дор бүлэглэх **container** хэлбэрээр ашиглагддаг. Та div-ийг голчлон **нэг ижил CSS стилүүдийг хуваалцах элементүүдийг** нэгтгэхдээ ашиглана.

Одоо p элементийн доор нэг **div элемент** нэмнэ.
Энэ div нь таны **book card**-уудын container болно.

---

## Step 4

class attribute нь HTML элементүүдийг стайл хийх үед ялгаж таних зорилгоор ашиглагддаг.
id attribute-ээс ялгаатай нь class-ийн нэр заавал unique байх шаардлагагүй — олон элемент ижил class ашиглаж болно.

Жишээ:

<p class="example">example paragraph</p>


Одоо таны div элементэд class attribute нэмж, утгыг нь:

card-container

гэж тохируулна.

---
## Step 5

Та **div элемент** дотор олон элементийн байршуулж, хоорондоо холбоотой контентыг бүлэглэж болно.
**card-container** class-тэй элемент дотор шинэ **div элемент** үүсгэнэ.
Энэ div нь таны **эхний book card** байх болно.

Дараа нь энэ шинэ div элементэд **class attribute** нэмж, утгыг нь:

**card**

гэж тохируулна.

---

## Step 6

**id attribute** нь HTML элементэд **давтагдашгүй (unique)** танигч нэмдэг.
Нэг хуудсан дээр **id утга давтагдаж болохгүй** бөгөөд **зөвхөн нэг удаа** ашиглагдана.

id-ийн утга нь **зай (space) агуулахгүй** байх ёстой бөгөөд зөвхөн:

* үсэг (letters)
* тоо (digits)
* доогуур зураас (underscore `_`)
* зураас (dash `-`)

зэрэг тэмдэгтүүдээс бүрдэнэ.

Жишээ:

```
<p id="para">example paragraph</p>
```

Одоо **class="card"** бүхий элементэд **id attribute** нэмж, утгыг нь:

**sally-adventure-book**

гэж тохируул.

---
## Step 7
Inside the first element having a class of card, add an h2 element with the text Sally's SciFi Adventure.

---
## Step 8
Below the h2 element in the first element having a class of card, add a p element with the following text:

Example Code
This is an epic story of Sally and her dog Rex as they navigate through other worlds.
---

## Step 9

button элемент нь вэб хуудсан дээр дарж болохуйц интерактив товч үүсгэдэг.
Хэрэглэгч энэ товчийг дарахад тодорхой үйлдэл хийгддэг.

Одоо card class-тэй элемент дотор:

button элемент нэмнэ

button-д class="btn" тохируулна

товчны текстийг Buy Now гэж бичнэ

---


## Step 10

Одоо хоёр дахь book card-ыг үүсгэнэ.
**class="card"** гэсэн class атрибуттай өөр нэг div элемент нэм.
Ингэснээр нэг ижил class нэрийг олон элементэд ашиглан адилхан стилийг хэрэглэж болохыг анзаарч хараарай.

---

## Step 11
Add an id attribute to your second element having a class of card and set its value to dave-cooking-book. Remember that each id must be unique.

---

## Step 12
Inside the second element having a class of card, add an h2 element with the text Dave's Cooking Adventure.

---

## Step 13
Below the h2 element in the second card, add a p element with this text:

Example Code
This is the story of Dave as he learns to cook everything from pancakes to pasta, one recipe at a time.

---

## Step 14 — Орчуулга

Хоёр дахь **card** дотор `button` элемент нэмээд, түүнд `class="btn"` гэдэг class оноож, текстийг нь **Buy Now** гэж бичнэ.

Одоо хоёр `button` элемент хоёулаа ижил class ашиглаж байгаа учир та тэдгээрийг нэгэн жигд хэв маягаар (consistent styling) загварчилж чадна.

---
## Step 15
Below the element with the class card-container, add a new p element with this text:

Example Code
Review your selections and continue to checkout.
Below the p element, create a div element with the class attribute set to btn-container. This container will group your navigation button elements.

---

## Step 16
Inside the element with a class of btn-container, add two button elements:

First button:

Id: view-cart-btn
Class: btn
Text: View Cart
Second button:

Id: checkout-btn
Class: btn
Text: Checkout
Congratulations! You have successfully built the structure of a bookstore page using divs, classes, and ids to organize your content.