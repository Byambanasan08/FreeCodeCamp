requestAnimationFrame() API гэж юу вэ?

Вэб хуудас дээр жигд хөдөлгөөнт дүрс үүсгэх нь хэцүү байж болно, ялангуяа хугацааг (timing) хэрхэн зөв удирдахаа мэдэхгүй байгаа үед. Сайн мэдээ гэвэл `requestAnimationFrame()` API нь үүнийг илүү хялбар болгодог.

`requestAnimationFrame()` нь хөтчийн дараагийн **"screen repaint"** (дэлгэцийг дахин зурах) мөчөөс өмнө хөдөлгөөнт дүрсийнхээ дараагийн алхмыг төлөвлөх боломжийг олгодог арга юм. Ингэснээр хөдөлгөөн маш жигд, харахад тааламжтай болдог.

**Screen repaint** гэдэг нь хөтөч вэб хуудасны харагдах байдлыг шинэчлэх мөчийг хэлнэ. Энэ нь секундэд олон удаа тохиолддог бөгөөд ихэнх дэлгэц дээр секундэд ойролцоогоор 60 удаа (60 FPS - frames per second) явагддаг.



---

### Хэрхэн ашиглах вэ?

`requestAnimationFrame()` аргыг ашиглахын тулд та ердөө түүнийг дуудаж, дотор нь **callback** (буцаан дуудагдах) функцийг дамжуулахад л хангалттай:

```javascript
requestAnimationFrame(callback);
```

#### Хөдөлгөөнт дүрсийн давталт (Loop) үүсгэх

`requestAnimationFrame()`-ийг ихэвчлэн хөдөлгөөнийг зохицуулдаг функц (жишээ нь `animate()`) дотор дууддаг. Мөн хөдөлгөөнийг шинэчлэх үүрэгтэй `update()` функцийг хамт ашигладаг:

```javascript
function animate() {
  // 1. Хөдөлгөөнийг шинэчлэх (байршил өөрчлөх, загвар солих г.м)
  update();

  // 2. Дараагийн frame-ийг (зураглалыг) хүсэх
  requestAnimationFrame(animate);
}
```

`update()` функц дотор жинхэнэ "ид шид" өрнөдөг. Та энд хөдөлгөх гэж буй зүйлийнхээ загвар эсвэл байршлыг өөрчилнө:

```javascript
function update() {
  element.style.transform = `translateX(${position}px)`;
  position += 2; // Алхам бүрт 2 пикселээр хөдөлгөнө
}
```

Хөдөлгөөнийг анхлан эхлүүлэхийн тулд `animate` функцийг `requestAnimationFrame()`-д дамжуулан функцийг гаднаас нь нэг удаа дуудахад хангалттай:

```javascript
requestAnimationFrame(animate);
```

Энэхүү давталт нь таныг зогсоох хүртэл үргэлжлэх болно.

---

### Бүрэн жишээ: Дэлгэц дамжин өнгөрөх карт

Энэ жишээнд "freeCodeCamp is Awesome" гэсэн бичигтэй `div` элемент дэлгэцийн зүүнээс баруун тийш тасралтгүй хөдлөх болно.



**HTML:**
```html
<div id="rect" class="rect">freeCodeCamp is Awesome</div>
```

**CSS:**
```css
body {
  overflow-x: hidden; /* Хэвтээ чиглэлийн гүйлгэх зурвасыг нуух */
}
.rect {
  width: 400px;
  height: 250px;
  background-color: #1b1b32;
  color: #f5f6f7;
  position: absolute;
  display: flex;
  align-items: center;
  justify-content: center;
}
```

**JavaScript:**
```javascript
const rect = document.getElementById("rect");
let position = 0;

function update() {
  // Тэгш өнцөгтийг баруун тийш 2px-ээр хөдөлгөх
  rect.style.left = position + "px";
  position += 2;

  // Хэрэв дэлгэцийн баруун талд гарвал зүүн талд буцааж авчрах
  if (position > window.innerWidth) {
    position = -rect.offsetWidth;
  }
}

function animate() {
  update();
  // Дараагийн frame-ийг хүсэх
  requestAnimationFrame(animate);
}

// Хөдөлгөөнийг эхлүүлэх
requestAnimationFrame(animate);
```

Яагаад setInterval-аас илүү гэж?

`requestAnimationFrame()` нь `setInterval()`-ийг бодвол дараах давуу талтай:
* **Илүү жигд:** Хөтчийн зураглал шинэчлэх мөчтэй яг таарч ажилладаг.
* **Батарей хэмнэнэ:** Хэрэв хэрэглэгч өөр таб руу шилжвэл хөдөлгөөнт дүрс түр зогсож, компьютерын нөөцийг хэмнэдэг.

---

