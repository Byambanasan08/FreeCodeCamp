2. Attributes гэж юу вэ, тэд хэрхэн ажилладаг вэ?

**Attribute** гэдэг нь HTML элементийн *opening tag*-ийн дотор байрлах утга юм. Attributes нь тухайн элементэд нэмэлт мэдээлэл өгөх, эсвэл элемент хэрхэн ажиллахыг тодорхойлох зориулалттай. Attribute-ийн үндсэн синтакс нь дараах хэлбэртэй:

```
<element attribute="value"></element>
```

Attribute-ийн нэрийн дараа **тэгш тэмдэг (=)** тавигдаж, утга нь ишлэл дотор байрлана. Энэ утга нь attribute-аас шалтгаалаад *string* эсвэл *number* байж болно.

Эхний жишээнд **href** болон **target** attributes ашиглаж байна.

* **href** attribute нь hyperlink буюу холбоосын URL-ийг заана.
* **target** attribute нь тухайн холбоосыг хаана нээхийг заана.

Interactive editor-ийг идэвхжүүлээд `href="https://www.freecodecamp.org/news/"` утгыг `href="https://www.freecodecamp.org"` болгон өөрчлөөрэй. Одоо interactive editor дахь холбоос дээр дарвал freeCodeCamp-ийн нүүр хуудсыг шинэ tab дээр нээхийг харах болно.

```
<a href="https://www.freecodecamp.org/news/" target="_blank">Visit freeCodeCamp</a>
```

Хэрвээ href attribute байхгүй бол холбоос ажиллахгүй. Учир нь очих URL байхгүй гэсэн үг. Тиймээс энэ href attribute нь холбоосыг ажиллахад зайлшгүй шаардлагатай. Харин `target="_blank"` нь холбоосыг шинэ browser tab дээр нээх боломж олгодог. Та дараагийн хичээлүүдэд target attribute-ийн талаар илүү дэлгэрэнгүй үзнэ.

Өөр түгээмэл attribute-уудын нэг бол **src** болон **alt** attribute-ууд юм.

* **src** нь зургийн эх сурвалцын URL-ийг заадаг.
* **alt** нь тухайн зургийн богино тайлбар текстийг өгөхөд ашиглагддаг.

Interactive editor-ийг идэвхжүүлээд `src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg"` утгыг `src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg"` болгож өөрчлөөрэй. Дараа нь
`alt="Two tabby kittens sleeping together on a couch."` утгыг
`alt="Two cats running in the dirt."` болгон өөрчил.

```
<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Two tabby kittens sleeping together on a couch." />
```

Href attribute-тэй адил, **src attribute** нь заавал байх ёстой. Учир нь ямар файл харуулахыг зааж өгдөг. Харин **alt attribute** нь заавал биш ч *accessibility* буюу хүртээмжийн үүднээс **заавал ашиглахыг зөвлөдөг**. Хүртээмж гэдэг нь бүх хүн—including хөгжлийн бэрхшээлтэй хүмүүс—вэбсайт, апп, физик орчин зэрэг зүйлийг ойлгож, ашиглаж чадах боломжийг хангахыг хэлнэ. Дараагийн хичээлүүдэд accessibility тухай илүү дэлгэрэнгүй үзнэ.

Зарим attribute-ууд синтаксаараа өвөрмөц байдаг. Жишээлбэл **checked attribute**.

Interactive editor-ийг идэвхжүүлээд preview цонхонд байрлах checkbox дээр дарж, checked болон unchecked төлөвийн хооронд хэрхэн солигдож байгааг хараарай.

```
<input type="checkbox" checked />
```

Дараах жишээнд **type attribute** нь input элементийн төрлийг checkbox гэж зааж өгч байна. Input элементүүд нь хэрэглэгчээс мэдээлэл авахад ашиглагддаг бөгөөд type attribute нь ямар төрлийн input болохыг тодорхойлдог. Энэ тохиолдолд checkbox юм. Та дараагийн хичээлүүдэд input-ийн төрлүүдийн талаар илүү их мэдэх болно.

**checked attribute** нь тухайн checkbox-ийг анхнаасаа checked төлөвтэй байлгах зориулалттай. Checked attribute нь **утга шаарддаггүй**. Хэрвээ attribute байгаа бол checkbox checked байна. Хэрэв attribute байхгүй бол unchecked байна. Үүнийг **boolean attribute** гэж нэрлэдэг. Та JavaScript хэсэгт boolean төрлийн талаар илүү сайн судална.

Interactive editor-ийг идэвхжүүлээд input элементийн checked attribute-ийг устгаад үзээрэй. Checkbox анхдагчаар checked биш болохыг та харах болно.

```
<input type="checkbox" checked />
```

HTML-д нийтлэг Boolean attribute-ууд байдаг. Жишээ нь: **disabled, readonly, required**. Эдгээр нь элементүүдийн төлөвийг зааж өгдөг — жишээлбэл: disabled буюу идэвхгүй, readonly буюу зөвхөн унших, required буюу заавал бөглөх гэх мэт.

Энд анхдагчаар disabled төлөвтэй текст input элементийн жишээ байна. Interactive editor-ийг идэвхжүүлээд preview цонхон дахь input дээр дарж үз. Одоо disabled attribute-ийг устгаад үзвэл input нь дахин идэвхтэй болж, та дотор нь текст бичих боломжтой болно.

```
<input type="text" disabled>
```

HTML нь вэб хуудсан дээрх элементүүдийн үйлдэл болон харагдацыг өөрчлөх олон төрлийн attribute-үүдтэй. Attribute-үүдийг зөв ашиглаж сурах нь интерактив мөн хүртээмжтэй вэб контент бүтээхэд маш чухал. Дараагийн хичээлүүдээр та HTML attribute-үүдийн талаар илүү дэлгэрэнгүй үзэж, вэб хөгжүүлэлтэд үр дүнтэйгээр ашиглаж сурах болно.

---
