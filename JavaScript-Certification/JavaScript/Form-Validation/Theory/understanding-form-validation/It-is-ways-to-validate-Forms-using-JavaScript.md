JavaScript ашиглан form-ийг validate хийх ямар аргууд байдаг вэ?

Өмнөх хичээл дээр та HTML ашиглан хэрэглэгчид form дээрээ ямар утга илгээж болохыг хэрхэн хязгаарлах талаар сурсан. Гэхдээ заримдаа энэ нь хангалтгүй байдаг. Хэрвээ та хэрэглэгчид өөрийн гэсэн error message харуулах гэх мэт илүү төвөгтэй зүйл хийхийг хүсвэл JavaScript ашиглах хэрэгтэй болно.

Зарим HTML element-үүд, жишээлбэл textarea болон input element-үүд нь Constraint Validation API-г ил гаргадаг (expose). Энэ API нь тухайн element дээр хэрэглэгчийн оруулсан утга таны бичсэн HTML түвшний validation-уудыг, жишээлбэл minimum length эсвэл pattern matching-ийг, давж байгаа эсэхийг шалгах боломж олгодог.

Гэхдээ үүнийг бодитоор яаж ашиглах вэ? Жишээ нь, та компанийн ажилтнууд дараах шиг form-оор дамжуулан санал хүсэлт (feedback message) илгээдэг байгаасай гэж хүсэж байна гэж бодъё:

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>Enter your email: </label>
  <input required type="email" />

  <label>Enter your feedback: </label>
  <textarea required placeholder="Your feedback here..."></textarea>

  <button type="submit">Submit Feedback</button>
</form>
```

```css
form {
  max-width: 400px;
  margin: 20px auto;
  display: flex;
  flex-direction: column;
  gap: 12px;
  font-family: Arial, sans-serif;
}

label {
  font-weight: 600;
  margin-bottom: 4px;
  color: #333;
}

input,
textarea {
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  width: 100%;
  box-sizing: border-box;
  transition: border-color 0.2s, box-shadow 0.2s;
}

input:focus,
textarea:focus {
  border-color: #0078d4;
  box-shadow: 0 0 3px rgba(0, 120, 212, 0.5);
  outline: none;
}

textarea {
  resize: vertical;
  min-height: 100px;
}

button[type="submit"] {
  background-color: #0078d4;
  color: #fff;
  border: none;
  padding: 10px 16px;
  font-size: 14px;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.2s;
}

button[type="submit"]:hover {
  background-color: #005ea2;
}
```

Бид email input ашиглаж байгаа бөгөөд энэ нь at (@) тэмдэг байгаа эсэх зэрэг үндсэн шалгалтуудыг хийх built-in validation-той ирдэг.

Гэхдээ хэрэглэгч [example@email.com](mailto:example@email.com) гэх мэт email хаяг оруулбал яах вэ? Энэ нь үндсэн validation-ийг давна, харин бид компанийн email хаягтай хүмүүсийн email-ийг илүү нарийн шалгаж зөвшөөрөхийг хүсэж байна.

Энд бид pattern attribute-ийг ашиглан email хаяг нь компанийн email-ээр төгсөх ёстойг тодорхойлж болно. Шинэчилсэн жишээ дараах байдалтай байна:

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>Enter your email: </label>
  <input required placeholder="username@sampleCompany.com" type="email" pattern=".+@sampleCompany\.com" />

  <label>Enter your feedback: </label>
  <textarea required placeholder="Your feedback here..."></textarea>

  <button type="submit">Submit Feedback</button>
</form>
```

```css
form {
  max-width: 400px;
  margin: 20px auto;
  display: flex;
  flex-direction: column;
  gap: 12px;
  font-family: Arial, sans-serif;
}

label {
  font-weight: 600;
  margin-bottom: 4px;
  color: #333;
}

input,
textarea {
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  width: 100%;
  box-sizing: border-box;
  transition: border-color 0.2s, box-shadow 0.2s;
}

input:focus,
textarea:focus {
  border-color: #0078d4;
  box-shadow: 0 0 3px rgba(0, 120, 212, 0.5);
  outline: none;
}

textarea {
  resize: vertical;
  min-height: 100px;
}

button[type="submit"] {
  background-color: #0078d4;
  color: #fff;
  border: none;
  padding: 10px 16px;
  font-size: 14px;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.2s;
}

button[type="submit"]:hover {
  background-color: #005ea2;
}
```

Одоо та feedback илгээхийг оролдвол “Please match the requested format.” гэсэн message гарч ирнэ.

