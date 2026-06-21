setTimeout болон setInterval аргууд хэрхэн ажилладаг вэ?

Програм бичих явцад ямар нэгэн үйлдлийг тодорхой хугацааны дараа ажиллуулах эсвэл тогтмол давтамжтайгаар давтах шаардлага байнга гардаг. Үүнд `setTimeout()` болон `setInterval()` аргууд тусална. Хоёр арга хоёулаа хоёр параметр авдаг: **функц** болон **хугацааны хоцрогдол (delay)**.



#### 1. setTimeout()

`setTimeout()` нь заасан хугацааны дараа нэг удаа үйлдэл хийх боломжийг олгодог.

**Үндсэн синтакс:**
```javascript
setTimeout(functionToRun, delay);
```
* `functionToRun`: Хугацаа дууссаны дараа ажиллах код.
* `delay`: Хүлээх хугацаа (миллисекундээр). 1 секунд = 1000 миллисекунд.

**Жишээ:**
```javascript
setTimeout(function () {
  console.log("Энэ текст 3 секундын дараа харагдана");
}, 3000);
```

Мөн аноним функцийг (arrow function) дараах байдлаар ашиглаж болно:
```javascript
setTimeout(() => {
  console.log("Энэ текст 3 секундын дараа харагдана");
}, 3000);
```

#### 2. setInterval()

`setInterval()` нь функцийг тогтоосон хугацаанд дахин дахин давтан ажиллуулдаг. Энэ нь хэдэн секунд тутамд дуугардаг сэрүүлэгтэй адил юм. Өгөгдлийг байнга шинэчлэх эсвэл тасралтгүй хөдөлгөөнт дүрс (animation) үүсгэхэд энэ арга тохиромжтой.

**Үндсэн синтакс:**
```javascript
setInterval(functionToRun, delay);
```

**Жишээ:**
```javascript
setInterval(() => {
  console.log("Энэ текст 2 секунд тутамд хэвлэгдэнэ");
}, 2000);
```

#### 3. Үйлдлийг зогсоох: clearInterval() болон clearTimeout()

`setInterval()` нь функцийг тасралтгүй ажиллуулдаг тул та түүнийг зогсоох шаардлагатай болно. Үүний тулд `clearInterval()` аргыг ашиглана.



`clearInterval()`-д тухайн интервалын **ID**-г дамжуулах хэрэгтэй. Интервал үүсгэхдээ түүнийг хувьсагчид оноосноор ID-г нь хадгалж авдаг.

**Жишээ (5 секундын дараа интервалыг зогсоох):**
```javascript
const intervalID = setInterval(() => {
  console.log("Энэ үйлдэл 5 секундын дараа зогсоно");
}, 1000);

setTimeout(() => {
  clearInterval(intervalID);
}, 5000);
```

Мөн `clearTimeout()` ашиглан `setTimeout()`-ийг ажиллахаас нь өмнө цуцалж болно:

```javascript
let timeoutID = setTimeout(() => {
  console.log("Энэ код ажиллахгүй");
}, 5000);

clearTimeout(timeoutID);
```

**Бодит амьдрал дээрх жишээ (Товчлуур дээр дарж цуцлах):**

```html
<h1>Timeout Цуцлах Жишээ</h1>
<button id="cancelButton">Timeout-ийг цуцлах</button>

<script>
  let timeoutID = setTimeout(() => {
    console.log("Хэрэв цуцлахгүй бол энэ текст 5 секундын дараа харагдана");
  }, 5000);

  document.querySelector("#cancelButton").addEventListener("click", () => {
    clearTimeout(timeoutID);
    console.log("Timeout цуцлагдлаа!");
  });
</script>
```

---
