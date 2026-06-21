# JavaScript and Accessibility Review

JavaScript ба Accessibility тойм

---

**1. Common ARIA Accessibility Attributes**

**1.1 aria-expanded attribute:** Toggle (эсвэл disclosure) функцийн төлөвийг screen reader хэрэглэгчдэд дамжуулахад ашиглагддаг.

```html id="m8x2qf"
<button id="menuBtn" aria-expanded="false">Menu</button>

<script>
  const btn = document.getElementById("menuBtn");

  btn.addEventListener("click", () => {
    const expanded = btn.getAttribute("aria-expanded") === "true";
    btn.setAttribute("aria-expanded", String(!expanded));
  });
</script>
```

**1.2 aria-haspopup attribute:** Энэ state нь interactive элемент идэвхжих үед pop-up элемент нээгдэхийг илэрхийлэхэд ашиглагддаг. Та aria-haspopup attribute-ийг зөвхөн pop-up нь дараах role-уудын аль нэгтэй үед ашиглаж болно: menu, listbox, tree, grid, эсвэл dialog. aria-haspopup-ийн утга нь эдгээр role-уудын аль нэг эсвэл true байх ёстой (энэ нь menu-тэй адил утгатай).

```html id="o2k9ws"
<button
  id="menubutton"
  aria-haspopup="menu"
  aria-controls="filemenu"
  aria-expanded="false"
>
  File
</button>

<ul id="filemenu" role="menu" aria-labelledby="menubutton" hidden>
  <li role="menuitem" tabindex="-1">Open</li>
  <li role="menuitem" tabindex="-1">New</li>
  <li role="menuitem" tabindex="-1">Save</li>
  <li role="menuitem" tabindex="-1">Delete</li>
</ul>

<script>
  const button = document.getElementById("menubutton");
  const menu = document.getElementById("filemenu");

  button.addEventListener("click", () => {
    const expanded = button.getAttribute("aria-expanded") === "true";

    button.setAttribute("aria-expanded", String(!expanded));
    menu.hidden = expanded;
  });
</script>
```

**1.3 aria-checked attribute:** Энэ attribute нь элемент checked төлөвтэй эсэхийг илэрхийлэхэд ашиглагддаг. Энэ нь ихэвчлэн custom checkbox, radio button, switch, listbox үүсгэхэд ашиглагддаг.

```html id="t6p4ny"
<div
  id="checkbox"
  role="checkbox"
  aria-checked="true"
  tabindex="0"
  style="
    display: inline-flex;
    align-items: center;
    gap: 6px;
    cursor: pointer;
  "
>
  <span
    id="box"
    aria-hidden="true"
    style="
      width: 16px;
      height: 16px;
      border: 2px solid blue;
      background: blue;
      display: inline-block;
    "
  ></span>
  Checkbox
</div>

<script>
  const checkbox = document.getElementById("checkbox");
  const box = document.getElementById("box");

  const toggle = () => {
    const checked = checkbox.getAttribute("aria-checked") === "true";
    checkbox.setAttribute("aria-checked", String(!checked));
    box.style.background = checked ? "white" : "black";
  };

  checkbox.addEventListener("click", toggle);

  checkbox.addEventListener("keydown", (e) => {
    if (e.key === " " || e.key === "Enter") {
      e.preventDefault();
      toggle();
    }
  });
</script>
```

**1.4 aria-disabled attribute:** Энэ state нь элемент зөвхөн assistive technology (жишээ нь screen reader)-д идэвхгүй байгааг илэрхийлэхэд ашиглагддаг.

```html id="y9b3ve"
<div
  id="editBtn"
  role="button"
  tabindex="-1"
  aria-disabled="true"
  style="opacity: 0.5; cursor: not-allowed;"
>
  Edit
</div>

<button id="toggle">Toggle Disabled</button>

<script>
  const editBtn = document.getElementById("editBtn");
  const toggleBtn = document.getElementById("toggle");

  toggleBtn.addEventListener("click", () => {
    const disabled = editBtn.getAttribute("aria-disabled") === "true";

    editBtn.setAttribute("aria-disabled", String(!disabled));
    editBtn.tabIndex = disabled ? 0 : -1;
    editBtn.style.opacity = disabled ? "1" : "0.5";
    editBtn.style.cursor = disabled ? "pointer" : "not-allowed";
  });
</script>
```

**1.5 aria-selected attribute:** Энэ state нь элемент сонгогдсон эсэхийг илэрхийлэхэд ашиглагддаг. Та энэ state-ийг tabbed interface, listbox, эсвэл grid зэрэг custom control-ууд дээр ашиглаж болно.