Хэдийгээр input дээр placeholder текст ашиглан хүсэж буй формат-ыг харуулж байгаа ч, JavaScript ашиглан custom error message нэмэх нь илүү дээр байх болно.

Эхлээд checkValidity() method-ийг харцгаая:

```html
<link rel="stylesheet" href="styles.css" />
<form>
  <label>Enter your email: </label>
  <input required placeholder="username@sampleCompany.com" type="email" pattern=".+@sampleCompany\.com" />

  <label>Enter your feedback: </label>
  <textarea required placeholder="Your feedback here..."></textarea>

  <button type="submit">Submit Feedback</button>
</form>
<script src="index.js"></script>
```

```css
form {
  max-width: 400px;
  margin: 20px auto;
  display: flex;
  flex-direction: column;
  gap: 12px;
  font-family: Arial, sans-serif;
}

label {
  font-weight: 600;
  margin-bottom: 4px;
  color: #333;
}

input,
textarea {
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  width: 100%;
  box-sizing: border-box;
  transition: border-color 0.2s, box-shadow 0.2s;
}

input:focus,
textarea:focus {
  border-color: #0078d4;
  box-shadow: 0 0 3px rgba(0, 120, 212, 0.5);
  outline: none;
}

textarea {
  resize: vertical;
  min-height: 100px;
}

button[type="submit"] {
  background-color: #0078d4;
  color: #fff;
  border: none;
  padding: 10px 16px;
  font-size: 14px;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.2s;
}

button[type="submit"]:hover {
  background-color: #005ea2;
}
```

```js
const input = document.querySelector("input");

input.addEventListener("input", (e) => {
  console.log(e.target.checkValidity())
})
```

Дээрх жишээнд бид DOM-оос input element-ийг авч (query хийж), input event listener нэмсэн байна.

Бид e.target нь event-ийг үүсгэсэн element-ийг заадаг гэдгийг мэднэ. Энэ тохиолдолд энэ нь манай input юм. Харин checkValidity() method гэж юу вэ?

Энэ нь Constraint Validation API-ийн нэг хэсэг юм. checkValidity() method нь тухайн element нь HTML validation (түүний attribute-ууд дээр үндэслэсэн)-ыг бүгдийг нь давсан бол true, харин давж чадаагүй бол false буцаана.

Хэрвээ бид буруу (invalid) input оруулбал console дээр false хэвлэгдэж байгааг харна. Одоо input буруу гэдгийг мэдсэн тул үүнийг хэрэглэгчид мэдэгдье:

```html id="6r2y8k"
<link rel="stylesheet" href="styles.css" />
<form>
  <label>Enter your email: </label>
  <input required placeholder="username@sampleCompany.com" type="email" pattern=".+@sampleCompany\.com" />

  <label>Enter your feedback: </label>
  <textarea required placeholder="Your feedback here..."></textarea>

  <button type="submit">Submit Feedback</button>
</form>
<script src="index.js"></script>
```

```css id="z9p3dh"
form {
  max-width: 400px;
  margin: 20px auto;
  display: flex;
  flex-direction: column;
  gap: 12px;
  font-family: Arial, sans-serif;
}

label {
  font-weight: 600;
  margin-bottom: 4px;
  color: #333;
}

input,
textarea {
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  width: 100%;
  box-sizing: border-box;
  transition: border-color 0.2s, box-shadow 0.2s;
}

input:focus,
textarea:focus {
  border-color: #0078d4;
  box-shadow: 0 0 3px rgba(0, 120, 212, 0.5);
  outline: none;
}

textarea {
  resize: vertical;
  min-height: 100px;
}

button[type="submit"] {
  background-color: #0078d4;
  color: #fff;
  border: none;
  padding: 10px 16px;
  font-size: 14px;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.2s;
}

button[type="submit"]:hover {
  background-color: #005ea2;
}
```

```js id="2kzv8s"
const input = document.querySelector("input");

input.addEventListener("input", (e) => {
  if (!e.target.checkValidity()) {
    e.target.reportValidity();
  }
})
```

Үүний үр дүнд browser-ийн error message болох “Please match the requested format.” гэсэн мэдэгдэл гарч ирнэ.

Энэ нь form-ийг submit хийхийг хүлээхгүйгээр шууд invalid төлөвийг (invalid state) харуулж байна. Гэхдээ одоог хүртэл default message-ийг ашиглаж байна. Учир нь reportValidity method нь зөвхөн browser-д input буруу (invalid) гэдгийг мэдэгддэг. Харин яагаад буруу байгааг хэрхэн харуулахыг browser өөрөө шийддэг. Энэ үед setCustomValidity method хэрэг болдог.

