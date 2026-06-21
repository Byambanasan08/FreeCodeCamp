**Input Pseudo-classes-ийн жишээнүүд юу вэ?**

Вэб форм бүтээх үед **input элементүүдийн харагдах байдал болон үйлдэл** маш чухал байдаг. Хэрэглэгчийн үйлдэлд хариу үзүүлдэг input-уудтай форм нь **user experience-ийг сайжруулахад** ихээхэн нөлөөтэй бөгөөд хэрэглэгчдэд **төөрөгдөл эсвэл бухимдал үүсгэхгүй** байх ёстой.

CSS нь формыг илүү ойлгомжтой, хэрэглэгчдэд ээлтэй болгоход туслах **олон төрлийн input pseudo-class**-уудыг санал болгодог. Одоо эдгээр pseudo-class-уудыг дэлгэрэнгүй авч үзье.

1. :focus pseudo-class** нь хэрэглэгч **input элемент дээр дарах** эсвэл **сонгох үед** тухайн элементийг сонгох боломжийг олгодог. Ингэснээр идэвхтэй input талбарт анхаарал татагдаж, хэрэглэгч **одоогоор хаана бичиж байгаагаа** амархан ойлгох боломжтой болно.

<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>

---css---
input:focus {
  border: 2px solid crimson;
  outline: none;
}

2. Нэрнээсээ харахад **:hover pseudo-class** нь хэрэглэгч **курсороо элемент дээр байрлуулах үед** идэвхжинэ. Энэ нь хэрэглэгч input-тэй харилцахаас өмнө **визуал feedback** өгч, тухайн input **үйлдэл хийхэд бэлэн байгааг** ойлгуулдаг.

<link rel="stylesheet" href="styles.css" />
<form>
  <input type="text" />
</form>

--css--
input:hover {
  background-color: orange;
}

Дээрх жишээнд хэрэглэгч **input элемент дээр hover хийх үед** түүний **background өнгө orange** болж өөрчлөгдөнө. Ингэснээр хэрэглэгчид тухайн талбар **харилцахад бэлэн байгааг** ойлгуулдаг.

3. :checked pseudo-class** нь хэрэглэгч **radio button** эсвэл **checkbox** сонгох үед тэдгээрийг өөрөөр стильдэх боломжийг олгодог. Ингэснээр хэрэглэгч **аль сонголтыг хийснээ** амархан харах боломжтой болдог.

Доорх нь вебсайт дээрх **нөхцөлийг зөвшөөрөх checkbox-ийн жишээ** юм.

**АНХААРУУЛГА:** Энэ жишээнд ашиглагдсан CSS-ийн зарим property-уудыг одоохондоо судлаагүй байж болно. Энэ нь зөвхөн **custom checkbox хэрхэн бүтээж болох талаар ойлголт өгөх зорилготой**. Та эдгээр зүйлс хэрхэн ажилладгийг **дараагийн хичээлүүд болон workshop-ууд дээр** дэлгэрэнгүй судлах болно.

<link rel="stylesheet" href="styles.css" />
<form>
  <label>
  Agree <input class="checkbox" type="checkbox" />
  </label>
</form>

---css---
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

4. :required pseudo-class** нь **required attribute**-тай **input элементүүдийг** сонгодог. Энэ нь хэрэглэгчид тухайн талбарыг **форм илгээхийн өмнө заавал бөглөх шаардлагатай** гэдгийг илэрхийлдэг.

Доорх нь **зарим required input талбаруудтай form-ийн жишээ** юм.

<link rel="stylesheet" href="styles.css" />
<form action="#">
  <label for="name">Name:</label>
  <input type="text" id="name" name="name" required />

  <label for="email">Email:</label>
  <input type="email" id="email" name="email" required />

  <label for="phone">Phone Number:</label>
  <input type="tel" id="phone" name="phone" />

  <button type="submit">Submit</button>
</form>

--css---

input:required {
  border: 2px solid orange;
}

5. Формыг шалгах (validation) үед та **:valid pseudo-class**-ийг ашиглан **шалгуурыг хангаж буй input талбаруудыг** стильдэх боломжтой. Харин **:invalid pseudo-class**-ийг ашиглан **шалгуурыг хангахгүй байгаа input талбаруудыг** стильдэж болно. Ихэвчлэн **зөв (valid) input-д ногоон**, **буруу (invalid) input-д улаан** өнгө ашигладаг.

Доорх нь **:valid pseudo-class** ашигласан жишээ юм.

<link rel="stylesheet" href="styles.css" />
<form>
  <label for="email">Email:</label>
  <input type="email" id="email" name="email" />
</form> 

--css---

input:valid {
  border-color: green;
}

6. Here is an example of using the :invalid pseudo-class: 
<link rel="stylesheet" href="styles.css" />
<form>  
  <label for="email">Email:</label>
  <input type="email" id="email" name="email" />
</form>

---css---
input:invalid {
  border-color: crimson;
}

**:disabled pseudo-class** нь **идэвхгүй (disabled) input элементүүдийг** сонгож стильдэх боломжийг олгодог. Эдгээр элементүүд нь **disabled attribute**-тай байдаг бөгөөд энэ нь хэрэглэгчид тэдгээртэй харилцахыг хориглодог. Input disabled төлөвтэй үед **дарахааргүй, focus авахгүй, мөн засварлах боломжгүй** байдаг.

Доорх нь **label** болон **disabled input элемент** бүхий жишээ юм.

CSS хэсэгт бид тухайн **disabled input**-ийг сонгож, түүнд **background өнгийг lightgray** болгож, мөн **cursor pointer**-ийг **not-allowed** болгож өөрчилж байна.

<link rel="stylesheet" href="styles.css" />
<form>
  <label for="name">Name:</label>
  <input class="text-input" type="text" id="name" name="name" disabled />
</form>

--css---

.text-input:disabled {
  background-color: lightgray;
  cursor: not-allowed;
}

**cursor: not-allowed;** CSS property-ийн утга нь **ямар нэг үйлдэл зөвшөөрөгдөөгүй** гэдгийг илэрхийлэхийн тулд cursor-ийн харагдах байдлыг өөрчилдөг.

Энэ property-ийг элемент дээр ашиглах үед cursor нь **дугуй дотор ташуу зураастай тэмдэг** (ихэвчлэн диагональ шугамтай дугуй) хэлбэртэй болж харагдана. Энэ нь тухайн элемент **интерактив биш**, эсвэл **дарах боломжгүй** гэдгийг хэрэглэгчид ойлгуулдаг.

Input pseudo-class-уудын бусад жишээ болон тэдгээрийн үүрэг:

* **:autofill** — browser автоматаар хадгалсан мэдээллээр бөглөсөн input талбаруудад стиль хэрэгжүүлнэ.
* **:optional** — заавал бөглөх шаардлагагүй, хоосон үлдээж болох input элементүүдийг стильдэнэ.
* **:in-range** болон **:out-of-range** — утга нь тогтоосон хязгаарын **дотор** эсвэл **гадна** байгаа эсэхээс хамааран элементүүдийг стильддэг.

