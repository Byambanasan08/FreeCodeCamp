**Element User Action Pseudo-classes-ийн жишээнүүд юу вэ?**

Хэрэглэгчид өгдөг **visual feedback** нь веб дизайны маш чухал хэсэг юм. Жишээлбэл, хэрэглэгч вэбсайт дээрх элементүүдтэй харилцах үед, тухайлбал **button дээр hover хийх** эсвэл **link дээр дарах** үед визуал дохио авах нь чухал. Ийм feedback нь интерактив элементүүдийн төлөвийг хэрэглэгч ойлгоход тусалдаг, жишээлбэл **link өмнө нь зочилсон эсэхийг** харуулах зэрэг.

CSS дахь **user action pseudo-classes** нь JavaScript эсвэл бусад програмчлалын хэл ашиглах шаардлагагүйгээр ийм төрлийн feedback үзүүлэх боломжийг олгодог тусгай keyword-ууд юм.

Эдгээр pseudo-class-уудад **:hover, :active, :focus, :visited** болон бусад орно. Эдгээрийг ашигласнаар хэрэглэгчийн харилцан үйлчлэл дээр үндэслэн элементүүдийн **гадаад төрхийг өөрчилж**, нийт **user experience-ийг сайжруулах** боломжтой болдог.

Одоо эдгээр **user action pseudo-class**-уудын заримыг илүү дэлгэрэнгүй авч үзье.

1. :active pseudo-class** нь элемент хэрэглэгчээр **идэвхжүүлэгдсэн үед** стиль хэрэгжүүлдэг. Жишээлбэл, хэрэглэгч **button** эсвэл **link** дээр дарах үед энэ төлөв идэвхжинэ. Энэ нь хэрэглэгчийн үйлдлийг систем таньж байгааг харуулах **шууд визуал feedback** өгдөг.
<link rel="stylesheet" href="styles.css" />
<a href="#">Example link</a>

--css--
a:active {
  color: crimson;
}

2. :hover pseudo-class** нь хэрэглэгч **хулгана** эсвэл өөр **заагч төхөөрөмж** ашиглан элемент дээр очих үед идэвхжинэ. Хөгжүүлэгчид үүнийг **button**, **link**, эсвэл хэрэглэгчийн анхааралд хариу үйлдэл үзүүлэх ёстой аливаа элементэд **visual feedback** өгөхөд ихэвчлэн ашигладаг. Доорх нь хэрэглэгч дарахаасаа өмнө **hover хийх button-ийн жишээ** юм.

<link rel="stylesheet" href="styles.css" />
<button class="btn">Hover Over Me</button>

---css---
.btn:hover {
  background-color: darkgreen;
  color: white;
  cursor: pointer;
}

3. :focus pseudo-class** нь элемент **focus төлөв авах үед** стиль хэрэгжүүлдэг. Энэ нь ихэвчлэн **keyboard navigation** ашиглах үед эсвэл хэрэглэгч **form input** дээр дарах үед идэвхжинэ. Энэ нь зөвхөн visual feedback өгөхөөс гадна **accessibility**-д маш чухал үүрэгтэй. Ялангуяа keyboard-ийг түлхүү ашигладаг хэрэглэгчид **ямар элементтэй харилцаж байгаагаа** амархан таних боломжийг олгодог.

Доорх нь **дарах үед эсвэл keyboard ашиглан сонгогдох үед focus төлөв авдаг input field-ийн жишээ** юм.
<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>
---css--
input:focus {
  outline: 2px solid darkgreen;
  border-radius: 4px;
}

4. :visited pseudo-class** нь хэрэглэгч **өмнө нь зочилсон link-ийг** сонгодог. Энэ нь хэрэглэгчид **аль хуудсуудыг аль хэдийн үзсэн**, аль хуудсуудыг **хараахан үзээгүй** байгааг ялгаж ойлгоход тусалдаг. Доорх нь link зочилсон үед **anchor текстийн өнгийг cyan болгон өөрчилж** байгаа жишээ юм.

<link rel="stylesheet" href="styles.css" />
<a href="https://www.example.com" target="_blank">Visit Example.com</a>

--css--
a:visited {
  color: cyan;
}

5. CSS дахь **:checked pseudo-class** нь **checkbox** болон **radio button** зэрэг **form элементүүд сонгогдсон (checked) үед** тэдгээрийг стильдэх боломжийг олгодог. Энэ pseudo-class нь эдгээр элементүүдийн харагдах байдлыг өөрчлөн **хэрэглэгчийн туршлагыг сайжруулахад** ашигтай байдаг. Хэдийгээр browser-ууд эдгээрт анхдагч стиль өгдөг ч та **өөрийн хүссэнээр customization хийх** боломжтой.

Доорх нь вебсайт дээрх **нөхцөлийг зөвшөөрөх checkbox-ийн жишээ** юм.

**АНХААРУУЛГА:** Энэ жишээнд ашиглагдсан CSS-ийн зарим property-уудыг одоохондоо судлаагүй байж болно. Энэ нь зөвхөн **custom checkbox хэрхэн бүтээж болох талаар ойлголт өгөх зорилготой**. Та эдгээр зүйлс хэрхэн ажилладгийг **дараагийн хичээлүүд болон workshop-ууд дээр** дэлгэрэнгүй судлах болно.

<link rel="stylesheet" href="styles.css" />
<form>
  <label>
  Agree <input class="checkbox" type="checkbox" />
  </label>
</form>

--css--

.checkbox {
  appearance: none;
  width: 18px;
  height: 18px;
  border: 2px solid #ccc;
  border-radius: 4px;
  display: inline-block;
  position: relative;
  cursor: pointer;
  transition: all 0.25s ease;
  vertical-align: middle; 
}

.checkbox:hover {
  border-color: #888;
}

.checkbox:checked {
  background-color: #4caf50;
  border-color: #4caf50;
}

.checkbox:checked::after {
  content: "";
  position: absolute;
  left: 4px;
  top: 0px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}

.checkbox:focus {
  outline: 2px solid #90caf9;
  outline-offset: 2px;
}

Энэ жишээнд бид **appearance** property-ийг **none** гэж тохируулж, browser-аас checkbox input-д анхдагчаар өгдөг стильийг устгаж байна. Хэрэглэгч checkbox-ийг сонгох үед түүний **background өнгө ногоон** болно.

Action pseudo-class-уудын бусад жишээнүүд:

* **:focus-within** — элемент өөрөө эсвэл түүний аль нэг descendant **focus** төлөвтэй үед тухайн элементэд стиль хэрэгжүүлэхэд ашиглагдана.
* **:enabled** — одоогоор **идэвхтэй (enabled)** байгаа form button эсвэл бусад элементүүдийг сонгоход ашиглагдана.
* **:disabled** — **идэвхгүй (disabled)** байгаа form button эсвэл бусад элементүүдийг сонгоход ашиглагдана.
* **:target** — URL-ийн **fragment** (URL доторх **# тэмдгийн дараах хэсэг**) тухайн элемент рүү зааж байгаа үед түүнд стиль хэрэгжүүлэхэд ашиглагдана.
