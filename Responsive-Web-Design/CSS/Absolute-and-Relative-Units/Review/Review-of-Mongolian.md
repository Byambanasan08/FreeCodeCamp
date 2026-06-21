**CSS Relative болон Absolute Units Review**

1. Absolute Units

1.1 px (Pixels): Энэ absolute unit нь CSS-д ашиглагддаг тогтмол хэмжээтэй хэмжих нэгж юм. Энэ нь хамгийн түгээмэл absolute unit бөгөөд хэмжээсийг нарийн хянах боломжийг олгодог. **1px** нь үргэлж **1/96 inch**-тэй тэнцүү байдаг.

1.2 in (Inch): Энэ absolute unit нь **96px**-тэй тэнцүү.

1.3 cm (Centimeters): Энэ absolute unit нь **1 inch-ийн 25.2/64**-тэй тэнцүү.

1.4 mm (Millimeters): Энэ absolute unit нь **1 centimeter-ийн 1/10**-тай тэнцүү.

1.5 q (Quarter-Millimeters): Энэ absolute unit нь **1 centimeter-ийн 1/40**-тай тэнцүү.

1.6 pc (Picas): Энэ absolute unit нь **1 inch-ийн 1/6**-тай тэнцүү.

1.7 pt (Points): Энэ absolute unit нь **1 inch-ийн 1/72**-той тэнцүү.
---html---
<link rel="stylesheet" href="styles.css">
<div class="units">
  <div class="unit px">px</div>
  <div class="unit inch">in</div>
  <div class="unit cm">cm</div>
  <div class="unit mm">mm</div>
  <div class="unit q">q</div>
  <div class="unit pc">pc</div>
  <div class="unit pt">pt</div>
</div>
---css---
.units {
  display: flex;
  gap: 12px;
  flex-wrap: wrap;
  align-items: flex-end;
}

.unit {
  background: steelblue;
  color: white;
  text-align: center;
  padding: 4px;
}

.px {
  width: 40px;
  height: 40px;
}

.inch {
  width: 0.5in;
  height: 0.5in;
}

.cm {
  width: 1cm;
  height: 1cm;
}

.mm {
  width: 10mm;
  height: 10mm;
}

.q {
  width: 40q;
  height: 40q;
}

.pc {
  width: 6pc;
  height: 6pc;
}

.pt {
  width: 36pt;
  height: 36pt;
}

2. Relative Units

2.1 Percentages:** Эдгээр relative unit-ууд нь хэмжээ, хэмжээс болон бусад property-уудыг **parent элементтэй нь харьцуулсан хувь хэмжээ** хэлбэрээр тодорхойлох боломжийг олгодог. Жишээлбэл, хэрэв та нэг элементэд **width: 50%** гэж тохируулбал тухайн элемент нь **parent container-ийн өргөний тал хувийг** эзэлнэ.

2.2 em Unit:** Эдгээр unit-ууд нь **тухайн элементийн font size-тэй харьцангуй** байдаг. Хэрэв та **font-size** property дээр **em** ашиглавал текстийн хэмжээ нь **parent элементийн font size-тэй** харьцуулж тодорхойлогдоно.

2.3 rem Unit:** Эдгээр unit-ууд нь **root элемент болох html элементийн font size-тэй** харьцангуй байдаг.

2.4 vh Unit:** **vh** нь **“viewport height”** гэсэн утгатай бөгөөд **1vh** нь **viewport-ийн өндрийн 1%**-тай тэнцүү.

2.5 vw Unit:** **vw** нь **“viewport width”** гэсэн утгатай бөгөөд **1vw** нь **viewport-ийн өргөний 1%**-тай тэнцүү.

<link rel="stylesheet" href="styles.css">
<div class="parent">
  <div class="box percent">50%</div>
  <div class="box em">2em</div>
  <div class="box rem">2rem</div>
  <div class="box vh">10vh</div>
  <div class="box vw">10vw</div>
</div>

---css---
html {
  font-size: 16px;
}

.parent {
  width: 200px;
  font-size: 20px;
  border: 2px dashed #555;
  padding: 10px;
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.box {
  background: seagreen;
  color: white;
  text-align: center;
  padding: 6px;
}

.percent {
  width: 50%;
}

.em {
  font-size: 2em;
}

.rem {
  font-size: 2rem;
}

.vh {
  height: 10vh;
}

.vw {
  width: 10vw;
}

3. calc Function

3.1 calc() Function: **calc()** function-ийг ашиглан та stylesheet дотор шууд тооцоолол хийж **CSS property-ийн утгуудыг динамикаар тодорхойлох** боломжтой. Ингэснээр viewport-ийн хэмжээ эсвэл бусад элементүүд дээр суурилан хэмжээсийг тооцоолж **уян хатан, responsive хэрэглэгчийн интерфэйс** бүтээх боломжтой.
