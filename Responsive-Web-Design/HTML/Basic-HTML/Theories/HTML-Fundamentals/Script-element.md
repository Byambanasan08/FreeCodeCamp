Script элемент HTML-д ямар үүрэгтэй вэ, мөн гадны JavaScript файлтай хэрхэн холбодог вэ?

**script элемент** нь HTML дотор **гүйцэтгэгдэх код (executable code)** шингээхэд ашиглагддаг. Ихэнх хөгжүүлэгчид үүнийг **JavaScript код гүйцэтгэх** зорилгоор ашигладаг.
JavaScript нь вэб хуудсанд **интерактив байдал** нэмэхэд хэрэглэгддэг. Жишээ нь:

* интерактив тоглоом,
* image slider-ууд,
* хэрэглэгчийн оруулсан мэдээллийг real-time хэлбэрээр шалгадаг dynamic form-ууд

зэрэг нь бүгд JavaScript ашигладаг нийтлэг хэрэглээнүүд юм.

Доорх нь HTML дотор script элемент ашигласан жишээ. Доорх кодон дээрх:

```js
// alert("Welcome to freeCodeCamp");
```

гэсэн мөрийн `//`-г авч хаявал popup alert гарч ирнэ. Preview харах бол interactive editor-ийг идэвхжүүлэх шаардлагатай.

```
<body>
  <script>
    // alert("Welcome to freeCodeCamp");
  </script>
</body>
```

---

## Яагаад JavaScript-ээ HTML дотор бичихгүй байх хэрэгтэй вэ?

Техникийн хувьд бүх JavaScript-ээ script tag дотор бичих боломжтой ч **best practice биш**.
Үүний оронд JavaScript-ийг **гадны файлд байршуулж**, script элементээр холбоход илүү зөв.

Гадны JavaScript файлтай холбоход дараах syntax ашиглана:

```
<script src="path-to-javascript-file.js"></script>
```

Энд:

* **src attribute** нь гадны JavaScript файлын байрлал (URL/зам)-ыг заана
* src гэдэг нь “**source**” гэсэн үг

---

## Separation of Concerns — яагаад HTML болон JS-ийг салгах ёстой вэ?

JavaScript-ийг HTML код дунд хольж бичихээс зайлсхийх шалтгаан бол **Separation of Concerns** зарчим юм.

**Separation of Concerns** гэдэг нь програмыг зорилго, үүргийн хувьд тусдаа хэсгүүдэд хуваах зохион байгуулалтын зарчим.

Энэ жишээнд:

* **HTML** → бүтэц ба контент
* **JavaScript** → интерактив ажиллагаа

гэж тусад нь салгах нь илүү цэвэрхэн, удирдахад хялбар, scalable код үүсгэнэ.

Иймээс JavaScript-ээ **external файлд** байлгаж, HTML-ээс **script src="..."** хэлбэрээр дуудаж ашиглах нь хамгийн зөв арга юм.

---
