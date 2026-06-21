### Тусгай input элементүүдийг загварчлах үед гардаг нийтлэг асуудлууд юу вэ?

`datetime-local` болон `color` зэрэг **тусгай төрлийн input элементүүдийг** загварчлах гэж оролдох үед гардаг зарим нийтлэг асуудлуудыг авч үзье.

Эдгээр тусгай төрлийн input-ууд нь **огноо сонгогч (date picker)** болон **өнгө сонгогч (color picker)** зэрэг интерфэйсийг бий болгохын тулд **нарийн бүтэцтэй pseudo-element-үүдэд** тулгуурладаг. Энэ нь эдгээр input-уудыг загварчлахад нэлээд том сорилт болдог. Үүний нэг шалтгаан нь анхдагч хэв загвар (default styling) нь бүрэн **браузераас хамааралтай** байдагт оршино. Тиймээс нэг браузер дээр зөв харагдах CSS загвар нь өөр браузер дээр огт өөр үр дүн гаргах боломжтой.

Доорх нь **color input**-ийн жишээ юм:

```html
<link rel="stylesheet" href="styles.css">

<form>
  <label for="favorite-color">Pick your favorite color:</label>
  <input type="color" id="favorite-color" name="favorite-color">
</form>
```

```css
input {
  padding: 8px 12px;
  margin: 8px 0;
  border-radius: 6px;
  border: 1px solid #ccc;
}

input[type="color"] {
  width: 60px;
  height: 40px;
  padding: 0;
  border: 2px solid #555;
  border-radius: 4px;
  cursor: pointer;
}
```

Өөр нэг асуудал нь **pseudo-element-ийн бүтэц хэт төвөгтэй** байдал юм. Жишээлбэл **огноо сонгогч (date selector)**-ийг авч үзвэл, энд олон дотоод хэсгүүд ажиллаж байдаг бөгөөд pseudo-element-ийн бүтэц нэлээд нарийн байдаг. Ийм нарийн бүтэц нь аль хэсэгт нь CSS загвар хэрэглэх ёстойг тодорхойлоход хүндрэл үүсгэж болно.

Доорх нь **date input**-ийн жишээ юм:

```html
<link rel="stylesheet" href="styles.css">

<form>
  <label for="birthdate">Select your birthdate:</label>
  <input type="date" id="birthdate" name="birthdate">
</form>
```

```css
input {
  padding: 8px 12px;
  margin: 8px 0;
  border-radius: 6px;
  border: 1px solid #ccc;
}

input[type="date"] {
  padding: 6px 10px;
  border: 2px solid #555;
  border-radius: 4px;
  font-size: 14px;
  cursor: pointer;
}

input[type="date"]::-webkit-calendar-picker-indicator {
  background-color: #4CAF50;
  color: white;
  border-radius: 4px;
  cursor: pointer;
}
```

Мөн ийм төрлийн нарийн бүтэцтэй элементүүдийг гараар загварчлах үед **чухал ажиллагаанууд санамсаргүйгээр алдагдах эрсдэл** бий. Жишээлбэл, **focus төлөв (focus state)** эсвэл **сонгогдсон элемент (selected item)**-ийг илтгэдэг чухал тэмдэглэгээ алдагдаж болзошгүй. Зарим тохиолдолд бүр сонгогч (selector) бүхэлдээ эвдрэх магадлалтай.

Эдгээр шалтгааны улмаас олон хөгжүүлэгчид браузерийн суурь компонентуудыг ашиглахын оронд **JavaScript сангууд (libraries)** эсвэл **өөрсдөө бүтээсэн custom компонентуудыг** ашиглахыг илүүд үздэг.
