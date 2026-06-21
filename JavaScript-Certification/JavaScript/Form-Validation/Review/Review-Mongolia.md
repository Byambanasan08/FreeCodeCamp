# JavaScript ашиглан Form Validation хийх тойм

**1. JavaScript ашиглан Form Validate хийх**

**1.1 Constraint Validation API:** textarea болон input зэрэг зарим HTML element-үүд constraint validation API-г ил гаргадаг (expose). Энэ API нь тухайн element дээр хэрэглэгчийн оруулсан утга таны бичсэн HTML түвшний validation-уудыг, жишээ нь minimum length эсвэл pattern matching-ийг, давж байгаа эсэхийг шалгах боломж олгодог.

**1.2 checkValidity() method:** Энэ method нь тухайн element өөрийн attribute-ууд дээр үндэслэсэн бүх HTML validation-ийг давсан бол true, харин давж чадаагүй бол false буцаана.

```html
<form>
  <label>
    Email:
    <input
      id="email"
      type="email"
      required
      pattern=".+\.com$"
      placeholder="example@site.com"
    />
  </label>
</form>

<script>
  const input = document.getElementById("email");

  input.addEventListener("input", (e) => {
    if (!e.target.checkValidity()) {
      e.target.setCustomValidity("You must use a .com email.");
    } else {
      e.target.setCustomValidity("");
    }
  });
</script>
```

**1.3 reportValidity() Method:** Энэ method нь browser-д тухайн input invalid байна гэдгийг мэдэгддэг.

```html
<form>
  <label>
    Email:
    <input
      id="email2"
      type="email"
      required
      pattern=".+\.com$"
      placeholder="example@site.com"
    />
  </label>
</form>

<script>
  const input = document.getElementById("email2");

  input.addEventListener("input", (e) => {
    if (!e.target.checkValidity()) {
      e.target.reportValidity();
    }
  });
</script>
```

**1.4 validity Property:** Энэ property нь form control-уудын (<input>, <select> гэх мэт) validity state-ийг авах эсвэл тохируулахад ашиглагддаг бөгөөд хэрэглэгчийн оруулсан утга тухайн element-д өгөгдсөн constraint-уудыг хангаж байгаа эсэх талаар мэдээлэл өгдөг. Жишээ нь required field, pattern constraint, maximum length гэх мэт.

```html
<input id="age" type="number" min="18" placeholder="Enter age (18+)" />

<script>
  const input = document.getElementById("age");

  input.addEventListener("input", (e) => {
    console.log(e.target.validity);
  });
</script>
```

**1.5 patternMismatch Property:** Энэ нь утга нь өгөгдсөн regular expression pattern-т таарахгүй бол true болно.

---

**2. preventDefault() Method**

**2.1 Тодорхойлолт (Definition):** DOM дотор trigger болж буй event бүр өөрийн гэсэн default behavior-тэй байдаг. Жишээ нь, checkbox дээрх click event нь анхдагчаар тухайн checkbox-ийн төлөвийг сольдог. Focus хийсэн button дээр space bar дарахад button идэвхждэг. Эдгээр Event object дээрх preventDefault() method нь тэр default behavior-ийг зогсоодог.

```html
<form id="form">
  <input type="text" placeholder="Try to submit" />
  <button type="submit">Submit</button>
</form>

<p id="status"></p>

<script>
  const form = document.getElementById("form");
  const status = document.getElementById("status");

  form.addEventListener("submit", (event) => {
    event.preventDefault();
    status.textContent = "Form submission prevented.";
  });
</script>
```

**3. Form Submit хийх (Submitting Forms)**

**3.1 Тодорхойлолт (Definition):** Form-ийг submit хийх гурван арга байдаг. Эхнийх нь form дотор type="submit" гэсэн attribute-тэй button дээр хэрэглэгч дарах үед. Хоёр дахь нь form доторх editable input field дээр хэрэглэгч Enter товч дарах үед. Гурав дахь нь JavaScript ашиглан form element-ийн requestSubmit() эсвэл submit() method-ийг дуудах үед.

**3.2 action Attribute:** action attribute нь URL эсвэл тухайн domain доторх relative path агуулдаг байх ёстой. Энэ утга нь form өгөгдлийг хаашаа илгээхийг тодорхойлдог. Хэрвээ action attribute тохируулаагүй бол form өгөгдлийг одоогийн page-ийн URL рүү илгээнэ.

```html
<form action="https://freecodecamp.org" method="GET">
  <input type="number" name="number" placeholder="Enter a number" />
  <button type="submit">Submit</button>
</form>
```

**3.3 method Attribute:** Энэ attribute нь GET эсвэл POST гэх мэт стандарт HTTP method авдаг бөгөөд action URL руу request илгээхдээ тэр method-ийг ашигладаг. Хэрвээ method тохируулаагүй бол form анхдагчаар GET request ашиглана. Form доторх өгөгдөл нь name=value хос хэлбэрээр URL encode хийгдэж, action URL дээр query parameter хэлбэрээр нэмэгдэнэ.

```html
<form action="/data" method="POST">
  <input type="number" id="input" placeholder="Enter a number" name="number" />
  <button type="submit">Submit</button>
</form>
```

**3.4 enctype Attribute:** Form элемент нь enctype attribute-ийг дэмждэг бөгөөд энэ нь өгөгдлийг ямар encoding-оор илгээхийг тодорхойлдог. Энэ attribute гурван утга авна:
application/x-www-form-urlencoded (default, өгөгдлийг URL-encoded хэлбэрээр илгээнэ),
text/plain (өгөгдлийг энгийн текст хэлбэрээр name=value хосоор, мөрөөр тусгаарлаж илгээнэ),
multipart/form-data (файл upload хийх form-д зориулагдсан).