```html id="z3k7pu"
<div role="tablist">
  <button role="tab" aria-selected="true">Tab 1</button>
  <button role="tab" aria-selected="false">Tab 2</button>
  <button role="tab" aria-selected="false">Tab 3</button>
</div>

<script>
  const tabs = document.querySelectorAll('[role="tab"]');

  tabs.forEach((tab) => {
    tab.addEventListener("click", () => {
      tabs.forEach((t) => t.setAttribute("aria-selected", "false"));
      tab.setAttribute("aria-selected", "true");
    });
  });
</script>
```

**1.6 aria-controls attribute:** Нэг элемент өөр нэг элементийг удирдаж байгааг холбох (associate) зорилгоор ашиглагддаг. Энэ нь assistive technology ашиглагчдад элементүүдийн хоорондын харилцааг ойлгоход тусалдаг.

```html id="k8w2rd"
<div role="tablist">
  <button role="tab" id="tab1" aria-controls="section1" aria-selected="true">
    Tab 1
  </button>
  <button role="tab" id="tab2" aria-controls="section2" aria-selected="false">
    Tab 2
  </button>
  <button role="tab" id="tab3" aria-controls="section3" aria-selected="false">
    Tab 3
  </button>
</div>
```

**hidden attribute:** Идэвхгүй panel-уудыг харагдах байдлаар болон assistive technology хэрэглэгчдээс нуухад ашиглагддаг.

---

**2. Working with Live Regions and Dynamic Content**

**2.1 aria-live attribute:** Вэб хуудасны тодорхой хэсгийг live region болгодог бөгөөд тухайн хэсгийн доторх шинэчлэлтүүдийг screen reader автоматаар зарлах боломж олгодог, ингэснээр хэрэглэгчид чухал өөрчлөлтийг алдахгүй.

**2.2 polite value:** Ихэнх live region-ууд энэ утгыг ашигладаг. Энэ нь шинэчлэлт яаралтай биш гэсэн утгатай бөгөөд screen reader одоогийн уншилт дуусах эсвэл хэрэглэгч одоогийн үйлдлээ дуусгах хүртэл хүлээгээд дараа нь шинэчлэлтийг зарлана.

Дараах нь JavaScript ашиглан динамикаар шинэчлэгддэг live region-ийн жишээ юм:

```html id="v5n6ac"
<div aria-live="polite" id="status"></div>

<button id="updateStatus">Update Status</button>

<script>
  const statusEl = document.getElementById("status");
  const btn = document.getElementById("updateStatus");

  btn.addEventListener("click", () => {
    statusEl.textContent = "Your file has been successfully uploaded.";
  });
</script>
```

**2.3 contenteditable attribute:** Элементийг live editor болгодог бөгөөд хэрэглэгчид текст талбар шиг контентыг өөрчлөх боломж олгодог. Хэрэв contenteditable хэсэгт харагдах label эсвэл гарчиг байхгүй бол aria-label attribute ашиглан accessible нэр өгөх шаардлагатай, ингэснээр screen reader хэрэглэгчид тухайн editable хэсгийн зорилгыг ойлгоно.

```html id="p4y9kt"
<div
  contenteditable="true"
  aria-label="Note editor"
  id="editor"
  style="border: 1px solid #ccc; padding: 8px;"
>
  Editable content goes here
</div>

<p id="status" aria-live="polite"></p>

<script>
  const editor = document.getElementById("editor");
  const status = document.getElementById("status");

  editor.addEventListener("input", () => {
    status.textContent = "Content updated";
  });
</script>
```

---

**3. focus and blur Events**

**3.1 blur event:** Элемент фокус алдах үед ажиллана.

```html id="r8k2bm"
<input
  id="nameInput"
  type="text"
  placeholder="Type here and click outside"
  aria-label="Name input"
/>

<p id="status" aria-live="polite"></p>

<script>
  const input = document.getElementById("nameInput");
  const status = document.getElementById("status");

  input.addEventListener("blur", () => {
    status.textContent = "Input lost focus";
  });
</script>
```

**3.2 focus event:** Элемент фокус авах үед ажиллана.

```html id="q1d7nx"
<input
  id="emailInput"
  type="email"
  placeholder="Click or tab into this field"
  aria-label="Email input"
/>

<p id="status" aria-live="polite"></p>

<script>
  const input = document.getElementById("emailInput");
  const status = document.getElementById("status");

  input.addEventListener("focus", () => {
    status.textContent = "Input received focus";
  });
</script>
```
