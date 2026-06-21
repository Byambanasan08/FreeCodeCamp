**CSS Pseudo-class-уудын тойм**

### 1. User Action Pseudo-class-ууд

* **Pseudo-class тодорхойлолт:** Эдгээр нь CSS-ийн тусгай keyword-ууд бөгөөд элементийг тодорхой **төлөв (state)** эсвэл **байршил (position)** дээр нь үндэслэн сонгох боломжийг олгодог.
* **User Action Pseudo-class-ууд:** Хэрэглэгчийн үйлдэл дээр үндэслэн элементийн харагдах байдлыг өөрчилж, **хэрэглэгчийн туршлагыг (user experience)** сайжруулахад ашиглагддаг.
* **:active Pseudo-class:** Элементийн **идэвхтэй төлөвийг** сонгоно. Жишээлбэл button дээр дарах үед.
* **:hover Pseudo-class:** Элемент дээр **курсор очсон (hover)** төлөвийг тодорхойлно.
* **:focus Pseudo-class:** Элемент **focus авах үед** стиль хэрэглэнэ. Ихэвчлэн keyboard navigation ашиглах эсвэл form input дээр дарсан үед.
* **:focus-within Pseudo-class:** Элемент өөрөө эсвэл түүний **доторх ямар нэг descendant элемент focus авсан үед** стиль хэрэглэнэ.

---

### 2. Input Pseudo-class-ууд

* **Input Pseudo-class-ууд:** HTML input элементүүдийг хэрэглэгчийн **харилцан үйлдлийн өмнөх болон дараах төлөвөөр** сонгоход ашиглагддаг.
* **:enabled Pseudo-class:** Одоогоор **идэвхтэй (enabled)** байгаа form button эсвэл бусад элементүүдийг сонгоно.
* **:disabled Pseudo-class:** **Идэвхгүй (disabled)** төлөвт байгаа интерактив элементийг стильдэнэ.
* **:checked Pseudo-class:** Checkbox эсвэл radio button **сонгогдсон (checked)** байгааг илэрхийлнэ.
* **:valid Pseudo-class:** **Validation-ийн шаардлага хангаж байгаа** input field-ийг сонгоно.
* **:invalid Pseudo-class:** **Validation-ийн шаардлага хангахгүй** input field-ийг сонгоно.
* **:in-range болон :out-of-range Pseudo-class-ууд:** Input утга **заасан хүрээнд байгаа эсвэл хүрээнээс хэтэрсэн** эсэхээс хамааран стиль хэрэглэнэ.
* **:required Pseudo-class:** **required attribute**-тай input элементүүдийг сонгоно. Энэ нь хэрэглэгчид **заавал бөглөх шаардлагатай** талбар гэдгийг илэрхийлнэ.
* **:optional Pseudo-class:** **заавал бөглөх шаардлагагүй** input элементүүдийг стильдэнэ.
* **:autofill Pseudo-class:** Browser **хадгалсан өгөгдлөөр автоматаар бөглөсөн** input талбаруудыг стильдэнэ.

---

### 3. Location Pseudo-class-ууд

* **Location Pseudo-class-ууд:** Одоогийн document дотор **link болон target элементүүдийг** стильдэхэд ашиглагддаг.
* **:any-link Pseudo-class:** **:link болон :visited** pseudo-class-уудын нийлбэр. href attribute-тай бүх anchor элементийг сонгоно.
* **:link Pseudo-class:** **дараагүй (unvisited)** бүх link-үүдийг сонгоно.
* **:local-link Pseudo-class:** **ижил document руу зааж байгаа link**-үүдийг сонгоно.
* **:visited Pseudo-class:** Хэрэглэгч **өмнө нь орсон (visited)** link-ийг сонгоно.
* **:target Pseudo-class:** URL-ийн **fragment identifier**-т тохирсон элементид стиль хэрэглэнэ.

---

### 4. Tree-structural Pseudo-class-ууд

* **Tree-structural Pseudo-class-ууд:** HTML document-ийн **tree бүтэц дэх байрлалаас** хамааран элементүүдийг сонгож стильдэх боломжийг олгодог.
* **:root Pseudo-class:** Ихэвчлэн **html root элемент**. Бүх document-д нийтлэг стиль хэрэглэхэд ашиглагдана.
* **:empty Pseudo-class:** **контентгүй элементүүдийг** (white space-ээс өөр child байхгүй) сонгоно.
* **:nth-child(n) Pseudo-class:** Parent доторх **n-д байрлалтай элементүүдийг** сонгоно.
* **:nth-last-child(n) Pseudo-class:** Parent-ийн **сүүлээс тоолж** n-д байрлах элементүүдийг сонгоно.
* **:first-child Pseudo-class:** Parent доторх **эхний элемент**.
* **:last-child Pseudo-class:** Parent доторх **сүүлийн элемент**.
* **:only-child Pseudo-class:** Parent дотор **ганцхан байгаа элемент**.
* **:first-of-type Pseudo-class:** Parent доторх **тухайн төрлийн эхний элемент**.
* **:last-of-type Pseudo-class:** Parent доторх **тухайн төрлийн сүүлийн элемент**.
* **:nth-of-type(n) Pseudo-class:** **ижил төрлийн sibling элементүүд дундаас** n-д байрлалтай элементийг сонгоно.
* **:only-of-type Pseudo-class:** Parent дотор **тухайн төрлийн ганц элемент** байвал сонгоно.

---

### 5. Functional Pseudo-class-ууд

* **Functional Pseudo-class-ууд:** Илүү **нарийн нөхцөл, холбоос** дээр үндэслэн элемент сонгох боломжийг олгодог pseudo-class-ууд. Эдгээр нь **argument** авдаг.

* **:is() Pseudo-class:** Selector-уудын жагсаалт авч, **аль нэг selector-т тохирох элементүүдийг** сонгоно.

```css
p:is(.example, .this-works-too) {
  color: red;
}
```

---

#### 5.1 :where() Pseudo-class

Selector-уудын жагсаалт авч **аль нэг selector-т тохирох элементүүдийг** сонгоно. **:is()-оос ялгаатай нь specificity = 0** байдаг.

```css
:where(h1, h2, h3) {
  margin: 0;
  padding: 0;
}
```

---

#### 5.2 :has() Pseudo-class

Ихэнхдээ **“parent selector”** гэж нэрлэгддэг. Учир нь selector жагсаалтад заасан **child элементүүдийг агуулж байгаа parent элементүүдийг** стильдэх боломж олгодог.

```css
article:has(h2) {
  border: 2px solid hotpink;
}
```

---

#### 5.3 :not() Pseudo-class

Өгөгдсөн selector-т **тохирохгүй элементүүдийг** сонгоход ашиглагдана.

```css
p:not(.example) {
  color: blue;
}
```

---

### 6. Pseudo-element-ууд

* **::before Pseudo-element:** content property ашиглан элементийн **өмнө нэмэлт контент** (жишээ нь icon) оруулна.
* **::after Pseudo-element:** content property ашиглан элементийн **дараа нэмэлт контент** оруулна.
* **::first-letter Pseudo-element:** Элементийн контентийн **эхний үсгийг** сонгож стильдэх боломж олгодог.
* **::marker Pseudo-element:** List item-ийн **marker (bullet эсвэл numbering)**-ийг сонгож стильдэх боломж олгодог.
