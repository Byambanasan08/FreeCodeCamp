## Step 1 Passed
In this workshop, you will practice working with HTML forms by building a Hotel Feedback Form.

For the introductory text, you will want to display the main title followed by a short note about leaving feedback.

Inside your body element, add a header element.

Inside the header element, add an h1 element. The h1 element's text should be Hotel Feedback Form.

Below your h1 element, add a p element. The p element's text should be Thank you for staying with us. Please provide feedback on your recent stay.

## Step 2 Passed
Now, it is time to add the main element which represents the main content of the page.

## Алхам 3 — Давсан

Өмнөх хичээлүүдэд та form элементийг дараах байдлаар ашиглахыг сурсан:

Жишээ код

```html
<form method="value-goes-here" action="url-goes-here">
  <!-- inputs go inside here -->
</form>
```

**Action атрибут** нь form илгээгдэх үед өгөгдөл хаашаа илгээгдэхийг зааж өгдөг.

**Method атрибут** нь form өгөгдлийг илгээхэд ямар **HTTP method** ашиглахыг тодорхойлдог. Хамгийн түгээмэл method-ууд нь **GET** болон **POST** юм.

**Тэмдэглэл:** HTTP method-ууд хэрхэн ажилладаг талаар та дараагийн модулиудад сурах болно.

**Main элементийн дотор** `action` атрибутыг
`https://hotel-feedback.freecodecamp.org`
гэж тохируулсан, мөн `method` атрибутыг **POST** гэж тохируулсан **form элемент** нэмнэ үү.

## Алхам 4 — Давсан

Form нь хэрэглэгчид өөрсдийн өгөгдлийг оруулах боломжтой **input** элементүүдээс бүрддэг. Холбоотой input-уудыг нэгтгэхийн тулд **fieldset элемент** ашиглаж болно.

Fieldset элементийг ашигласан жишээг доор үзүүлэв:

Жишээ код

```html
<form action="/example-url">
  <fieldset>
    <!-- inputs go inside here-->
  </fieldset>
</form>
```

**Form элементийн дотор** нэг **fieldset элемент** нэмнэ үү.

## Алхам 5 — Давсан

**Fieldset элемент**-тэй ажиллах үед тухайн input-уудын бүлгийг тайлбарлах **гарчиг (caption)** нэмэх нь түгээмэл байдаг. Үүний тулд **legend элемент** ашигладаг.

Legend элементийг ашигласан жишээг доор үзүүлэв:

Жишээ код

```html
<form action="/example-url">
  <fieldset>
    <legend>Personal Information</legend>
    <!-- inputs go inside here-->
  </fieldset>
</form>
```

**Fieldset элементийн дотор** `Personal Information` гэсэн тексттэй **legend элемент** нэмнэ үү.

## Step 6 Passed
In previous lessons, you learned how to associate a label element with an input like this:

Example Code
<label for="name">Name:</label>
<input type="text" id="name" name="name">
The for attribute on the label element should match the id attribute on the input element. This is known as an explicit association.

Below your legend element, add a label element with the text of Name (required):. Set its for attribute to the value of "full-name".

Then below your label element, add an input element with no attributes. In the next steps, you will add the necessary attributes.

## Step 7 Passed
When a user provides their full name, the input will accept plaintext.

In previous lessons, you learned how to work with the type attribute like this:

Example Code
<input type="text">
For your existing input element, add a type attribute set to "text".

Also give the input element an id attribute with the value of "full-name".

## Алхам 8 — Давсан

**Name атрибут** нь form сервер рүү илгээгдсэний дараа тухайн form өгөгдлийг танихад ашиглагддаг.

Name атрибутыг ашигласан жишээг доор үзүүлэв:

Жишээ код

```html
<input type="email" name="email">
```

**Input элементэд** `name` атрибут нэмээд, утгыг нь **"name"** гэж тохируулна уу.

## Step 9 Passed
In previous lessons, you learned how to work with the placeholder and required attributes like this:

Example Code
<input type="text" placeholder="e.g., John Doe" required>
For your existing input element, add a placeholder attribute with the value of "e.g., John Doe".

Also, add the required attribute to the input element.

## Step 10 Passed
Your hotel feedback form should also collect an email address from the user.

Start by adding a new label element with the text Email address (required): to the form. Your label element should have a for attribute set to the value of "email".

## Step 11 Passed
Next, add an input with the type of "email" below your email label. This input should have an id attribute set to the value of "email". Also, set the name attribute to the value of "email".

This input is also required, so make sure to add the required attribute.

Finally, add a placeholder attribute set to "example@email.com".

## Алхам 12 — Давсан

**Input элементүүд** нь **size атрибут**-тай байж болдог. Энэ атрибут нь хэрэглэгч input талбарт бичих үед **харагдах тэмдэгтийн тоог** тодорхойлдог. Size атрибутын утга нь **0-ээс их, сөрөг биш бүхэл тоо** байх ёстой. Хэрэв size атрибутыг заагаагүй эсвэл буруу утга өгсөн бол input талбар браузерийн анхдагч өргөнийг ашиглана.

