# Modal Dialog дизайн хийхэд баримтлах шилдэг практикууд юу вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS болон JavaScript код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино. Жишээнүүдийн preview-г харахын тулд **interactive editor**-ийг идэвхжүүлэх шаардлагатай.

**Modal** гэж юу вэ? Энэ нь вэбсайт үндсэн контентын **дээр давхар гарч ирдэг pop-up** төрлийн цонх юм. **HTML** дээр modal үүсгэхийн тулд ашиглаж болох **dialog** элемент байдаг.

Modal гарч ирэх үед түүний **арын контент ихэвчлэн бүдэг (dimmed)** харагддаг. Энэ нь хэрэглэгчийг **анхаарлаа төвлөрүүлэх ёстой хэсэгт** буюу энэ тохиолдолд **modal дээр** төвлөрөхөд тусалдаг.

Ихэнхдээ хэрэглэгчид **modal-ийн гадна тал дээр дарж хаах боломжтой** байлгах нь сайн практик гэж үздэг.
----HTML----
<link rel="stylesheet" href="styles.css">
<button id="open-modal">Open Modal</button>
<dialog>
  <h2>Subscribe to our Newsletter!</h2>
  <p>Get the latest updates and offers.</p>
  <button>Subscribe</button>
  <button>Close</button>
</dialog>

<script src="index.js"></script>
---CSS---
dialog {
  border: none;
  border-radius: 8px;
  padding: 20px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

dialog::backdrop {
  background: rgba(0, 0, 0, 0.5);
}
----JS---
const dialog = document.querySelector('dialog');
const closeButton = dialog.querySelector('button:last-of-type');
const openModalButton = document.getElementById('open-modal');

closeButton.addEventListener('click', () => {
  dialog.close();
});

openModalButton.addEventListener('click', () => {
  dialog.showModal();
});

// Close the modal when clicking outside of it
dialog.addEventListener('click', (event) => {
  const rect = dialog.getBoundingClientRect();
  const isInDialog = (
    event.clientX >= rect.left &&
    event.clientX <= rect.right &&
    event.clientY >= rect.top &&
    event.clientY <= rect.bottom
  );
  if (!isInDialog) {
    dialog.close();
  }
}); 

Modal дээр ихэвчлэн **маш тод харагдах товчнууд** байрладаг. Эдгээрийг **CTA (Call-to-Action)** гэж нэрлэдэг. Modal ашиглан хэрэглэгчийн урсгалыг түр тасалдуулж байгаа гол зорилго нь тэднээр **тодорхой үйлдэл хийлгэх** явдал байдаг тул эдгээр товчнууд **амархан танигдахуйц** байх ёстой.

Modal нь мөн **хаах товч (close button)**-той байх ёстой. Хэдийгээр та хэрэглэгчийг **CTA дээр дарахыг** хүсэж байж болох ч хэрэглэгчид modal-оос **гарч**, өмнө хийж байсан үйлдлээ **үргэлжлүүлэх боломж** олгох нь чухал юм.
---HTML---
<link rel="stylesheet" href="styles.css">
<button id="open-modal">Open Modal</button>
<dialog>
  <h2>Subscribe to our Newsletter!</h2>
  <p>Get the latest updates and offers.</p>
  <button class="cta">Subscribe</button>
  <button class="close">Close</button>
</dialog>
<script src="index.js"></script>

---CSS---
.cta {
  background-color: #007BFF;
  color: white;
  border: none;
  padding: 10px 20px;
  border-radius: 4px;
  cursor: pointer;
}

.close {
  background-color: transparent;
  color: #007BFF;
  border: none;
  padding: 10px 20px;
  cursor: pointer;
}

--JS---
const dialog = document.querySelector('dialog');
const closeButton = dialog.querySelector('.close');
const openModalButton = document.getElementById('open-modal');

closeButton.addEventListener('click', () => {
  dialog.close();
});

openModalButton.addEventListener('click', () => {
  dialog.showModal();
});

// Close the modal when clicking outside of it
dialog.addEventListener('click', (event) => {
  const rect = dialog.getBoundingClientRect();
  const isInDialog = (
    event.clientX >= rect.left &&
    event.clientX <= rect.right &&
    event.clientY >= rect.top &&
    event.clientY <= rect.bottom
  );
  if (!isInDialog) {
    dialog.close();
  }
});

Мэдээж хэрэг, modal-той холбоотой **accessibility** асуудлууд байдаг. Жишээлбэл, элементүүдийн **focus**-ийг зөв удирдах шаардлагатай байдаг. Гэсэн хэдий ч хэрэв та эдгээр **ерөнхий практикуудыг** эхлэх суурь болгон ашиглавал цааш хөгжүүлэхэд **бат бөх үндэс** бүрдэнэ.
