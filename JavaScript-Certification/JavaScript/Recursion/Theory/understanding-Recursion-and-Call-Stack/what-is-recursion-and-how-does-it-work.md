Recursion гэж юу вэ, мөн хэрхэн ажилладаг вэ?

Recursion нь нэлээн төвөгтэй (complicated) ойлголт бөгөөд function-ийг base-case-д хүрэх хүртэл давтан (repeatedly) дуудахад ашиглагддаг. Уламжлалт loop-оос ялгаатай нь recursion нь гүн нь тодорхойгүй (unknown depth) бүтэцтэй зүйлсийг, жишээлбэл гүн nested object/array-ууд эсвэл file tree-тэй ажиллах боломжийг олгодог. Мөн та үүнийг илүү энгийн даалгаварт, жишээлбэл өгөгдсөн тооноос доош тоолох (countdown) зэрэгт ашиглаж болно.

Одоо яг үүнийг хийх function бүтээцгээе. Бид function-аа recursiveCountdown гэж нэрлэнэ, мөн энэ нь нэг тоо (number) хүлээж авах ёстой. Бид энэ тоог console-д хэвлэнэ:

```js id="q4m8xy"
const recursiveCountdown = (number) => {
  console.log(number);
};

recursiveCountdown(5);
```

Одоо хэрэв бид энэ function-ийг дуудаж 5 тоог дамжуулбал, 5 console дээр хэвлэгдэнэ. Гэхдээ өөр юу ч болохгүй – мөн 5 гэдэг тоо countdown биш нь ойлгомжтой.

Бид function-ийн recursive хэсгийг бичиж эхлэхээс өмнө base case-ийг эхлээд тодорхойлох хэрэгтэй. Хэрэв та base case тодорхойлоогүй бол таны код санах ойн (memory) хязгаарыг давж, crash болох хүртэл ажиллах болно.

```js id="t7k2vn"
const recursiveCountdown = (number) => {
  if (number < 1) {
    return;
  }
  console.log(number);
};

recursiveCountdown(5);
```

Манай base case-ийн хувьд, тоо 1-ээс бага болсон үед countdown зогсох ёстой. Энэ base case-д хүрэхэд бид return хийж function-ийн гүйцэтгэлийг зогсооно.

Одоо бид base case-ийг аюулгүйгээр бэлтгэсэн тул recursion-ийг тохируулж болно. Function-ийг recursive болгодог гол зүйл нь өөрийгөө (itself) дуудаж байгаа явдал юм. Энэ тохиолдолд бид тоог хэвлэсний дараа function-ийг дахин дуудахыг хүсэж байна. Гэхдээ countdown хийхийн тулд дараагийн тоо нь нэгээр бага байх ёстой:

```js id="z9p3wr"
const recursiveCountdown = (number) => {
  if (number < 1) {
    return;
  }
  console.log(number);
  recursiveCountdown(number - 1);
};

recursiveCountdown(5);
```

Энэ код нь console дээр 5, 4, 3, 2, болон 1 гэсэн тоонуудыг хэвлэнэ.

Бид таван тоогоо авч чадлаа! Харин бид дээш (count up) тоолохыг хүсвэл яах вэ? Шинэ function бичихийн оронд бид log болон recursive call-ийн байрлалыг сольж болно:

```js id="x4m9zp"
const recursiveCountdown = (number) => {
    if (number < 1) {
        return;
    }
    recursiveCountdown(number - 1);
    console.log(number);
  };

recursiveCountdown(5);
```

Энэ нь console дээр 1, 2, 3, 4, болон 5 гэсэн тоонуудыг хэвлэнэ.

Гэхдээ яагаад ингэж ажилладаг вэ? Үүнийг ойлгохын тулд та call stack-ийг ойлгох хэрэгтэй. Call stack нь JavaScript хэрхэн function call-уудыг хянаж (track) болон шийдвэрлэдэг (resolve) механизмыг хэлнэ. Stack нь сүүлд орсон нь түрүүлж гардаг (last-in-first-out) queue шиг ажилладаг. Үүнийг илүү сайн ойлгохын тулд function-д бага зэрэг logging нэмье:

```js id="n8v2qr"
const recursiveCountdown = (number) => {
  console.log(`Function execution started for number: ${number}`);
  if (number < 1) {
    console.log(`Base case reached, begin resolving stack`);
    return;
  }
  console.log(`Calling recursiveCountdown with number: ${number - 1}`);
  recursiveCountdown(number - 1);
  console.log(`Function execution completed for number: ${number}`);
};

recursiveCountdown(5);
```

Бид энд дөрвөн чухал statement нэмсэн. Эхний log нь function call эхэлж гүйцэтгэгдэж эхлэх үед ажиллана. Гурав дахь log нь recursive function дуудагдахаас өмнө ажиллана. Харин дөрөв дэх log нь function гүйцэтгэл дуусах үед ажиллана. Үр дүн нь:

