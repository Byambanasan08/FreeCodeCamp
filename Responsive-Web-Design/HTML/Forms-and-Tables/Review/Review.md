HTML Tables болон Forms — Тойм

## HTML Form элементүүд ба атрибутууд

**Form элемент:**
Хэрэглэгчийн оруулгыг авах HTML form үүсгэхэд ашиглагддаг.

**Action атрибут:**
Form өгөгдөл илгээгдэх URL-ийг зааж өгдөг.

**Method атрибут:**
Form өгөгдлийг илгээхэд ашиглах HTTP method-ийг тодорхойлдог. Хамгийн түгээмэл нь **GET** болон **POST** юм.

Жишээ код

```html
<form method="value-goes-here" action="url-goes-here">
  <!-- inputs go inside here -->
</form>
```

**Input элемент:**
Хэрэглэгч өгөгдөл оруулах input талбар үүсгэхэд ашиглагддаг.

**Type атрибут:**
Input талбарын төрлийг заана. Жишээ нь: text, email, number, radio, checkbox гэх мэт.

**Placeholder атрибут:**
Input талбарт юу оруулах ёстойг хэрэглэгчид заах **сануулга** харуулна.

**Value атрибут:**
Input-ийн утгыг тодорхойлдог. Хэрэв input нь button төрөлтэй бол value атрибутыг товчлуурын текстэд ашиглаж болно.

**Name атрибут:**
Input талбарт нэр өгдөг бөгөөд form илгээгдэх үед сервер рүү дамжих **key** болдог. Radio button-ууд ижил name-тэй байвал нэг бүлэг болж, нэг л сонголт идэвхжих боломжтой.

**Size атрибут:**
Input талбарт харагдах тэмдэгтийн тоог тодорхойлдог.

**Min атрибут:**
Number зэрэг input төрөлд ашиглагдаж, оруулах боломжтой хамгийн бага утгыг заана.

**Max атрибут:**
Number зэрэг input төрөлд ашиглагдаж, оруулах боломжтой хамгийн их утгыг заана.

**Minlength атрибут:**
Input талбарт оруулах хамгийн бага тэмдэгтийн тоог заана.

**Maxlength атрибут:**
Input талбарт оруулах хамгийн их тэмдэгтийн тоог заана.

**Required атрибут:**
Form илгээхээс өмнө тухайн input-ийг заавал бөглөх ёстойг заана.

**Disabled атрибут:**
Input талбарыг идэвхгүй болгоно.

**Readonly атрибут:**
Input талбарыг засварлах боломжгүй болгоно.

Жишээ код

```html
<!-- Text input -->
<input 
  type="text"
  id="name"
  name="name"
  placeholder="e.g. Quincy Larson" 
  size="20"
  minlength="5"
  maxlength="30"
  required
/>

<!-- Number input -->
<input 
  type="number"
  id="quantity"
  name="quantity"
  min="2"
  max="10"
  disabled
/>

<!-- Button -->
<input type="button" value="Show Alert" />
```

**Label элемент:**
Input талбарт зориулсан шошго (label) үүсгэхэд ашиглагддаг.

**For атрибут:**
Label аль input-тэй холбогдож байгааг заана.

**Implicit form association (далд холболт):**
Input-ийг label элементийн дотор байрлуулснаар холболт автоматаар үүснэ.

Жишээ код

```html
<form action="">
  <label>
    Full Name:
    <input type="text" />
  </label>
</form>
```

**Explicit form association (ил тод холболт):**
Label дээрх for атрибут болон input дээрх id атрибутын утгыг ижил байлгаснаар холболт үүснэ.

Жишээ код

```html
<form action="">
  <label for="email">Email Address: </label>
  <input type="email" id="email" />
</form>
```

**Button элемент:**
Дарж болдог товч үүсгэхэд ашиглагддаг. Button элемент нь мөн type атрибуттай байж болно. Жишээ нь: submit, reset, button.

Жишээ код

