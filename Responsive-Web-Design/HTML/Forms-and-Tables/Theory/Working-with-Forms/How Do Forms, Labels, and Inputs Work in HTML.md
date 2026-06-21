HTML-д Form, Label, Input хэрхэн ажилладаг вэ?

HTML дахь **form элемент** нь хэрэглэгчийн мэдээлэл (жишээ нь нэр, имэйл хаяг) цуглуулахад ашиглагддаг. Доорх нь form элементийн жишээ юм:

```html
<form action="url-goes-here">
  <!-- input elements go here -->
</form>
```

**Action атрибут** нь form илгээгдэх үед өгөгдөл хаашаа илгээгдэхийг зааж өгдөг. Нэр, имэйл хаяг зэрэг тодорхой мэдээлэл цуглуулахын тулд **input элемент** ашиглана. Доорх нь input элементийг ашигласан жишээ юм.

Interactive editor-ийг идэвхжүүлээд preview цонхон дээрх input талбарт өөрийн нэрийг бичиж үзээрэй.

```html
<form action="">
  <input type="text" />
</form>
```

**Input элементүүд** нь void элементүүд тул хаах таг (closing tag) байхгүй. **Type атрибут** нь хэрэглэгчээс ямар төрлийн өгөгдөл хүлээж байгааг тодорхойлдог. Энэ тохиолдолд өгөгдөл нь энгийн текст (plaintext) байна. Input-д тайлбар нэмэхийн тулд **label элемент** ашигладаг. Доорх нь `Full Name:` гэсэн тексттэй label элементийн жишээ юм.

Preview цонхон дээрх **Full Name:** гэсэн текст дээр дарахад input талбар фокус авсныг харах болно. Жишээтэй харилцахын тулд interactive editor-ийг идэвхжүүлэх шаардлагатай.

```html
<form action="">
  <label>
    Full Name:
    <input type="text" />
  </label>
</form>
```

Input элементийг label элементийн дотор байрлуулснаар label болон input-ийн хооронд **implicit association** (далд холболт) үүсдэг. “Implicit” гэдэг нь нэмэлт атрибут эсвэл элемент ашиглалгүйгээр ойлгогдож, автоматаар холбогдож буйг хэлнэ. Label болон input-ийг **explicit association** (ил тод холболт)-оор холбохын тулд **for атрибут** ашиглаж болно. Доорх нь имэйл хаягт зориулсан label дээр for атрибут ашигласан жишээ юм.

Preview цонхон дээрх input талбарт [jane@example.com](mailto:jane@example.com) гэх мэт хуурамч имэйл бичиж үзээрэй. Үүний тулд interactive editor-ийг идэвхжүүлэх хэрэгтэй.

```html
<form action="">
  <label for="email"> Email Address: </label>
  <input type="email" id="email" />
</form>
```

Explicit association ашиглах үед **for атрибутын утга** болон **id атрибутын утга** ижил байх ёстой. Энэ жишээнд хоёулаа `email` гэж тохируулагдсан байна. Input дээрх **email type** нь зөв форматтай имэйл хаягийг шалгах үндсэн validation-ийг хангадаг. Хэрэглэгчдэд оруулах өгөгдлийн талаар нэмэлт заавар өгөхийг хүсвэл **placeholder атрибут** ашиглаж болно. Доорх нь имэйл input дотор placeholder ашигласан жишээ юм.

Interactive editor-ийг идэвхжүүлээд имэйл input дээр дарж бичиж эхлэхэд placeholder текст алга болохыг харна.

```html
<form action="">
  <label for="email"> Email Address: </label>
  <input type="email" id="email" placeholder="example@email.com" />
</form>
```

**Placeholder текст** нь хэрэглэгчдэд ямар формат, ямар төрлийн өгөгдөл хүлээж байгааг товч, ойлгомжтой байдлаар харуулах ёстой. Энэ жишээнд `example@email.com` гэсэн placeholder нь хэрэглэгч зөв форматтай имэйл хаяг оруулах шаардлагатайг харуулж байна.