```
Function execution started for number: 5
Calling recursiveCountdown with number: 4
Function execution started for number: 4
Calling recursiveCountdown with number: 3
Function execution started for number: 3
Calling recursiveCountdown with number: 2
Function execution started for number: 2
Calling recursiveCountdown with number: 1
Function execution started for number: 1
Calling recursiveCountdown with number: 0
Function execution started for number: 0
Base case reached, begin resolving stack
Function execution completed for number: 1
Function execution completed for number: 2
Function execution completed for number: 3
Function execution completed for number: 4
Function execution completed for number: 5
```

Гэхдээ энэ хэрхэн болдог вэ? Энэ үед call stack гол үүрэг гүйцэтгэнэ. Бид recursiveCountdown(5)-ийг дуудахад, энэ function call нь call stack дээр нэмэгдэнэ.
Тухайн function call нь recursiveCountdown(4)-ийг дуудах шаардлагатай цэгт хүрэхэд, тэр нь зогсож, тэр үр дүнг хүлээх хэрэгтэй болдог. Энэ хооронд recursiveCountdown(4) нь call stack дээр нэмэгдэж, recursiveCountdown(5)-ийн дээр байрлана.

Тухайн function call нь recursiveCountdown(3)-ийг дуудах шаардлагатай цэгт хүрэхэд, тэр нь зогсож, тэр үр дүнг хүлээх хэрэгтэй болдог. Энэ хооронд recursiveCountdown(3) нь call stack дээр нэмэгдэж, recursiveCountdown(4)-ийн дээр байрлана.

Тухайн function call нь recursiveCountdown(2)-ийг дуудах шаардлагатай цэгт хүрэхэд, тэр нь зогсож, тэр үр дүнг хүлээх хэрэгтэй болдог. Энэ хооронд recursiveCountdown(2) нь call stack дээр нэмэгдэж, recursiveCountdown(3)-ийн дээр байрлана.

Тухайн function call нь recursiveCountdown(1)-ийг дуудах шаардлагатай цэгт хүрэхэд, тэр нь зогсож, тэр үр дүнг хүлээх хэрэгтэй болдог. Энэ хооронд recursiveCountdown(1) нь call stack дээр нэмэгдэж, recursiveCountdown(2)-ийн дээр байрлана.

Эцэст нь тухайн function call нь recursiveCountdown(0)-ийг дуудах шаардлагатай цэгт хүрэхэд, тэр нь зогсож, тэр үр дүнг хүлээх хэрэгтэй болдог. Энэ хооронд recursiveCountdown(0) нь call stack дээр нэмэгдэж, recursiveCountdown(1)-ийн дээр байрлана.

Гэхдээ recursiveCountdown(0) нь өөр function дуудахгүй – энэ нь base case-д хүрч, эрт return хийдэг. Тэр function-ийн гүйцэтгэл дууссан тул тухайн function call-ийг “resolved” гэж үзэж болно. Call resolved болох үед энэ нь stack-аас хасагдана.

Одоо recursiveCountdown(1) нь тухайн call-ийг хүлээхээ больж, stack-ийн орой дээр ирж, гүйцэтгэлээ үргэлжлүүлэх боломжтой болно.

recursiveCountdown(1) resolve болж, stack-аас хасагдаж, recursiveCountdown(2)-ыг гүйцэтгэлээ үргэлжлүүлэх боломжтой болгоно.

recursiveCountdown(2) resolve болж, stack-аас хасагдаж, recursiveCountdown(3)-ыг гүйцэтгэлээ үргэлжлүүлэх боломжтой болгоно.

recursiveCountdown(3) resolve болж, stack-аас хасагдаж, recursiveCountdown(4)-ийг гүйцэтгэлээ үргэлжлүүлэх боломжтой болгоно.

recursiveCountdown(4) resolve болж, stack-аас хасагдаж, recursiveCountdown(5)-ийг гүйцэтгэлээ үргэлжлүүлэх боломжтой болгоно.

Эцэст нь recursiveCountdown(5) resolve болж, stack-аас хасагдана. Одоо call stack хоосон болсон тул recursion дууслаа!

Энэ бол JavaScript дахь recursion хэрхэн ажилладгийн үндсэн тойм юм. Энэ нь нэлээн төвөгтэй ойлголт тул та код болон log statement-уудтай ажиллаж, call stack-ийн зан төлөвт (behavior) дасах хэрэгтэй.

Сонирхолтой баримт (fun fact): Бид base case байхгүй үед код санах ой дуусахад crash болдог гэж ярьсан. Учир нь recursion нь call stack дээр function call-уудыг тасралтгүй нэмсээр байгаад stack overflow болдог. Энэ нь програмчлалын алдарт community-ийн нэртэй адилхан.
