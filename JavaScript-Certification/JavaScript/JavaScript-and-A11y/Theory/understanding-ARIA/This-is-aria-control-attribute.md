What Is the aria-controls Attribute, and How Does It Work? 

aria-controls attribute гэж юу вэ, мөн хэрхэн ажилладаг вэ?

---

aria-controls attribute нь хуудсан дээр нэг элемент нь өөр нэг элементийн оршин байх байдал (presence)-ийг удирдаж байгаа үед тэдгээрийн хооронд programmatic холбоо үүсгэхэд ашиглагддаг. Энэ холбоо нь screen reader хэрэглэгчдэд control хэрхэн ажиллаж байгааг илүү сайн ойлгоход тусалдаг. Түгээмэл хэрэглээ нь өөр өөр контент хэсгүүдийн харагдах байдлыг удирддаг tab-уудын цуглуулга, эсвэл menu-ийн харагдах байдлыг нээж хаадаг button зэрэг юм.

Энэ хэрхэн ажилладгийг харахын тулд жишээ авч үзье. Энэ tabbed interface жишээнд бид гурван button бүхий div элементтэй:

```html id="t4g9vd"
<link rel="stylesheet" href="styles.css">
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

[role="tablist"] {
  display: flex;
  border-bottom: 2px solid #ccc;
  margin-bottom: 1em;
  gap: 4px;
}

[role="tab"] {
  background: #f5f5f5;
  border: 1px solid #ccc;
  border-bottom: none;
  border-radius: 4px 4px 0 0;
  padding: 8px 16px;
  cursor: pointer;
  font-size: 14px;
  color: #333;
  transition: background 0.2s, color 0.2s;
}

[role="tab"]:hover,
[role="tab"]:focus {
  background: #e8f0fe;
  outline: none;
}

[role="tab"][aria-selected="true"] {
  background: #fff;
  border-color: #ccc;
  border-bottom: 2px solid #fff;
  color: #000;
  font-weight: 600;
  position: relative;
  top: 1px; 
}

[role="tab"]:focus-visible {
  outline: 2px solid #0078d4;
  outline-offset: 2px;
}
```

Энэ div нь role="tablist" ашиглан tab-уудын бүлгийг агуулж байгааг илэрхийлдэг.

Button бүр tab-ийг илэрхийлдэг бөгөөд role attribute нь tab гэж тохируулагдсан байдаг. Ихэнх tabbed interface-д эхний tab panel анхнаасаа харагддаг тул эхний button дээр aria-selected attribute true гэж тохируулагдсан байдаг бөгөөд энэ нь холбогдох контент хэсэг одоогоор харагдаж байгааг илэрхийлдэг. aria-controls attribute нь button бүрийг өөрийн удирдаж буй контент хэсэгтэй холбох үүрэгтэй.

Дараах нь эдгээр tab-уудтай харгалзах гурван контент хэсэг юм:

