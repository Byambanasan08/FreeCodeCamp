Inline Event Handler гэж юу вэ, яагаад addEventListener-ийг ашиглах нь илүү дээр вэ?

Өмнөх хичээлүүдээр та `addEventListener()` аргыг ашиглан үйл явдалтай (event) ажиллаж сурсан. Гэвч JavaScript-д үйл явдалтай ажиллах өөр нэгэн, **зөвлөдөггүй** арга байдаг.

**Inline event handler** гэдэг нь HTML элемент дээрх тусгай атрибут бөгөөд тухайн үйл явдал тохиолдох үед JavaScript кодыг шууд ажиллуулахад ашиглагддаг.



Inline click event handler ашигласан товчлуурын жишээ:

```html
<button onclick="alert('Hello World!')">Show alert</button>
```

Хэрэглэгч товчлуур дээр дарахад `alert` функц дуудагдаж, "Hello World!" гэсэн мессеж бүхий анхааруулга гарч ирнэ.

Inline event handler-ийг ашиглах өөр нэг арга бол HTML баримт бичгийн `script` таг дотор тодорхойлсон функцийг дуудах явдал юм. Жишээ нь, `changeBgColor` функцийг тодорхойлоод түүнийг inline байдлаар дуудаж байна:

```html
<script>
  function changeBgColor() {
    document.body.style.backgroundColor = "lightblue";
  }
</script>

<button onclick="changeBgColor()">Change background color</button>
```

Товчлуур дээр дарахад `changeBgColor` функц ажиллаж, хуудасны арын дэвсгэр өнгө цайвар цэнхэр болж өөрчлөгдөнө. Хэдийгээр ингэж ашиглах боломжтой боловч энэ нь **сайн туршлага (best practice) биш** гэж тооцогддог.

---

### Яагаад addEventListener-ийг ашиглах нь илүү дээр вэ?

Үүнд хэд хэдэн чухал шалтгаан бий:

1.  **Олон сонсогч (Multiple listeners) нэмэх боломж:** Inline event handler нь нэг элемент дээр зөвхөн нэг л event listener холбох боломжтой. Хэрэв та нэг ижил элемент дээр олон өөр үйлдэл (listener) нэмэхийг хүсвэл заавал `addEventListener()`-ийг ашиглах шаардлагатай.
2.  **Кодын салгалт (Separation of Concerns):** Inline event handler нь HTML болон JavaScript кодыг хольж орхидог. Энэ нь кодыг уншихад болон засварлахад хүндрэлтэй болгодог. HTML кодыг бүтцэд нь, JavaScript кодыг үйлдлийнх нь хувьд тусад нь байлгаж, `addEventListener()`-ээр холбох нь хамаагүй цэгцтэй байдаг.
3.  **Орчин үеийн стандарт:** Inline арга нь орчин үеийн JavaScript-д зөвлөдөггүй, хуучирсан аргад тооцогддог.



Тиймээс JavaScript дээр үйл явдалтай ажиллахдаа үргэлж `addEventListener()` аргыг сонгож хэвших нь хамгийн зөв юм.

---