Size атрибутыг ашигласан жишээг доор үзүүлэв:

Жишээ код

```html
<label for="lastName">Last Name:</label>
<input id="lastName" name="lastName" type="text" size="10" />
```

**Name болон email input элементүүдэд** `size` атрибут нэмж, утгыг нь **"20"** гэж тохируулна уу.

## Step 13 Passed
Your hotel feedback form should have an option for users to add their age.

Start by adding a label element with the text Age (optional): to the form.

The for attribute should be set to "age".

## Алхам 14 — Давсан

**Number input** нь тоон утга оруулах талбар үүсгэхэд ашиглагддаг.

Доорх нь number input талбарын жишээ юм:

Жишээ код

```html
<input type="number" id="age" name="age" min="18" max="100">
```

**Min** болон **max атрибутууд** нь input талбарт оруулах боломжтой **хамгийн бага** болон **хамгийн их** утгыг тодорхойлдог.

**Label элементийн доор** `type` атрибутыг **"number"** гэж тохируулсан, мөн **id**-г нь **"age"** гэж өгсөн **input элемент** нэмнэ үү.

**Name атрибут** нь **"age"**, **min атрибут** нь **"3"**, **max атрибут** нь **"100"** гэж тус тус тохируулагдсан байх ёстой.

## Алхам 15 — Давсан

Form-ийн дараагийн хэсэг нь хэрэглэгч тухайн зочид буудалд өмнө нь байрлаж байсан эсэхийг асуух үүрэгтэй байна.

Эхлээд нэг **fieldset элемент** нэмнэ үү.

**Fieldset элементийн дотор** `Was this your first time at our hotel?` гэсэн тексттэй **legend элемент** нэмнэ.

## Алхам 16 — Давсан

Хэрэглэгчдэд сонголтуудын жагсаалтаас **зөвхөн нэгийг** сонгох боломж олгохыг хүсвэл **radio button**-уудыг ашиглаж болно.

Доорх нь хоёр radio button ашигласан жишээ юм:

Жишээ код

```html
<input type="radio" id="yes" name="first-time">
<label for="yes">Yes</label>
<input type="radio" id="no" name="first-time">
<label for="no">No</label>
```

Энэ жишээнд radio button-ууд нь **name атрибутын ижил утга** ашигласнаар нэг бүлэгт хамаарч байна. Үүний үр дүнд тухайн бүлгээс **зөвхөн нэг radio button**-ийг нэгэн зэрэг сонгох боломжтой.

**Legend элементийн доор** **id**-г нь **"yes-option"** гэж тохируулсан, **name атрибут**-ыг нь **"hotel-stay"** гэж өгсөн **radio button** нэмнэ үү.

**Radio button-ийн доор** `Yes` гэсэн тексттэй, **for атрибут** нь **"yes-option"** болсон **label элемент** нэмнэ.

## Step 17 Passed
Below your label element, add a radio button with the id set to "no-option", and the name attribute set to "hotel-stay".

Below your new radio button, add another label element with the for attribute set to "no-option". The text for the label should be No.

When you are finished, you can now try out the radio buttons by selecting one option at a time.

## Алхам 18 — Давсан

Form-ийн дараагийн хэсэгт хэрэглэгчид тухайн зочид буудлыг **яагаад сонгосон** талаар асуух бөгөөд хэрэглэгчид **олон сонголт** хийх боломжтой байна.

Эхлээд өөр нэг **fieldset элемент** нэмнэ үү.

**Fieldset элементийн дотор**
`Why did you choose to stay at our hotel? (Check all that apply)`
гэсэн тексттэй **legend элемент** нэмнэ.

## Алхам 19 — Давсан

Хэрэглэгчдэд сонголтуудын жагсаалтаас **олон хувилбар** сонгох боломж олгохыг хүсвэл **checkbox**-уудыг ашиглаж болно.

Доорх нь хоолны сонголтуудтай холбоотой checkbox ашигласан жишээ юм:

Жишээ код

```html
<fieldset>
  <legend>Food Options</legend>
  <input type="checkbox" id="pizza" name="food" value="pizza">
  <label for="pizza">Pizza</label>
  <input type="checkbox" id="burger" name="food" value="burger">
  <label for="burger">Burger</label>
</fieldset>
```

**Value атрибут** нь form илгээгдэх үед сервер рүү дамжуулагдах утгыг тодорхойлдог.

**Legend элементийн доор** **id** болон **value** атрибутуудыг нь **"ads"** гэж тохируулсан, мөн **name атрибут**-ыг нь **"choice"** гэж өгсөн **checkbox input** нэмнэ үү.

**Checkbox input-ийн доор** `Social Media Ads` гэсэн тексттэй **label элемент** нэмнэ. **For атрибут** нь **"ads"** байх ёстой.

