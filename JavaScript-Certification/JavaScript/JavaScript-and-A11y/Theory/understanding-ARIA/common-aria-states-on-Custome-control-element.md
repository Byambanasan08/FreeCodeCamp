What Are Some Common ARIA States Used on Custom Control Elements? 

Custom control элементүүд дээр ашиглагддаг түгээмэл ARIA state-ууд юу вэ?

---

input, select, textarea, button, fieldset зэрэг semantic form control элементүүд нь assistive technology-д дамжуулагддаг built-in state-уудтай байдаг.

Жишээ нь, та button-ийг идэвхгүй болгохын тулд disabled attribute ашиглаж болно, эсвэл checkbox сонгогдсон эсэхийг илэрхийлэхийн тулд checked attribute ашиглаж болно.

Гэхдээ хэрэв та custom control элемент үүсгэж байгаа бол control-ийн төлөвийг assistive technology-д дамжуулахын тулд ARIA attribute-уудыг ашиглах шаардлагатай.

Энэ хичээлд бид custom control элементүүд дээр ашиглаж болох хэд хэдэн түгээмэл ARIA state-уудыг авч үзнэ.

Бидний эхлээд авч үзэх ARIA state бол aria-selected юм. Энэ state нь элемент сонгогдсон эсэхийг илэрхийлэхэд ашиглагддаг. Та энэ state-ийг tabbed interface, listbox, эсвэл grid зэрэг custom control-ууд дээр ашиглаж болно.

Дараах нь custom tab control дээр aria-selected ашиглах жишээ юм:

```html id="6g2vph"
<link rel="stylesheet" href="styles.css">
<div role="tablist">
  <button role="tab" aria-selected="true">Tab 1</button>
  <button role="tab" aria-selected="false">Tab 2</button>
  <button role="tab" aria-selected="false">Tab 3</button>
</div>
<script src="index.js"></script>

[role="tablist"] {
  display: flex;
  border-bottom: 2px solid #ddd;
  gap: 0.25rem;
  font-family: system-ui, sans-serif;
}

[role="tab"] {
  appearance: none;
  border: none;
  background: none;
  padding: 0.5rem 1rem;
  cursor: pointer;
  font-size: 1rem;
  color: #444;
  border-radius: 4px 4px 0 0;
  transition: background-color 0.2s, color 0.2s;
}

[role="tab"]:hover {
  background-color: #f3f3f3;
}

[role="tab"][aria-selected="true"] {
  background-color: #fff;
  color: #0078d4;
  border: 2px solid #0078d4;
  border-bottom: 2px solid #fff; 
  font-weight: 600;
  position: relative;
  z-index: 1;
}

[role="tab"]:focus {
  outline: 2px solid #0078d4;
  outline-offset: 2px;
}

document.addEventListener("click", (event) => {
  const clickedTab = event.target.closest('[role="tab"]');
  if (!clickedTab) return;

  const tablist = clickedTab.closest('[role="tablist"]');
  const tabs = tablist.querySelectorAll('[role="tab"]');

  tabs.forEach((tab) => {
    const isSelected = tab === clickedTab;
    tab.setAttribute("aria-selected", isSelected);
    tab.tabIndex = isSelected ? 0 : -1;
  });
});

document.addEventListener("keydown", (event) => {
  const activeTab = document.activeElement;
  if (activeTab.getAttribute("role") !== "tab") return;

  const tablist = activeTab.closest('[role="tablist"]');
  const tabs = Array.from(tablist.querySelectorAll('[role="tab"]'));
  const index = tabs.indexOf(activeTab);

  let newIndex = index;
  if (event.key === "ArrowRight") newIndex = (index + 1) % tabs.length;
  if (event.key === "ArrowLeft") newIndex = (index - 1 + tabs.length) % tabs.length;

  if (newIndex !== index) {
    tabs[newIndex].focus();
    tabs[newIndex].click();
  }
});
```

Tabs нь хязгаарлагдмал зайд олон контентын panel-уудыг харуулахад ашиглагддаг. aria-selected state нь аль tab одоогоор сонгогдсоныг илэрхийлэхэд ашиглагддаг.

