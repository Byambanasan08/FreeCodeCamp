# useCallback Hook болон React.memo хэрхэн ажилладаг вэ?

Өмнөх хичээлд та memoization болон useMemo hook хэрхэн ажилладгийг сурсан.

Энэ хичээлд та useCallback hook болон React.memo хэрхэн ажилладгийг сурах болно.

Өмнөх хичээлд бид мөн useCallback нь функцийн reference-уудыг memoize хийхэд ашиглагддаг гэж дурдсан.

React.memo-ийн хувьд, энэ нь component-ийг memoize хийх боломж олгодог бөгөөд prop нь өөрчлөгдөөгүй үед шаардлагагүй дахин render (re-render)-ээс сэргийлдэг.

useCallback hook-ийн үндсэн синтакс дараах байдалтай:

const handleClick = useCallback(() => {
// код энд орно
}, [dependency]);

React.memo-ийн үндсэн синтакс дараах байдалтай:

const MemoizedComponent = React.memo(({ prop }) => {
return (
<>
{/_ Presentation _/}
</>
)
});

useCallback hook-ийн жишээг харцгаая:

import { useState, useEffect } from "react";

function Counter() {
const [count, setCount] = useState(0);

const handleClick = () => {
setCount((prevCount) => prevCount + 1);
};

useEffect(() => {
console.log("useEffect runs");
}, [handleClick]);

return ( <div> <p>Count: {count}</p> <button onClick={handleClick}>Increment</button> </div>
);
}

export default Counter;

Энэ component дотор effect нь handleClick өөрчлөгдөх бүрт ажиллана, учир нь handleClick функц нь render бүр дээр дахин үүсгэгдэж байна.

Үүнийг засахын тулд та handleClick функцийг useCallback hook ашиглан memoize хийж, render-үүдийн хооронд ижил зүйл гэж React-д хэлэх хэрэгтэй, ингэснээр дахин үүсгэгдэхгүй:

import { useState, useEffect, useCallback } from "react";

function Counter() {
const [count, setCount] = useState(0);

// handleClick функцийг useCallback ашиглан memoize хийнэ
const handleClick = useCallback(() => {
setCount((prevCount) => prevCount + 1);
}, []);

useEffect(() => {
console.log("useEffect runs");
}, [handleClick]);

return ( <div> <p>Count: {count}</p> <button onClick={handleClick}>Increment</button> </div>
);
}

export default Counter;

Одоо handleClick функц нь render бүр дээр дахин үүсгэгдэхгүй.

# React.memo (эсвэл memo) higher-order function болон useCallback hook хэрхэн хамтран ажилладгийг (in tandem) харуулахын тулд, useCallback хэрэгтэй боловч одоогоор ашиглаагүй handleClick функцтэй Counter component-ийг харцгаая:

import { useState, useEffect, useCallback } from "react";
import CounterChild from "./CounterChild";

function Counter() {
const [count, setCount] = useState(0);
const [timer, setTimer] = useState(new Date().toLocaleTimeString());

const handleClick = () => {
setCount(count + 1);
};

useEffect(() => {
const interval = setInterval(() => {
setTimer(new Date().toLocaleTimeString());
}, 1000);

```
return () => clearInterval(interval);
```

}, []);

return ( <div> <h1>Time: {timer}</h1> <p>Count: {count}</p> <button onClick={handleClick}>Increment</button> <CounterChild onClick={handleClick} /> </div>
);
}

export default Counter;

Энэ функц нь мөн секунд тутам шинэчлэгддэг timer state-тэй. Энэ нь timer өөрчлөгдөх бүрт component дахин render хийж, handleClick функц render бүр дээр дахин үүсгэгдэхэд хүргэдэг.

Тиймээс handleClick-ийг useCallback ашиглан memoize хийх шаардлагатай.

Дараах нь CounterChild component:

const CounterChild = ({ onClick }) => {
console.log("CounterChild component rendered");
return <button onClick={onClick}>Increment from Child</button>;
};

export default CounterChild;

Энэ CounterChild component нь onClick prop авдаг бөгөөд үүгээр дамжуулан та үүнээс мөн counter-ийг нэмэгдүүлэх боломжтой.

CounterChild component нь Counter component-ийн child тул timer өөрчлөгдөж Counter дахин render хийх бүрт мөн render хийгдэнэ. Тиймээс CounterChild-ийг мөн memoize хийх шаардлагатай.

Memoization байхгүй үед, timer секунд тутам шинэчлэгдэж component дахин render хийгдэх тул CounterChild component мөн дахин render хийгддэг.

Үүнээс сэргийлэхийн тулд та CounterChild component-ийг React.memo ашиглан memoize хийх хэрэгтэй:

import React from "react";

const CounterChild = React.memo(({ onClick }) => {
console.log("CounterChild component rendered");
return <button onClick={onClick}>Increment from Child</button>;
});

export default CounterChild;

React.memo ашиглан CounterChild-ийг memoize хийсний дараа ч бүх зүйл төгс (optimal) ажиллахгүй байна.

Энэ нь handleClick функц render бүр дээр дахин үүсгэгдэж байгаатай холбоотой тул үүнийг мөн useCallback ашиглан memoize хийх хэрэгтэй, ингэснээр React-д энэ функц render-үүдийн хооронд ижил хэвээр байх ёстойг хэлнэ:

const handleClick = useCallback(() => {
setCount((prevCount) => prevCount + 1);
}, [count]);

Одоо component зөвхөн count state өөрчлөгдөх үед л дахин render хийгдэнэ.
