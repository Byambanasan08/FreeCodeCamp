## CSS хувьсагчийн тойм

### CSS Custom Properties (CSS хувьсагч)

**Тодорхойлолт:** CSS custom properties буюу CSS хувьсагч нь CSS бичигчид тодорхой утгуудыг хадгалж, баримт бичгийн турш дахин ашиглах боломжтойгоор тодорхойлдог элементүүд юм. Энэ нь илүү үр ашигтай, засварлахад хялбар, уян хатан stylesheet хийх боломжийг олгодог хүчирхэг боломж юм. Custom properties нь ялангуяа theme (загвар) өөрчлөх боломжтой дизайн хийхэд их хэрэгтэй. Жишээ нь өөр өөр theme-үүдэд зориулж property-уудыг тодорхойлж болно.

```css
:root {
  --bg-color: white;
  --text-color: black;
}

.dark-theme {
  --bg-color: #333;
  --text-color: white;
}

body {
  background-color: var(--bg-color);
  color: var(--text-color);
}
```

---

### `@property` дүрэм

**Тодорхойлолт:** `@property` дүрэм нь CSS-ийн хүчирхэг боломж бөгөөд custom property-ийг илүү нарийн удирдлагатайгаар тодорхойлох боломж олгодог. Үүнд animation хэрхэн ажиллах, анхны утга (initial value) зэрэг зүйлсийг зааж өгч болно.

```css
@property --property-name {
  syntax: "<type>";
  inherits: true | false;
  initial-value: <value>;
}
```

- **--property-name**: Тодорхойлох custom property-ийн нэр. Бүх custom property-ийн адил хоёр зураас (`--`)-аар эхэлнэ.
- **syntax**: Property-ийн төрлийг тодорхойлно. Жишээ нь `<color>`, `<length>`, `<number>`, `<percentage>` гэх мэт.
- **inherits**: Энэ property нь эцэг элементээсээ утга өвлөх эсэхийг заана.
- **initial-value**: Property-ийн анхны (default) утгыг тодорхойлно.

---

### `@property` ашигласан gradient жишээ

Энэ жишээ нь элемент дээр hover хийх үед gradient жигд animation-тайгаар өөрчлөгдөхийг харуулна.

```html
<link rel="stylesheet" href="styles.css" />

<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

---

### Fallback утга

Custom property ашиглахдаа `var()` функц дотор **fallback утга** (нөөц утга) зааж өгч болно. Энэ нь тухайн хувьсагч тодорхойлогдоогүй үед ашиглагдана.

```css
.button {
  background-color: var(--main-color, #3498db);
}
```