Хэрэглэгч tab сонгох үед сонгогдсон tab-ийн aria-selected state нь true болж, бусад tab-уудын aria-selected state нь false болно.

Дараагийн түгээмэл ARIA state бол aria-disabled юм. Энэ state нь элемент зөвхөн assistive technology (жишээ нь screen reader)-д идэвхгүй байгааг илэрхийлэхэд ашиглагддаг. Анхаарах зүйл нь aria-disabled нь бодитоор элементийг идэвхгүй болгодоггүй. Элементийг идэвхгүй мэт харагдуулж, ажиллуулах нь хөгжүүлэгч таны үүрэг юм. Энэ attribute нь мөн native HTML элементүүд дээр disabled attribute-ийн оронд ихэвчлэн ашиглагддаг. Аль attribute-ийг ашиглах нь тухайн button ямар context-д ашиглагдаж байгаагаас хамаарна.

Дараах нь custom edit button дээр aria-disabled ашиглах жишээ юм:

```html id="h9r8l2"
<link rel="stylesheet" href="styles.css">
<div role="button" tabindex="-1" aria-disabled="true">Edit</div>

[role="button"] {
  display: inline-block;
  background-color: #0078d4;
  color: #fff;
  padding: 0.5rem 1rem;
  border-radius: 6px;
  font-family: system-ui, sans-serif;
  font-size: 1rem;
  text-align: center;
  cursor: pointer;
  user-select: none;
  transition: background-color 0.2s, transform 0.1s, opacity 0.2s;
}

[role="button"]:not([aria-disabled="true"]):hover {
  background-color: #005fa3;
}

[role="button"]:not([aria-disabled="true"]):focus {
  outline: 2px solid #005fa3;
  outline-offset: 2px;
}

[role="button"]:not([aria-disabled="true"]):active {
  transform: scale(0.97);
}

[role="button"][aria-disabled="true"] {
  opacity: 0.5;
  pointer-events: none;
  cursor: not-allowed;
  background-color: #b0b0b0;
  color: #f2f2f2;
}
```

aria-disabled attribute нь edit button идэвхгүй бөгөөд ашиглах боломжгүй гэдгийг screen reader хэрэглэгчдэд мэдэгдэхэд ашиглагддаг. Дахин хэлэхэд, энэ нь button-ийг бодитоор идэвхгүй болгодоггүй. aria-disabled ашиглах үед control-ийг идэвхгүй button шиг харагдуулж, ажиллуулахын тулд CSS болон JavaScript хэрэглэх шаардлагатай.

Ихэнх тохиолдолд та native button элемент ашиглах боловч зарим тохиолдолд custom control ашиглах шаардлагатай болдог. Тиймээс control-ийн төлөвийг assistive technology-д хэрхэн дамжуулахыг мэдэх нь чухал юм.

Дараагийн ARIA state бол aria-haspopup юм. Энэ state нь interactive элемент идэвхжих үед popup элемент нээгдэхийг илэрхийлэхэд ашиглагддаг. Та aria-haspopup attribute-ийг зөвхөн popup нь дараах role-уудын аль нэгтэй үед ашиглаж болно: menu, listbox, tree, grid, эсвэл dialog. aria-haspopup-ийн утга нь эдгээр role-уудын аль нэг эсвэл true байж болно (энэ нь default-аар menu role-ийг илэрхийлдэг).

Дараах нь aria-haspopup ашигласан file editor menu-ийн жишээ юм:

