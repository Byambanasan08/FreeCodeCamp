Вэб Анимейшны API (WAAPI) гэж юу вэ, мөн энэ нь CSS анимейшны шинж чанаруудтай хэрхэн холбогддог вэ?

**Web Animations API (WAAPI)** нь JavaScript дотор шууд анимейшн үүсгэж, удирдах боломжийг олгодог. WAAPI ашигласнаар та анимейшнуудыг илүү динамик байдлаар ажиллуулж, удирдахад хялбар болдог.

WAAPI-г илүү дэлгэрэнгүй авч үзье. Ингэснээр та анимейшнуудыг JavaScript код дотор шууд ашиглаж эхлэх боломжтой болно. WAAPI-ийн үндсэн хэсэг нь **Animation** конструктор бөгөөд энэ нь элементүүдийг динамикаар анимейшн хийх боломж олгодог олон төрлийн instance method болон property-уудыг агуулдаг.

**Animation** конструкторын чухал method-уудын нэг нь **animate()** юм. Энэ нь keyframe болон duration, direction, easing, iterations зэрэг тохиргоонуудыг зааж өгснөөр анимейшн үүсгэх боломжийг олгодог.

animate() method-ийн үндсэн бичиглэл:

```
element.animate(keyframes, options);
```

Жишээ авч үзье.

```
<link rel="stylesheet" href="styles.css" />
<div class="square" id="square"></div>
<script src="index.js"></script>
```

```
body {
  background: #f1f1f1;
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100vh;
}

.square {
  background: #1b1b32;
  width: 10rem;
  aspect-ratio: 1/1;
}
```

```
const square = document.querySelector("#square");

const animation = square.animate(
  [{ transform: "translateX(0px)" }, { transform: "translateX(100px)" }],
  {
    duration: 2000, // анимейшн 2 секунд үргэлжилнэ
    iterations: Infinity, // хязгааргүй давтагдана
    direction: "alternate", // нааш цааш хөдөлнө
    easing: "ease-in-out" // жигд зөөлөн хөдөлгөөн
  }
);
```

Хөтөч дээрх үр дүн: хөх дөрвөлжин хэвтээ чиглэлд нааш цааш хөдөлнө.

**Animation** конструкторын instance method-ууд:

* play()
* pause()
* reverse()
* finish()
* cancel()

Instance property-ууд:

* playbackRate
* currentTime
* startTime
* effect
* timeline
* playState
* finished
* onfinish
* oncancel

Одоо жишээг play(), pause() method болон onfinish property ашиглан өөрчилж үзье.

```
<link rel="stylesheet" href="styles.css" />
<div class="square" id="square"></div>
<button id="playBtn">Play</button>
<button id="pauseBtn">Pause</button>
<script src="index.js"></script>
```

```
body {
  background: #f1f1f1;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
}

.square {
  background: #1b1b32;
  width: 10rem;
  aspect-ratio: 1/1;
  margin-bottom: 20px;
}

button {
  margin: 10px;
  padding: 10px 20px;
  font-size: 16px;
}
```

```
const square = document.querySelector("#square");
const playBtn = document.querySelector("#playBtn");
const pauseBtn = document.querySelector("#pauseBtn");

const animation = square.animate(
  [{ transform: "translateX(0px)" }, { transform: "translateX(200px)" }],
  {
    duration: 5000, // анимейшн 5 секунд үргэлжилнэ
    // iterations: Infinity, // хязгааргүй давтагдана
    direction: "alternate", // нааш цааш хөдөлнө
    easing: "ease-in-out" // зөөлөн хөдөлгөөн
  }
);

// анимейшн дуусах үед мессеж хэвлэх
animation.onfinish = () => {
  console.log("Animation finished!");
};

// "Play" товч дархад анимейшн эхэлнэ
playBtn.addEventListener("click", () => {
  animation.play();
  console.log("Та анимейшнийг эхлүүллээ");
});

// "Pause" товч дархад анимейшн зогсоно
pauseBtn.addEventListener("click", () => {
  animation.pause();
  console.log("Та анимейшнийг түр зогсоолоо");
});
```

Хөтөч дээрх үр дүн: Play товч дархад хөх дөрвөлжин зүүнээс баруун тийш хөдөлнө.

WAAPI нь CSS анимейшны боломжуудыг өргөжүүлж, JavaScript дотор анимейшныг илүү динамик байдлаар удирдах боломж олгодог.

CSS анимейшн ашиглах үед та animation-name, animation-duration, animation-timing-function зэрэг шинж чанаруудыг declarative байдлаар тодорхойлдог. WAAPI-ийн animate() method ашигласнаар мөн адил тохиргоонуудыг хийж болно.

Гол ялгаа нь: animate() method ашиглан үүсгэсэн анимейшныг илүү шууд, динамик байдлаар удирдах боломжтой. Харин CSS анимейшнд та илүү олон custom style тодорхойлж, дараа нь JavaScript-аар trigger хийх шаардлагатай болдог.

CSS анимейшн нь энгийн, declarative анимейшнуудад тохиромжтой. Жишээлбэл: hover эффект, transition, эсвэл нэг удаа ажиллаад дуусах анимейшнууд.

Хэрвээ таны анимейшн хэрэглэгчийн үйлдэлд (click, scroll гэх мэт) хариу үйлдэл үзүүлэх, pause хийх, reverse хийх, хурдыг өөрчлөх шаардлагатай бол WAAPI илүү тохиромжтой сонголт юм.

Мөн та CSS анимейшн ба WAAPI-г хослуулан ашиглаж болно. Ингэснээр CSS-ийн энгийн тохиргоог ашиглахын зэрэгцээ runtime үед анимейшныг илүү нарийн удирдах боломжтой болно.
