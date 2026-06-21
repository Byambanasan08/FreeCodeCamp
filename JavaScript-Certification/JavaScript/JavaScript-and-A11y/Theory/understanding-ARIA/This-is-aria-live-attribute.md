What Is the aria-live Attribute, and How Does It Work? 

aria-live attribute гэж юу вэ, мөн хэрхэн ажилладаг вэ?

---

aria-live attribute нь таны хуудсан дээр live region үүсгэдэг бөгөөд энэ нь тухайн live region доторх динамик контентын өөрчлөлтүүдийг үүсэх үед нь screen reader ашиглагчдад мэдэгдэхэд ашиглагддаг.

Live region-ийн түгээмэл хэрэглээ нь үйлдэл хийсний дараа гарч ирдэг мессежүүд (жишээ нь алдааны мессеж эсвэл баталгаажуулалтын мессеж), тодорхой хугацаанд шинэчлэгддэг контент (жишээ нь ticker, marquee, эсвэл countdown timer), эсвэл ерөнхий төлөвийн мессежүүд (жишээ нь процессын шинэчлэлтийн тухай мэдээлэл) юм.

Screen reader-ийн унших фокус нэг дор зөвхөн нэг газарт байж чаддаг тул хэрэв хэрэглэгчийн фокус хуудасны өөр хэсэгт байвал контентын өөрчлөлтийг анзаарахгүй өнгөрөх боломжтой. Live region нь хуудсан дээр бодит цагт болж буй өөрчлөлтүүдийг screen reader ашиглагчдад автоматаар мэдэгдэх боломж олгодог. Live region байхгүй бол screen reader хэрэглэгчид харааны бэрхшээлгүй хэрэглэгчид бүх хуудсыг нэг дор харах боломжтой байдагтай адил боломжгүй тул чухал шинэчлэлтүүдийг алдах магадлалтай.

Энэ attribute нь мэдээллийн чухал байдлаас хамааран гурван боломжит утгатай байдаг.

Хэрэв aria-live-ийг assertive утгатай тохируулбал тухайн шинэчлэлт маш чухал гэсэн үг. Энэ нь хамгийн өндөр priority-тэй бөгөөд хэрэглэгчид шууд мэдэгдэх ёстой.

Энэ нь screen reader одоогоор хийж буй ямар ч уншилтыг тасалж, live region дахь контентын өөрчлөлтийг зарлах болно гэсэн үг юм. Ийм тасалдал нь хэрэглэгчдэд ихээхэн төвөг учруулж болзошгүй тул assertive утгыг зөвхөн цаг хугацаанд мэдрэмтгий эсвэл маш чухал мэдэгдэлд ашиглах хэрэгтэй.

```html id="k7h3dr"
<link rel="stylesheet" href="styles.css">

<div class="session-warning" aria-live="assertive">
  <p>Your session will expire in 30 seconds.</p>
</div>

<script src="index.js"></script>

.session-warning {
  background-color: #ffcc00;
  color: #000;
  font-family: system-ui, sans-serif;
  font-weight: 500;
  padding: 1em 1.5em;
  border-radius: 6px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
  opacity: 0;
  transform: translateY(20px);
  transition: opacity 0.4s ease, transform 0.4s ease;
}

.session-warning.visible {
  opacity: 1;
  transform: translateY(0);
}

.session-warning.fade-out {
  opacity: 0;
  transform: translateY(10px);
}

document.addEventListener("DOMContentLoaded", () => {
  const warning = document.querySelector(".session-warning");

  setTimeout(() => {
    warning.classList.add("visible");
  }, 100);

  setTimeout(() => {
    warning.classList.add("fade-out");
  }, 8000);

  warning.addEventListener("transitionend", () => {
    if (warning.classList.contains("fade-out")) {
      warning.remove();
    }
  });
});
```

Дараагийн priority-ийн утга нь polite юм.

Энэ утга нь шинэчлэлт яаралтай биш гэсэн утгатай бөгөөд screen reader нь одоогийн уншилт дуусах эсвэл хэрэглэгч бичихээ зогсоох хүртэл хүлээж байгаад шинэчлэлтийг зарлана. Ихэнх live region-ууд polite утгыг ашигладаг.

```html id="b3r4zm"
<link rel="stylesheet" href="styles.css">

<div class="upload-success" aria-live="polite">
  <p>File successfully uploaded</p>
</div>

<script src="index.js"></script>

.upload-success {
  background-color: #4caf50;
  color: #fff;
  font-family: system-ui, sans-serif;
  font-weight: 500;
  padding: 1em 1.5em;
  border-radius: 6px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
  opacity: 0;
  transform: translateY(-10px);
  transition: opacity 0.4s ease, transform 0.4s ease;
}

.upload-success.visible {
  opacity: 1;
  transform: translateY(0);
}

.upload-success.fade-out {
  opacity: 0;
  transform: translateY(-10px);
}

document.addEventListener("DOMContentLoaded", () => {
  const success = document.querySelector(".upload-success");

  setTimeout(() => {
    success.classList.add("visible");
  }, 100);

  setTimeout(() => {
    success.classList.add("fade-out");
  }, 8000);

  success.addEventListener("transitionend", () => {
    if (success.classList.contains("fade-out")) {
      success.remove();
    }
  });
});
```

aria-live-ийн хамгийн бага priority утга нь off бөгөөд энэ нь тухайн контент keyboard focus дээр байгаагүй бол шинэчлэлтийг зарлахгүй гэсэн үг. Бодит байдал дээр энэ утга бараг ашиглагддаггүй, учир нь хэрэглээний хүрээ маш хязгаарлагдмал бөгөөд бүх screen reader дээр тогтвортой хэрэгжээгүй байдаг. Хэрэв танд live region хэрэгтэй бол ихэнх тохиолдолд polite ашиглах бөгөөд зөвхөн маш чухал мэдэгдэлд assertive ашиглах хэрэгтэй.

Мөн анхаарах нэг зүйл бол хэрэв шинэчлэгдэж буй мэдээлэл нь ARIA role нь alert, log, marquee, status, эсвэл timer гэсэн элемент дотор байвал aria-live attribute заавал шаардлагагүй. Учир нь эдгээр role-ууд нь аль хэдийн default aria-live утгатай байдаг. Гэхдээ та aria-live-ийг element дээр шууд тохируулснаар default утгыг өөрчилж болно.

aria-live-ийн зөв утгыг сонгох нь шинэчлэгдэж буй мэдээллийн чухал байдлаас хамаарна.

Хэрэв шинэчлэлт яаралтай бол хэрэглэгчид assertive ашиглан шууд мэдэгдэх хэрэгтэй. Гэхдээ гэнэтийн тасалдал нь хэрэглэгчийг төөрөгдүүлэх, хэрэглэгчийн туршлагад сөргөөр нөлөөлж болзошгүй тул зөвхөн үнэхээр шаардлагатай үед ашиглах хэрэгтэй.

Хэрэв шинэчлэлт нь одоогийн үйлдэл дуусах хүртэл хүлээж болох бол polite ашиглах хэрэгтэй.

aria-live attribute нь веб хуудсан дээр контент динамикаар өөрчлөгдөж байгааг assistive technology-д мэдэгдэх боломж олгодог. Энэ нь хөгжлийн бэрхшээлтэй хэрэглэгчдэд чухал мэдэгдэл болон шинэчлэлтүүдийг цаг тухайд нь авахад тусалдаг.

aria-live-ийг зөв ашигласнаар хэрэглэгчид эдгээр шинэчлэлтүүдийг тэдгээрийн чухал байдлаас хамааран ойлгож авах боломжтой болно.
