Change event гэж юу вэ, мөн хэрхэн ажилладаг вэ?

**change event** нь хэрэглэгч тодорхой input элементүүдийн утгыг өөрчлөх үед үүсдэг тусгай event юм. Илүү тодруулбал:

* Checkbox-ийг сонгох эсвэл сонголтыг цуцлах үед
* Radio button-ийг сонгох үед
* Date picker, dropdown зэрэг элементээс сонголт хийх үед
* Input дээр утга өөрчилсний дараа focus алдагдахад (дараагийн талбар руу шилжих эсвэл гадна дарж гарах үед)
* Хэрэглэгч утгыг баталгаажуулах үед (жишээ нь текст бичээд Enter дарах)

Анхаарах зүйл: хэрэглэгч input дээр бичиж байх үед **change event** ажиллахгүй. Энэ нь зөвхөн хэрэглэгч өөр элемент рүү шилжсэний дараа ажиллана.

Dropdown menu дээр change event ашигласан жишээ:

```html id="y6k9m1"
<select id="select-menu">
  <option value="option1">Option 1</option>
  <option value="option2">Option 2</option>
  <option value="option3">Option 3</option>
</select>
<script src="index.js"></script>
```

```javascript id="z8p2q4"
const selectMenu = document.getElementById("select-menu");

selectMenu.addEventListener("change", (event) => {
  console.log(`Та сонгосон: ${event.target.value}`);
});
```

Хэрэглэгч dropdown-оос өөр сонголт хийх бүрд **change event** ажиллаж, сонгосон утга console дээр хэвлэгдэнэ.

**change event** нь Event object үүсгэдэг боловч ихэнх event-үүдээс ялгаатай нь тусгай (custom) object үүсгэдэггүй. Зөвхөн үндсэн Event object-ийн property болон method-уудыг ашиглах боломжтой.

Энэ нь **input event**-ээс ялгаатай. **input event** нь тусгай **InputEvent** object үүсгэдэг бөгөөд хэрэглэгч input дээр бичих бүрд шууд ажилладаг.

Эдгээр ялгааг сайн ойлгох нь чухал. Учир нь event-үүд хэзээ ажиллах вэ гэдгээс болж андуурах магадлалтай.