```html
<button type="button">Show Form</button>
<button type="submit">Submit Form</button>
<button type="reset">Reset Form</button>
```

**Fieldset элемент:**
Холбоотой input-уудыг бүлэглэхэд ашиглагддаг.

**Legend элемент:**
Тухайн input бүлгийн тайлбар, гарчгийг нэмэхэд ашиглагддаг.

Жишээ код

```html
<!-- Radio group -->
<fieldset>
  <legend>Was this your first time at our hotel?</legend>

  <label for="yes-option">Yes</label>
  <input id="yes-option" type="radio" name="hotel-stay" value="yes" />

  <label for="no-option">No</label>
  <input id="no-option" type="radio" name="hotel-stay" value="no" />
</fieldset>

<!-- Checkbox group -->
<fieldset>
  <legend>
    Why did you choose to stay at our hotel? (Check all that apply)
  </legend>

  <label for="location">Location</label>
  <input type="checkbox" id="location" name="location" value="location" />

  <label for="price">Price</label>
  <input type="checkbox" id="price" name="price" value="price" />
</fieldset>
```

**Focused state:**
Хэрэглэгч input талбарыг сонгосон (focus авсан) үед илэрхийлэгдэх төлөв юм.

---
HTML Table элементүүд ба атрибутуудтай ажиллах нь

**Table элемент:**
HTML хүснэгт үүсгэхэд ашиглагддаг.

**Table Head (thead) элемент:**
HTML хүснэгтийн толгой хэсгийн контентыг бүлэглэхэд ашиглагддаг.

**Table Row (tr) элемент:**
HTML хүснэгтэд нэг мөр үүсгэхэд ашиглагддаг.

**Table Header (th) элемент:**
HTML хүснэгтэд гарчгийн нүд (header cell) үүсгэхэд ашиглагддаг.

**Table Body (tbody) элемент:**
HTML хүснэгтийн үндсэн өгөгдлийн хэсгийг бүлэглэхэд ашиглагддаг.

**Table Data Cell (td) элемент:**
HTML хүснэгтэд өгөгдлийн нүд (data cell) үүсгэхэд ашиглагддаг.

**Table Foot (tfoot) элемент:**
HTML хүснэгтийн доод (footer) хэсгийн контентыг бүлэглэхэд ашиглагддаг.

**Caption элемент:**
HTML хүснэгтийн гарчиг (title) нэмэхэд ашиглагддаг.

**Colspan атрибут:**
Хүснэгтийн нэг нүд хэдэн багана дамнан байрлахыг заахад ашиглагддаг.

Жишээ код

```html
<table>
  <caption>Exam Grades</caption>

  <thead>
    <tr>
      <th>Last Name</th>
      <th>First Name</th>
      <th>Grade</th>
    </tr>
  </thead>

  <tbody>
    <tr>
      <td>Davis</td>
      <td>Alex</td>
      <td>54</td>
    </tr>

    <tr>
      <td>Doe</td>
      <td>Samantha</td>
      <td>92</td>
    </tr>

    <tr>
      <td>Rodriguez</td>
      <td>Marcus</td>
      <td>88</td>
    </tr>
  </tbody>

  <tfoot>
    <tr>
      <td colspan="2">Average Grade</td>
      <td>78</td>
    </tr>
  </tfoot>
</table>
```

HTML хэрэгслүүдтэй ажиллах нь

**HTML validator:**
HTML кодын синтаксийг шалгаж, стандартын дагуу зөв бичигдсэн эсэхийг баталгаажуулдаг хэрэгсэл.

**DOM inspector:**
Вэб хуудасны HTML бүтцийг шалгах, өөрчлөх боломж олгодог хэрэгсэл.

**DevTools:**
Браузерт суурилсан вэб хөгжүүлэгчийн хэрэгслүүдийн багц бөгөөд вэб хуудсуудыг debug хийх, гүйцэтгэлийг шинжлэх (profile), дүн шинжилгээ хийхэд ашиглагддаг.
