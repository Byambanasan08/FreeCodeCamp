# String дотор шинэ мөр (newline) хэрхэн үүсгэх вэ, мөн string escape гэж юу вэ?

JavaScript-д string-тэй ажиллах үед заримдаа JavaScript engine буруу ойлгож болох тусгай тэмдэгтүүдийг ашиглах шаардлага гардаг.

Хоёр нийтлэг зүйл бол:

- string дотор шинэ мөр үүсгэх
- тусгай тэмдэгтүүдийг зөв харуулахын тулд escape хийх

Шинэ мөр (newline) үүсгэх

JavaScript-д шинэ мөр үүсгэхийн тулд escape sequence гэж нэрлэгдэх тусгай тэмдэгт ашигладаг. Шинэ мөрийн хамгийн түгээмэл escape sequence нь `\n` юм.

Жишээ:

```id="t70yd1"
let poem = "Roses are red,\nViolets are blue,\nJavaScript is fun,\nAnd so are you.";
console.log(poem);
```

`\n` нь тухайн байрлалд шинэ мөр үүсгэж, текстийг олон мөрөөр харуулна.

String escape хийх

Заримдаа string дотор JavaScript өөр зориулалтаар ашигладаг тэмдэгтүүд (жишээ нь хашилт) оруулах шаардлагатай болдог.

Хэрэв та хашилтыг шууд бичвэл алдаа үүснэ:

```id="xtqdp3"
let statement = "She said, "Hello!"";
```

JavaScript энд string хаана дууссаныг буруу ойлгоно.

Үүнийг засахын тулд backslash (`\`) ашиглан escape хийнэ:

```id="dr1v1f"
let statement = "She said, \"Hello!\"";
console.log(statement); // She said, "Hello!"
```

`\` нь дараагийн тэмдэгтийг literal (жирийн тэмдэгт) гэж ойлгуулах үүрэгтэй.

Бусад escape жишээ:

- Backslash өөрийг нь: `\\`
- Нэг хашилт: `\'`

Жишээ:

```id="dyabg4"
let quote = 'It\'s a beautiful day!';
console.log(quote); // It's a beautiful day!
```

Энд `\'` ашигласнаар нэг хашилтыг string-ийн хэсэг болгож байна.

Дүгнэж хэлбэл:

- `\n` нь шинэ мөр үүсгэнэ
- `\` нь тусгай тэмдэгтүүдийг escape хийхэд ашиглагдана

Эдгээр аргууд нь текстийг зөв форматлах, алдаанаас сэргийлэх, string-ийг хүссэнээрээ харуулахад маш чухал юм.
