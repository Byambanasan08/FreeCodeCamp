**ID Selector-ын Specificity гэж юу вэ?**

ID selector нь CSS дэх **хамгийн хүчтэй selector-уудын нэг** бөгөөд хөгжүүлэгчдэд **давтагдашгүй (unique) таних тэмдэгтэй** тодорхой нэг элементийг онилж стиль өгөх боломжийг олгодог.

Иймээс ID selector нь **онцгой загварчлал шаардлагатай ганц элементэд** стиль хэрэгжүүлэхэд маш тохиромжтой.

ID selector нь **hash тэмдэг (`#`)**-ийн дараа ID нэрийг бичих хэлбэртэй байна. HTML баримт бичиг дотор **нэг ID-г зөвхөн нэг элементэд л ашиглах ёстой**, өөрөөр хэлбэл хоёр элемент ижил ID-тэй байх ёсгүй.

Доорх нь ID selector ашигласан жишээ юм:

```html
<link rel="stylesheet" href="styles.css">
<p id="unique">Example paragraph</p>
<p>Another paragraph</p>
<p>Yet another paragraph</p>
```

```css
#unique {
  color: purple;
}
```

Энэ жишээнд `unique` гэсэн ID-тэй элемент л ягаан (`purple`) өнгөтэй болно.

---

### ID selector-ын specificity

ID selector нь:

* type selector
* class selector

хоёроос **илүү өндөр specificity**-тэй боловч,

* inline style-оос **бага specificity**-тэй.

ID selector-ын specificity утга нь:

```
(0, 1, 0, 0)
```

Энэ нь ID selector нь:

* class selector болон type selector-ыг дарж бичиж чадна
* харин inline style-аар дарж бичигдэнэ

гэсэн үг юм.