```html id="t2x8qy"
<link rel="stylesheet" href="styles.css">
<button id="menubutton" aria-haspopup="menu" aria-controls="filemenu" aria-expanded="false">File</button>
<ul id="filemenu" role="menu" aria-labelledby="menubutton" hidden>
  <li role="menuitem" tabindex="-1">Open</li>
  <li role="menuitem" tabindex="-1">New</li>
  <li role="menuitem" tabindex="-1">Save</li>
  <li role="menuitem" tabindex="-1">Delete</li>
</ul>

#menubutton {
  background-color: #0078d4;
  color: #fff;
  border: none;
  padding: 8px 14px;
  border-radius: 4px;
  cursor: pointer;
  font-size: 14px;
  position: relative;
}

#menubutton:hover,
#menubutton:focus {
  background-color: #005ea2;
  outline: none;
}

#filemenu {
  list-style: none;
  padding: 4px 0;
  margin: 4px 0 0;
  border: 1px solid #ccc;
  border-radius: 4px;
  background-color: #fff;
  width: 160px;
  position: absolute;
  z-index: 1000;
  box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

#filemenu[hidden] {
  display: none;
}

#filemenu [role="menuitem"] {
  display: block;
  padding: 8px 12px;
  font-size: 14px;
  color: #333;
  cursor: pointer;
}

#filemenu [role="menuitem"]:hover,
#filemenu [role="menuitem"]:focus {
  background-color: #e5f1fb;
  outline: none;
}

#filemenu [role="menuitem"]:focus-visible {
  box-shadow: inset 0 0 0 2px #0078d4;
}
```

aria-haspopup state нь File menu button идэвхжих үед popup menu нээгдэхийг илэрхийлдэг. Screen reader хэрэглэгчид энэ нэмэлт мэдээллийг button дээр очих үед сонсож болно.

Та popup menu-г харуулах, нуух, мөн menu-тэй keyboard ашиглан зөв харилцах боломжийг хэрэгжүүлэхийн тулд JavaScript ашиглах шаардлагатай. Мөн анхаарах зүйл бол ARIA menu role нь маш тодорхой төрлийн menu-г илэрхийлдэг. Энэ нь ихэвчлэн desktop application дээрх menu-тэй төстэй, хэрэглэгч үйлдэл гүйцэтгэх боломжтой жагсаалтыг хэлдэг. Энэ нь бидний ердийн ойлголтоор “menu” гэж нэрлэдэг navigation menu зэрэг зүйлсийг хамрахгүй. Бодит байдал дээр вэб дээр үүсгэдэг ихэнх “menu”-ууд ARIA menu биш байдаг тул aria-haspopup-ийг ашиглахгүй байх нь элбэг.

Дараагийн ARIA state бол aria-required юм. aria-required attribute нь form submit хийхээс өмнө тухайн талбарыг заавал бөглөх шаардлагатайг илэрхийлэхэд ашиглагддаг.

Дараах нь custom form control дээр aria-required ашиглах жишээ юм:

```html id="w1g7bz"
<link rel="stylesheet" href="styles.css">
<div id="name-label">Full Name*</div>
<div role="textbox" contenteditable aria-labelledby="name-label" aria-required="true" id="name"></div>

#name-label {
  font-family: system-ui, sans-serif;
  font-size: 0.95rem;
  font-weight: 600;
  margin-bottom: 0.25rem;
  color: #333;
}

[role="textbox"] {
  display: block;
  width: 100%;
  min-height: 2rem;
  padding: 0.5rem 0.75rem;
  border: 1.5px solid #ccc;
  border-radius: 4px;
  font-family: system-ui, sans-serif;
  font-size: 1rem;
  color: #222;
  background-color: #fff;
  line-height: 1.4;
  transition: border-color 0.2s, box-shadow 0.2s;
}

[role="textbox"]:hover {
  border-color: #999;
}

[role="textbox"]:focus {
  outline: none;
  border-color: #0078d4;
  box-shadow: 0 0 0 3px rgba(0, 120, 212, 0.25);
}

[role="textbox"]:empty::before {
  content: attr(data-placeholder);
  color: #aaa;
  pointer-events: none;
}

[role="textbox"][aria-required="true"] {
  border-left: 3px solid #e81123;
  padding-left: calc(0.75rem - 3px);
}
```

Хэрэглэгчид input хийх боломж олгохын тулд contenteditable attribute ашиглах шаардлагатай. Мөн энэ custom form control заавал бөглөх ёстойг илэрхийлэхийн тулд aria-required attribute-ийг true болгож ашиглаж байна.

Form control-ийг ердийн form control шиг харагдуулахын тулд CSS нэмэх шаардлагатай. Мөн content байхгүй үед form submit хийхээс сэргийлэхийн тулд JavaScript нэмэх хэрэгтэй.

