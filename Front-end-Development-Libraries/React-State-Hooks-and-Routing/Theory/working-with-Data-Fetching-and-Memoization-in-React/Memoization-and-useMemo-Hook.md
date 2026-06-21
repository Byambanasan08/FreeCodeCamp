# Memoization гэж юу вэ, мөн useMemo Hook хэрхэн ажилладаг вэ?

Таны React аппликейшн томрох тусам шаардлагагүй дахин render (re-render) болон өндөр зардалтай (expensive) тооцооллууд нь гүйцэтгэлийг удаашруулж, UI шинэчлэлтүүдийг удаан болгож, нөөцийн хэрэглээг (resource usage) нэмэгдүүлдэг.

Энэ нь ялангуяа complex state management, том жагсаалтууд (large lists), их тооцоолол шаарддаг функцууд, мөн нэг parent-тэй олон component бүхий аппликейшнүүдэд илүү асуудал үүсгэдэг.

Иймээс давтагдсан (redundant) тооцооллуудыг багасгаж, харилцан үйлчлэлийг (interactions) илүү гөлгөр болгох замаар React аппликейшнийг гүйцэтгэлийн хувьд (performance) оновчлох (optimize) шаардлага үүсдэг.

React энэ асуудлыг memoization гэж нэрлэгдэх процессоор шийддэг бөгөөд энэ нь утгууд болон функцуудыг cache (хадгалах) хийж, шаардлагагүй дахин тооцооллоос сэргийлдэг тул таны апп илүү хурдан, илүү хариу үйлдэлтэй (responsive) болдог.

Тодорхойлолтоор, memoization нь өндөр зардалтай функцийн дуудлагын үр дүнг тодорхой аргументуудын дагуу cache (санах)-д хадгалдаг optimization техник юм. Ижил аргументууд дахин өгөгдвөл, функцийг дахин тооцоолохын оронд cache-д хадгалагдсан үр дүнг буцаадаг.

Memoization процесс дараах байдлаар явагдана:

```
Функцийн дуудлагын үр дүнг түүний оролтын аргументуудын хамт хадгална.

Функцийг ажиллуулахын өмнө тухайн аргументуудын үр дүн cache-д аль хэдийн байгаа эсэхийг шалгана.

Хэрэв байгаа бол дахин тооцоолохын оронд cache-д хадгалагдсан үр дүнг буцаана.

Хэрэв байхгүй бол үр дүнг тооцоолж, cache-д хадгалаад дараа нь буцаана.
```

Memoization-ийг ашиглахад developer-ийн туршлагыг сайжруулахын тулд React нь гурван хэрэгсэл (tools)-ийг санал болгодог – React.memo (эсвэл memo), useMemo болон useCallback.

Та таамаглаж байгаачлан useMemo болон useCallback нь hook-ууд, харин React.memo нь component-ийг wrap хийдэг higher-order component (HOC) юм.

Дараагийн хичээлд бид useCallback hook болон React.memo хэрхэн ажилладгийг үзэх болно.

useMemo нь тооцоолсон утгуудыг (computed values) memoize хийх боломж олгодог бол useCallback нь функцийн reference-уудыг мөн адил memoize хийдэг.

" Хэрэв та computed values болон function references гэж юу вэ гэж гайхаж байвал, computed values нь функц ажилласны үр дүнг хэлдэг, харин function references нь функц руу заасан заагч (pointer) буюу санах ойд (memory) байрлах функцийн объект юм. "

Одоо useMemo hook-ийг хэрхэн ашиглахыг харцгаая. useMemo hook-ийн үндсэн синтакс дараах байдалтай:

const memoizedValue = useMemo(
function () {
return computeExpensiveValue(a, b);
},
[a, b]
);

Та useMemo hook-ийг тухайн функцийн эргэн тойронд (wrap) байрлуулахад л хангалттай.

Энэ ExpensiveSquare component нь num prop хүлээн авч, түүнийг ашиглан квадрат (square)-ыг тооцоолно:

function ExpensiveSquare({ num }) {
function calculateSquare(n) {
console.log("Calculating square...");
return n \* n;
}

const squared = calculateSquare(num);
return ( <p>
Square of {num}: {squared} </p>
);
}
export default ExpensiveSquare;

Дараах нь ExpensiveSquare component-ийг ашиглаж буй App component юм:

import { useState, useEffect } from "react";
import ExpensiveSquare from "./components/ExpensiveSquare";

function App() {
const [timer, setTimer] = useState(0);
const [num, setNum] = useState(0);

useEffect(() => {
const interval = setInterval(() => setTimer((c) => c + 1), 1000);
return () => clearInterval(interval);
}, []);

return (

   <div>
     <h1>Timer: {timer} seconds gone</h1>
     <ExpensiveSquare num={num} />
     <button onClick={() => setNum((n) => n + 1)}>Increase Number</button>
   </div>
 );
}

export default App;

useEffect доторх timer нь секунд тутам ажиллах тул calculateSquare функц нь num state хувьсагчийг нэмээгүй байсан ч ажиллах бүртээ дахин ажиллана.

Энэ асуудлыг шийдэхийн тулд бид useMemo hook-ийг ашиглаж, функцийн дуудлагыг үүн дотор wrap хийж, num хувьсагчийг dependency болгон зааж өгч болно:

// useMemo hook-ийг import хийнэ
import { useMemo } from "react";

function ExpensiveSquare({ num }) {
function calculateSquare(n) {
console.log("Calculating square...");
return n \* n;
}

// const squared = calculateSquare(num);
// Үүний оронд функцийн дуудлагыг useMemo дотор wrap хийнэ
const squared = useMemo(() => calculateSquare(num), [num]);

return ( <p>
Square of {num}: {squared} </p>
);
}

export default ExpensiveSquare;

Энэ нь функцийн үр дүнг cache хийснээр memoize хийх бөгөөд тооцоолол зөвхөн num хувьсагч өөрчлөгдөх үед хийгдэнэ, харин component дотор өөр зүйл өөрчлөгдөх үед хийгдэхгүй.

calculateSquare функцийн дуудлага нь одоо timer өөрчлөгдөх бүрт ажиллахгүй, харин эхний render болон num өөрчлөгдөх үед л ажиллана.
