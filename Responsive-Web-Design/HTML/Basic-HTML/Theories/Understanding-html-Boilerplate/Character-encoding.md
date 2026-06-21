3. UTF-8 Character Encoding гэж юу вэ, яагаад хэрэгтэй вэ?

**UTF-8** буюу **UCS Transformation Format 8** нь вэб дээр өргөн хэрэглэгддэг стандартчилсан *character encoding* юм.
**Character encoding** гэдэг нь компьютерууд текстийг өгөгдөл байдлаар хадгалах аргачлал юм. Үндсэндээ вэб хуудсан дээрх бүх текст гэдэг нь нэг буюу хэд хэдэн byte хэлбэрээр хадгалагдсан тэмдэгтүүдийн дараалал байдаг.

Компьютерийн шинжлэх ухаанд **byte** гэдэг нь **8 bit**-ээс (binary digit) бүрдсэн өгөгдлийн нэгж юм.

UTF-8 нь **Unicode character set**-ийн бүх тэмдэгтийг дэмждэг — үүнд бүх бичгийн системийн тэмдэгтүүд, бүх хэлний үсэг тэмдэг, техникийн тэмдэгтүүд, тусгай тэмдэгтүүд бүгд багтана.

UTF-8 encoding-ийг тохируулахын тулд HTML-ийн **meta элемент** доторх **charset attribute**-ийг дараах байдлаар ашигладаг:

```
<meta charset="UTF-8" />
```

Character encoding-ийг UTF-8 болгон тохируулснаар `"é"` зэрэг аялгатай тэмдэгтүүд хуудсан дээр зөв харагдана. Доорх нь UTF-8 encoding ашигласан өргөтгөсөн жишээ юм:

```
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Examples of the UTF-8 encoding</title>
  </head>
  <body>
    <p>Café</p>
  </body>
</html>
```

Та **шинэ төсөл бүрээ эхлүүлэхдээ** charset attribute-ийг UTF-8 болгон тохируулсан энэ meta элементийг заавал оруулж байх нь зөв.

---
