Form-ийн өөр өөр төлөвүүд гэж юу вэ, мөн тэд яагаад чухал вэ?

HTML-д **form control**-ууд (жишээ нь input элементүүд) нь **focused state**, **readonly state**, **disabled state** зэрэг өөр өөр үе шат, төлөвүүдтэй байж болдог.

Эхний төлөв нь **default state** юм. Email address input-ийн анхдагч төлөв нь хоосон input байдаг. Энэ нь тухайн input хуудас дээр анх харагдах үеийн байдал юм.

```html
<input type="email" name="email" id="email" />
```

Хэрэглэгч form control дээр дарах эсвэл гарын **Tab** товчоор сонгох үед тухайн элемент **focused state**-д ордог. Input focused төлөвт орсон үед ихэнх браузер input-ийн эргэн тойронд цэнхэр хүрээ (highlighted border) харуулдаг. Мөн та CSS ашиглан нэмэлт стиль тохируулж болно.

Preview цонхон дээрх хоосон хэсэг дээр дараад, дараа нь **Tab** товчийг дарж focus төлөвийг харна уу. Үүнийг харахын тулд interactive editor-ийг идэвхжүүлэх шаардлагатай.

```html
<input type="email" name="email" id="email" />
```

Өөр нэг form төлөв бол **disabled state** юм. Энэ төлөв нь тухайн input фокус авах боломжгүй, идэвхжих боломжгүй гэдгийг хэрэглэгчдэд харуулдаг.

Interactive editor-ийг идэвхжүүлээд email input дээр дарах гэж оролдоход фокус авахгүй байгааг анзаарах болно.

```html
<input disabled type="email" name="email" id="email" />
```

Focused төлөвтэй адил, disabled төлөвт мөн CSS ашиглан нэмэлт стиль өгөх боломжтой.

Өөр нэг төрлийн form төлөв нь **readonly state** юм. Энэ нь input зэрэг form control хэрэглэгчийн зүгээс засварлах боломжгүй байгааг илэрхийлнэ. Доорх нь email input-ийг readonly болгосон жишээ юм. **Value атрибут** нь input дотор харагдах утгыг тохируулдаг.

Interactive editor-ийг идэвхжүүлээд preview цонхон дээрх `example@email.com` утгыг засах гэж оролдоход боломжгүй байгааг харна уу.

```html
<input
  readonly
  type="email"
  name="email"
  id="email"
  value="example@email.com"
/>
```

**Disabled state** болон **readonly state**-ийн гол ялгаа нь readonly төлөвтэй input фокус авч чаддаг бол disabled төлөвтэй input фокус авч чаддаггүйд оршдог.

Form-ийн эдгээр өөр өөр төлөвүүдийг ойлгож хэрэглэх нь чухал. Учир нь эдгээр нь алдааг зөв удирдах, хэрэглэгчдэд тодорхой чиглүүлэг өгөх замаар **тасралтгүй, ойлгомжтой хэрэглэгчийн туршлагыг** хангахад тусалдаг.
