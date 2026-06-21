**Event Bubbling болон Event Delegation хэрхэн ажилладаг вэ?**

**Event bubbling** (эсвэл propagation) гэдэг нь event үүсэх үед тухайн event нь эцэг (parent) элементүүд рүү “дээш хөвөх” процессыг хэлнэ.

Жишээ:

```html id="3f1a2k"
<p>
  <span>Click me~!</span>
</p>
```

Энд **p** элемент нь **span**-ийн parent юм.

Та span дээр дарахад span нь click event-ийн target болно. Гэхдээ энэ event нь мөн parent болох p элемент рүү дамждаг.

Жишээ код:

```javascript id="k9d8sl"
const p = document.querySelector("p");

p.addEventListener("click", (event) => {
  console.log(event.target);
});
```

Span дээр дарахад console дээр дараах гарна:

```
<span>Click me~!</span>
```

Энэ нь event parent руу дамжиж, p элемент түүнийг хүлээн авч байгааг харуулж байна.

---

Илүү тодорхой болгохын тулд:

```javascript id="p2m8q1"
const p = document.querySelector("p");
const span = document.querySelector("span");

p.addEventListener("click", (event) => {
  console.log("P listener:");
  console.log(event.target);
});

span.addEventListener("click", (event) => {
  console.log("Span listener:");
  console.log(event.target);
});
```

Span дээр дарахад:

```
"Span listener:"
<span>Click me~!</span>
"P listener:"
<span>Click me~!</span>
```

Эндээс event эхлээд span дээр, дараа нь p рүү дамжиж байгааг харж болно.

---

Хэрвээ event-ийн дамжих процессыг зогсоохыг хүсвэл **stopPropagation()** ашиглана:

```javascript id="v7x4n2"
span.addEventListener("click", (event) => {
  console.log("Span listener:");
  console.log(event.target);
  event.stopPropagation();
});
```

Одоо span дээр дарахад зөвхөн:

```
"Span listener:"
<span>Click me~!</span>
```

p элемент дээрх listener ажиллахгүй.

---

**Event delegation** гэдэг нь event bubbling-ийг ашиглан event-ийг parent элемент дээр барьж, child элементүүдийн үйлдлийг тэндээс удирдах арга юм.

Жишээ:

```javascript id="z1q9w3"
const p = document.querySelector("p");

p.addEventListener("click", (event) => {
  event.target.style.color = "red";
});
```

HTML:

```html id="x5c2v8"
<p>
  <span>Click me~!</span>
  <span>Click me~!</span>
  <span>Click me~!</span>
  <span>Click me~!</span>
</p>
```

Одоо аль ч span дээр дарсан тухайн текст улаан болно.

---

**Яагаад event delegation хэрэгтэй вэ?**

* Олон элемент дээр тус тусад нь listener нэмэх шаардлагагүй
* Шинээр үүссэн (dynamic) элементүүд автоматаар ажиллана
* Код илүү цэвэр, гүйцэтгэл сайжирна

---

**Дүгнэлт:**

* **Event bubbling** → event child-оос parent руу дамжина
* **stopPropagation()** → энэ дамжих процессыг зогсооно
* **Event delegation** → parent дээр listener байрлуулж child-уудыг удирдана

Эдгээр ойлголтууд нь ялангуяа олон nested элементүүдтэй (жишээ нь table) үед маш чухал байдаг.