```html id="1x6pqn"
<link rel="stylesheet" href="styles.css">
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

<div id="section1" role="tabpanel" aria-labelledby="tab1">
  Section 1 content
</div>

<div id="section2" role="tabpanel" aria-labelledby="tab2" hidden>
  Section 2 content
</div>

<div id="section3" role="tabpanel" aria-labelledby="tab3" hidden>
  Section 3 content
</div>
<script src="index.js"></script>

[role="tablist"] {
  display: flex;
  border-bottom: 2px solid #ccc;
  margin-bottom: 1em;
  gap: 4px;
  background: #fafafa;
  padding: 0.25em;
}

[role="tab"] {
  background: #f5f5f5;
  border: 1px solid #ccc;
  border-bottom: none;
  border-radius: 4px 4px 0 0;
  padding: 8px 16px;
  cursor: pointer;
  font-size: 14px;
  color: #333;
  transition: background 0.2s, color 0.2s;
}

[role="tab"]:hover,
[role="tab"]:focus {
  background: #e8f0fe;
  outline: none;
}

[role="tab"][aria-selected="true"] {
  background: #fff;
  border-color: #ccc;
  border-bottom: 2px solid #fff;
  color: #000;
  font-weight: 600;
  position: relative;
  top: 1px;
}

[role="tab"]:focus-visible {
  outline: 2px solid #0078d4;
  outline-offset: 2px;
}

[role="tabpanel"] {
  border: 1px solid #ccc;
  border-radius: 0 4px 4px 4px;
  padding: 16px;
  background-color: #fff;
  color: #333;
  font-size: 15px;
  line-height: 1.4;
}

[role="tabpanel"][hidden] {
  display: none;
}

const tabs = document.querySelectorAll('[role="tab"]');
const tabList = document.querySelector('[role="tablist"]');

tabs.forEach(tab => {
  tab.addEventListener('click', () => {
    activateTab(tab);
  });

  tab.addEventListener('keydown', (e) => {
    const key = e.key;
    const currentIndex = Array.from(tabs).indexOf(tab);
    let newIndex = null;

    if (key === 'ArrowRight') {
      newIndex = (currentIndex + 1) % tabs.length;
    } else if (key === 'ArrowLeft') {
      newIndex = (currentIndex - 1 + tabs.length) % tabs.length;
    } else if (key === 'Home') {
      newIndex = 0;
    } else if (key === 'End') {
      newIndex = tabs.length - 1;
    }

    if (newIndex !== null) {
      tabs[newIndex].focus();
      activateTab(tabs[newIndex]);
    }
  });
});

function activateTab(tab) {
  const tabPanels = document.querySelectorAll('[role="tabpanel"]');

  tabs.forEach(t => {
    t.setAttribute('aria-selected', 'false');
    t.setAttribute('tabindex', '-1');
  });

  tabPanels.forEach(panel => panel.hidden = true);

  tab.setAttribute('aria-selected', 'true');
  tab.removeAttribute('tabindex');

  const panelId = tab.getAttribute('aria-controls');
  const panel = document.getElementById(panelId);
  panel.hidden = false;
  tab.focus();
}
```

Контентын хэсэг бүр role attribute нь tabpanel гэж тохируулагдсан бөгөөд aria-labelledby attribute нь харгалзах tab-ийг зааж, panel-д хүртээмжтэй нэр өгдөг. hidden attribute нь одоогоор сонгогдоогүй контент хэсгүүдийг нуухад ашиглагддаг. Контент хэсгийн id бүр нь тухайн button дээрх aria-controls attribute-ийн утгатай таарч байна. section1 id нь эхний button дээрх aria-controls утгатай, section2 нь хоёр дахь button-тай, section3 нь гурав дахь button-тай таарч байна. Ингэснээр tab болон түүний контент хэсгүүдийн хооронд холбоо үүсдэг.

Өөр өөр контент хэсгүүдийн хооронд шилжихийн тулд JavaScript ашиглан тухайн хэсгийн hidden attribute болон button дээрх aria-selected attribute-ийг одоогоор харагдаж байгаа хэсгээс хамааран шинэчлэх шаардлагатай. Нэг удаад зөвхөн нэг хэсэг л харагдах ёстой бөгөөд тэр хэсэг hidden attribute-гүй байна, мөн түүний button дээр aria-selected true байна. Бусад хэсгүүд hidden attribute-тэй, button-ууд нь aria-selected false байх ёстой.

Tabs нь aria-controls attribute-ийн түгээмэл хэрэглээ боловч нэг элемент өөр нэг элементийн харагдах байдал эсвэл зан үйлийг удирддаг бусад нөхцөлд мөн ашиглаж болно. Жишээ нь accordion, dropdown menu, болон modal зэрэг.

Дараагийн удаа та элементүүдийн харагдах байдлыг удирдах хэрэглэгчийн интерфэйс зохиохдоо controlling элемент болон controlled элемент хоорондын холбоог тогтоохын тулд aria-controls attribute ашиглахыг бодолцоорой.