## Step 20 Passed
Add another checkbox input with the idand value attributes set to "recommendation", and a name attribute set to "choice".

Below the checkbox input, add another label with the text Personal Recommendation. The for attribute should be set to "recommendation".

## Step 21 Passed
Next, add another checkbox input with the id and value attributes set to "location", and the name attribute set to "choice".

For the label element, the text of Location and the for attribute should be set to "location".

Below that label element, add another checkbox input with the id and value attributes set to "reputation", and the name attribute set to "choice".

For the label element, the text of Reputation and the for attribute should be set to "reputation".

## Step 22 Passed
To make a checkbox input checked by default, you can add the checked attribute.

Here is an example of using the checked attribute:

Example Code
<input checked type="checkbox" id="checked" name="checked">
Add the checked attribute to the checkbox input with the id of "reputation" to make it checked by default.

## Алхам 23 — Давсан

Энэ fieldset доторх **сүүлийн input болон label**-ийн хувьд **checkbox input** нэмнэ.

Уг checkbox input-ийн **id** болон **value атрибутууд** нь **"price"**, харин **name атрибут** нь **"choice"** гэж тохируулагдсан байх ёстой.

Дараа нь `Price` гэсэн тексттэй, **for атрибут** нь **"price"** болсон **label элемент** нэмнэ.

Одоо та янз бүрийн checkbox-уудыг сонгон **form-оо туршиж үзэх** боломжтой.

## Алхам 24 — Давсан

Form-ийн дараагийн хэсэг нь хэрэглэгчдэд зочид буудлын **үнэлгээ (rating)** үлдээх боломж олгоно.

Эхлээд **legend элемент** агуулсан шинэ **fieldset элемент** нэмнэ үү. Legend элементийн текст нь **Ratings** байх ёстой.

**Legend элементийн доор** `How was the service?` гэсэн тексттэй **label элемент** нэмнэ. **For атрибут** нь **"service"** гэж тохируулагдсан байх ёстой.


## Алхам 25 — Давсан

Хэрэглэгчдэд **drop-down menu**-оос сонголт хийх боломж олгохыг хүсвэл **select** болон **option элементүүд**-ийг ашиглаж болно.

Доорх нь өөр өөр хотуудын drop-down цэс үүсгэхэд select болон option элементүүдийг ашигласан жишээ юм:

Жишээ код

```html
<label for="city">Choose a City: </label>
<select id="city" name="city">
  <option value="new-york">New York</option>
  <option value="los-angeles">Los Angeles</option>
  <option value="chicago">Chicago</option>
  <option value="miami">Miami</option>
</select>
```

**Name** болон **id атрибутуудыг** нь **"service"** гэж тохируулсан **select элемент** нэмээд эхлээрэй.


## skip Step 26 !!!

## Step 27 Passed
To make an option selected by default, you can add the selected attribute to the option element you want to be selected.

Here is an example using the selected attribute:

Example Code
<option selected value="amazing">Amazing</option>
Inside your select element, add the selected attribute to the option element with the value of "excellent".

## Step 28!!! Skip

## Step 29 Passed
Inside your select element, add the following five option elements with these corresponding values for the option text and value attribute:

Value Attribute:

poor
satisfactory
good
very-good
excellent
Option Text:

Poor
Satisfactory
Good
Very Good
Excellent
Don't forget to add the selected attribute to the option element with the value of "excellent".

## Step 30 Passed
The last section of the form will allow users to provide any additional feedback they like about the hotel.

Start by adding a label element with the text of Other Comments? and a for attribute set to "comments".

## Алхам 31 — Давсан

Хэрэглэгчдэд сэтгэгдлээ **илүү дэлгэрэнгүй бичих орон зай** олгохыг хүсвэл **textarea элемент** ашиглаж болно.

**Textarea элемент** нь олон мөртэй текст оруулах зориулалттай input control бөгөөд нэг мөрөөс урт текст оруулах боломжийг олгодог. Үүнийг сэтгэгдэл бичих талбар, мессеж оруулах хэсэг зэрэг олон мөр шаардсан текстийн input-д ашигладаг.

Доорх нь textarea элементийн жишээ юм:

Жишээ код

```html
<textarea id="comments" name="comments" rows="4" cols="50"></textarea>
```

**Rows атрибут** нь textarea-ийн харагдах **өндрийг**, **cols атрибут** нь харагдах **өргөнийг** тодорхойлдог.

**Label элементийн доор** нэг **textarea элемент** нэмнэ үү. Дараагийн алхамд та шаардлагатай атрибутуудыг нэмэх болно.

## Step 32Passed
For your textarea element, add an id and name attribute with the value of "comments".

For the cols attribute set the value to 30 and for the rows attribute set the value to 10.

## Step 33 Passed
For the last step in the hotel feedback form workshop, you will need to add a submit button to the form.

Remember that you learned how to work submit buttons in previous lessons.

Add a button element with the type attribute set to "submit" and the text content set to Submit.

And with that, your hotel feedback form is complete!