addEventListener арга хэрхэн ажилладаг вэ?

Хэрэглэгч товчлуур дээр дарах эсвэл формын утга өөрчлөгдөхийг **"event"** (үйл явдал) гэж нэрлэдэг. Таны програмуудад эдгээр үйл явдлыг "сонсох" болон хариу үйлдэл үзүүлэх арга зам хэрэгтэй болно.

`addEventListener()` арга нь эдгээр үйл явдлыг сонсоход ашиглагддаг. Энэ нь хоёр аргумент авдаг: таны сонсохыг хүсэж буй **event** болон тухайн event тохиолдох үед дуудагдах **функц**.

Үндсэн синтакс:

```javascript
element.addEventListener("event", listener);
```

* **element:** Үйл явдлыг хянах HTML элемент.
* **event:** Сонсох үйл явдлын төрөл (жишээ нь "click").
* **listener:** Үйл явдал тохиолдох үед мэдэгдэл хүлээн авах объект. Ихэнх тохиолдолд энэ нь таны үйл явдлыг боловсруулахаар тодорхойлсон функц байна.



Жишээ:

```javascript
element.addEventListener("click", () => {
  // click event тохиолдох үед ажиллах код
});
```

Та мөн дараах байдлаар функцийн холбоосыг (reference) дамжуулж болно:

```javascript
function handleClick() {
  // click event тохиолдох үед ажиллах код
}

element.addEventListener("click", handleClick);
```

Үйл явдлыг боловсруулах тусдаа функц үүсгэх нь таны кодыг уншихад илүү хялбар, арчлахад дөхөм болгодог.

`listener` аргумент нь мөн `null` байж болно, эсвэл `EventListener` интерфэйсийг ашигладаг объект байж болно. `EventListener` интерфэйс нь `handleEvent()` гэж нэрлэгддэг ганц аргыг тодорхойлдог. Энэ арга нь таны сонсож буй үйл явдал тохиолдох бүрт автоматаар дуудагддаг. Энэ интерфэйсийг ашигласнаар нэг объект шаардлагатай бол олон үйл явдлыг боловсруулах боломжтой болдог. Гэвч ихэнх тохиолдолд танд энэ интерфэйс шаардлагагүй бөгөөд оронд нь функц дамжуулахад хангалттай.

Одоо энэ нь хэрхэн ажилладагийг илүү сайн ойлгохын тулд жишээ авч үзье. Бидэнд `btn` гэсэн id-тай товчлуур байна:

```html
<button id="btn">Show alert</button>
```

Бид энэ товчлуур дээрх "click" event-ийг сонсож, товчлуур дарагдах үед анхааруулга (alert) харуулахыг хүсэж байна. Эхлээд JavaScript кодондоо тухайн товчлуур руу хандах хэрэгтэй. Дараа нь click event-ийг сонсох event listener нэмнэ:

```html
<button id="btn">Show alert</button>
<script src="index.js"></script>
```

```javascript
const btn = document.getElementById("btn");

btn.addEventListener("click", () => alert("You clicked the button"));
```

Одоо товчлуур дарагдах бүрт хэрэглэгчийн дэлгэц дээр ийм анхааруулга мессеж харагдах болно:
`You clicked the button`



Таны сонсож болох өөр нэг төрлийн үйл явдал бол "input" event юм. Энэ нь оруулах талбарын (input element) утга өөрчлөгдөх үед өдөөгддөг.

Жишээ нь:

```html
<input type="text" id="input" placeholder="Type something" />
```

Бид энэ input элемент дээрх "input" event-ийг сонсож, хэрэглэгч ямар нэг зүйл бичих бүрт түүний утгыг консол дээр хэвлэхийг хүсэж байна:

```html
<input type="text" id="input" placeholder="Type something" />
<script src="index.js"></script>
```

```javascript
const input = document.getElementById("input");

input.addEventListener("input", () => {
  console.log(input.value);
});
```

`addEventListener()` аргыг ашиглан сонсож болох өөр олон үйл явдал бий. Түгээмэл хэрэглэгддэг зарим үйл явдлуудад `mouseover`, `mouseout`, `keydown`, `keyup`, болон `submit` багтана.

Ирээдүйн хичээлүүдээр бид илүү олон үйл явдлууд болон `addEventListener()`-ийг хэрхэн ашиглах талаар үзэх болно.

---