Хэрэв label аль хэдийн required гэсэн үгийг агуулж байвал aria-required attribute-ийг ашиглахгүй байх ёстой. Ингэснээр screen reader зөвхөн нэг удаа required гэж уншина.

Ихэнх тохиолдолд та native label болон form элементүүдийг required attribute-тэй ашиглах болно. Гэхдээ хэрэв custom form control үүсгэх шаардлагатай бол aria-required attribute-ийг шаардлагатай үед нэмэх нь чухал.

Мөн aria-required attribute-ийг input, textarea, select зэрэг native form input-ууд дээр ашиглаж болно. Зарим тохиолдолд энэ нь native required attribute-ээс илүү тохиромжтой байдаг, учир нь required attribute нь browser-ийн default алдааны харуулалттай холбоотой usability болон accessibility асуудал үүсгэж болзошгүй. Эцэст нь аль attribute илүү тохиромжтойг тодорхойлохын тулд тест хийх шаардлагатай.

Бидний сүүлд авч үзэх ARIA state бол aria-checked юм. Энэ attribute нь элемент сонгогдсон (checked) төлөвтэй эсэхийг илэрхийлэхэд ашиглагддаг. Энэ нь ихэвчлэн custom checkbox, radio button, switch, listbox зэрэг элементүүдийг үүсгэхэд ашиглагддаг.

Дараах нь custom checkbox control дээр aria-checked ашиглах жишээ юм:

```html id="m3z9nx"
<link rel="stylesheet" href="styles.css">
<div role="checkbox" aria-checked="true" tabindex="0">Checkbox</div>

[role="checkbox"] {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  font-family: system-ui, sans-serif;
  font-size: 1rem;
  cursor: pointer;
  user-select: none;
  color: #222;
}

[role="checkbox"]::before {
  content: "";
  display: inline-block;
  width: 1rem;
  height: 1rem;
  border: 2px solid #666;
  border-radius: 4px;
  background-color: #fff;
  transition: all 0.2s ease;
  box-sizing: border-box;
}

[role="checkbox"]:hover::before {
  border-color: #0078d4;
}

[role="checkbox"]:focus::before {
  outline: 2px solid #0078d4;
  outline-offset: 2px;
}

[role="checkbox"][aria-checked="true"]::before {
  background-color: #0078d4;
  border-color: #0078d4;
  background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' width='14' height='14' viewBox='0 0 14 14'><path fill='white' d='M5.2 10.4L2 7.2l1.1-1.1 2.1 2.1L10.9 2.5 12 3.6z'/></svg>");
  background-repeat: no-repeat;
  background-position: center;
}

[role="checkbox"][aria-disabled="true"] {
  opacity: 0.5;
  pointer-events: none;
  cursor: not-allowed;
}
```

Native checkbox элементүүд нь assistive technology-д дамжуулагддаг built-in checked state-тай байдаг. Харин custom checkbox control үүсгэж байгаа бол aria-checked attribute ашиглан төлөвийг илэрхийлэх шаардлагатай.

Хэрэглэгч custom checkbox-тэй харилцах үед checkbox-ийн шинэ төлөвийг aria-checked ашиглан тусгах хэрэгтэй. Checkbox сонгогдсон үед aria-checked нь true болно. Сонгогдоогүй үед false болно.

Native элементүүд нь ихэвчлэн илүү сайн дэмжлэг болон built-in accessibility feature-уудтай байдаг.

Гэхдээ хэрэв custom control заавал үүсгэх шаардлагатай бол ARIA attribute-уудыг ашиглан эдгээр control-уудын төлөвийг assistive technology-д зөв дамжуулах нь маш чухал.

Ерөнхийдөө ARIA attribute-ууд зөв ашиглагдсан эсэх, мөн custom control нь хүртээмжтэй, хэрэглэгчдэд ээлтэй байдлаар ажиллаж байгаа эсэхийг баталгаажуулахын тулд ажлаа үргэлж тест хийж шалгах хэрэгтэй.
