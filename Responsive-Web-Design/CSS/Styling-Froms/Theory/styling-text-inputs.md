**Text Input стильдэх шилдэг практикууд**

Text input стильдэхдээ **хүртээмж (accessibility)**-ийг заавал анхаарах хэрэгтэй. Энэ нь **font хэмжээ хангалттай том**, мөн **өнгө ба background хооронд хангалттай contrast**-тай байх ёстой гэсэн үг.

---

### 1. Уншихад хялбар текст ба contrast

Input доторх текст **тод харагдахуйц хэмжээтэй**, мөн **background-тойгоо сайн ялгарах өнгөтэй** байх ёстой.

```css
input[type="text"] {
  width: 100%;
  padding: 0.6rem 0.8rem;
  font-size: 1rem;
  border: 2px solid #555;
  border-radius: 4px;
  background-color: #fff;
  color: #111;
}
```

---

### 2. Placeholder текстийг мартдаггүй байх

Placeholder нь мөн **текст** учраас **уншигдахуйц стиль** өгөх шаардлагатай.

```css
input::placeholder {
  color: #555;
  opacity: 1;
  font-style: italic;
}
```

---

### 3. Хэрэглэгч input хэмжээг өөрчлөх боломжтой байх

Ялангуяа **textarea** дээр хэрэглэгч **resize хийх боломжтой** байх ёстой. Resize хийх боломжийг хаах нь accessibility-д муу нөлөөтэй.

```css
textarea {
  width: 100%;
  min-height: 120px;
  padding: 0.8rem;
  font-size: 1rem;
  resize: both;
  box-sizing: border-box;
}
```

Мөн input нь **page zoom хийхэд зөв хэмжээгээр томрох** ёстой.

---

### 4. Focus төлөв тодорхой харагдах ёстой

Input элементүүд **focusable** байдаг. Тиймээс **focus indicator** (жишээ нь border эсвэл shadow) тод харагдах ёстой.

```css
input:focus {
  border-color: #1e90ff;
  box-shadow: 0 0 0 3px rgba(30, 144, 255, 0.4);
  outline: none;
}
```

Энэ нь keyboard navigation ашигладаг хэрэглэгчдэд маш чухал.

---

### 5. Error төлөвийг тодорхой харуулах

Хэрэглэгч буруу утга оруулах үед **алдааны визуал дохио** харагдах ёстой.

```css
input.error {
  border-color: #d93025;
  background-color: #fff5f5;
}

.error-message {
  color: #d93025;
  font-size: 0.95rem;
}
```

Мөн error state нь **focus indicator-той төстэй харагдах ёсгүй**.

---

### 6. JavaScript ашиглан error message шинэчлэх

Error message-ийг **динамикаар өөрчлөх** бол **JavaScript** ашиглах шаардлагатай.

---

### Дүгнэлт

Text input стильдэхдээ дараах зүйлсийг анхаарах хэрэгтэй:

* Текст **уншигдахуйц хэмжээтэй** байх
* **Өнгө ба background сайн contrast**-тай байх
* **Placeholder текст тод харагдах**
* **Textarea resize хийх боломжтой** байх
* **Focus indicator тод харагдах**
* **Error state тодорхой ялгарах**

Эдгээрийг зөв хэрэгжүүлснээр та **хэрэглэгчдэд ойлгомжтой, хүртээмжтэй, сайн UX-тэй form** бүтээж чадна.