```html id="u7s9w2"
<link rel="stylesheet" href="styles.css" />
<form>
  <label>Enter your email: </label>
  <input required placeholder="username@sampleCompany.com" type="email" pattern=".+@sampleCompany\.com" />

  <label>Enter your feedback: </label>
  <textarea required placeholder="Your feedback here..."></textarea>

  <button type="submit">Submit Feedback</button>
</form>
<script src="index.js"></script>
```

```css id="q2x9nm"
form {
  max-width: 400px;
  margin: 20px auto;
  display: flex;
  flex-direction: column;
  gap: 12px;
  font-family: Arial, sans-serif;
}

label {
  font-weight: 600;
  margin-bottom: 4px;
  color: #333;
}

input,
textarea {
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  width: 100%;
  box-sizing: border-box;
  transition: border-color 0.2s, box-shadow 0.2s;
}

input:focus,
textarea:focus {
  border-color: #0078d4;
  box-shadow: 0 0 3px rgba(0, 120, 212, 0.5);
  outline: none;
}

textarea {
  resize: vertical;
  min-height: 100px;
}

button[type="submit"] {
  background-color: #0078d4;
  color: #fff;
  border: none;
  padding: 10px 16px;
  font-size: 14px;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.2s;
}

button[type="submit"]:hover {
  background-color: #005ea2;
}
```

```js id="t6v1az"
const input = document.querySelector("input");

input.addEventListener("input", (e) => {
  if (!e.target.checkValidity()) {
    e.target.setCustomValidity(
      "You must use a company email address that ends in @sampleCompany.com"
    );
  }
});
```

Энэ method нь custom error message хүлээн авч, хэрэглэгчид харуулдаг. Үүний үр дүнд “You must use a company email address that ends in @sampleCompany.com” гэсэн custom error message гарч ирнэ.

Хэрвээ та validation-ийн өөр өөр төрлүүд болон яагаад тухайн validation амжилтгүй болсон шалтгааныг илүү судлахыг хүсвэл validity property-г дараах байдлаар console дээр хэвлэж болно:

```html id="n8x4pd"
<link rel="stylesheet" href="styles.css" />
<form>
  <label>Enter your email: </label>
  <input required placeholder="username@sampleCompany.com" type="email" pattern=".+@sampleCompany\.com" />

  <label>Enter your feedback: </label>
  <textarea required placeholder="Your feedback here..."></textarea>

  <button type="submit">Submit Feedback</button>
</form>
<script src="index.js"></script>
```

```css id="m2k7zh"
form {
  max-width: 400px;
  margin: 20px auto;
  display: flex;
  flex-direction: column;
  gap: 12px;
  font-family: Arial, sans-serif;
}

label {
  font-weight: 600;
  margin-bottom: 4px;
  color: #333;
}

input,
textarea {
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  width: 100%;
  box-sizing: border-box;
  transition: border-color 0.2s, box-shadow 0.2s;
}

input:focus,
textarea:focus {
  border-color: #0078d4;
  box-shadow: 0 0 3px rgba(0, 120, 212, 0.5);
  outline: none;
}

textarea {
  resize: vertical;
  min-height: 100px;
}

button[type="submit"] {
  background-color: #0078d4;
  color: #fff;
  border: none;
  padding: 10px 16px;
  font-size: 14px;
  border-radius: 4px;
  cursor: pointer;
  transition: background-color 0.2s;
}

button[type="submit"]:hover {
  background-color: #005ea2;
}
```

```js id="q5d8yw"
const input = document.querySelector("input");

input.addEventListener("input", (e) => {
  console.log(e.target.validity);
})
```

validity property нь ValidityState object-ийн instance юм. Browser дээр энэ object дараах байдалтай харагдаж болно:

```
ValidityState {
  badInput: false,
  customError: false,
  patternMismatch: true,
  rangeOverflow: false,
  rangeUnderflow: false,
  stepMismatch: false,
  tooLong: false,
  tooShort: false,
  typeMismatch: true,
  valueMissing: false,
  valid: true
}
```

Энд хэд хэдэн хэрэгтэй property-ууд байгаа бөгөөд бүгд true эсвэл false гэсэн boolean утгатай.

Жишээ нь, valueMissing property нь required input field хоосон үлдсэн үед true болдог. Мөн patternMismatch property нь утга нь тодорхойлсон regular expression pattern-т таарахгүй үед true болдог.

Энэ хичээлийн дараа, та дээрх жишээнүүдтэй өөрөө туршиж үзээд, validity property-ийн өөр өөр утгуудыг илүү гүнзгий судлахыг зөвлөж байна.
