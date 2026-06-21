**Search input, checkbox, болон radio button стильдэх үед appearance: none-ийг хэзээ ашиглах вэ?**

Олон browser-ууд HTML элементүүдэд **анхдагч (default) стиль** автоматаар хэрэглэдэг. Ялангуяа **input элементүүд** дээр CSS ашиглан стильдэх боломж **хязгаарлагдмал** мэт санагддаг.

Ийм тохиолдолд **appearance: none** property ашиглан **browser-ийн default харагдах байдлыг нууж**, өөрийн **custom дизайн** бүтээх боломжтой.

Жишээлбэл:

* Checkbox-ийн default тэмдэглэгээг нууж **өөрийн icon** ашиглах
* Search input дээр гарч ирдэг **default search icon** болон **cancel button**-ийг нуух

Ингэснээр та **бүх browser дээр ижил харагдах custom дизайн** үүсгэж чадна.

---

### Custom Checkbox жишээ

```css
.checkbox {
  appearance: none;
  width: 18px;
  height: 18px;
  border: 2px solid #ccc;
  border-radius: 4px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  transition: all 0.25s ease;
}
```

Энд:

* **appearance: none** → checkbox-ийн default style-ийг устгана
* Дараа нь **border, background, icon** зэрэгийг өөрсдөө дизайн хийж өгнө.

Checkbox сонгогдох үед:

```css
.checkbox:checked {
  background-color: #4caf50;
  border-color: #4caf50;
}
```

Custom check тэмдэг:

```css
.checkbox:checked::after {
  content: "";
  position: absolute;
  border: solid white;
  transform: rotate(45deg);
}
```

---

### WebKit гэж юу вэ?

**WebKit** нь вэб хуудас хэрхэн харагдахыг browser-д боловсруулах **software engine** юм.

Жишээлбэл:

* **Safari** → WebKit engine ашигладаг
* Зарим WebKit-based browser-ууд **search input дээр default icon** болон **cancel button** харуулдаг.

`appearance: none` ашигласнаар эдгээрийг **нууж өөрийн custom элемент** хийх боломжтой.

---

### appearance: none ашиглах үед анхаарах зүйлс

Default input элементүүдэд дараах **interactive функцууд** байдаг:

* focus indicator
* error indicator
* accessibility behavior

`appearance: none` ашиглах үед эдгээр **алдагдах боломжтой** тул **өөрөө дахин хэрэгжүүлэх** шаардлагатай.

Жишээ:

```css
.checkbox:focus {
  outline: 2px solid #90caf9;
}
```

---

### appearance: none ашиглах нийтлэг шалтгаанууд

* **Cross-browser ижил дизайн** хийх
* **Custom checkbox / radio button** дизайн
* **Search input icon** өөрчлөх
* **Mobile tap target томруулах**
* **Contrast сайжруулах**

---

### Дүгнэлт

`appearance: none` нь:

* Browser-ийн **default UI style-ийг устгаж**
* **Custom input дизайн** бүтээх боломж олгодог

Гэхдээ ашиглахдаа:

* **focus indicator**
* **error state**
* **accessibility**

зэрэг **анхдагч behavior-уудыг алдахгүй байх** нь маш чухал юм.
