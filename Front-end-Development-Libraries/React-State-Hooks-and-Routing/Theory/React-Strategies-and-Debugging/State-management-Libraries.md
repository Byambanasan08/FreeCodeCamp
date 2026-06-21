# State Management Libraries гэж юу вэ, мөн хэзээ ашиглах ёстой вэ?

Таны аппликейшн томрох тусам component-уудын хооронд өгөгдөл хэрхэн урсаж (data flow) байгааг удирдах нь төвөгтэй болж эхэлдэг.

Эхлээд эхлэх үед React-ийн useState hook хангалттай байж болох ч, та боломжууд (features) нэмэх тусам дараах асуудлуудтай тулгарч магадгүй:

```
Хэрэглэхгүй component-уудаар дамжуулан props дамжуулах, үүнийг prop drilling гэж нэрлэдэг
Аппликейшний өөр өөр хэсгүүдийн хооронд өгөгдлийг синк (sync) байлгах
Олон component-д нэгэн зэрэг нөлөөлөх (affect) төвөгтэй шинэчлэлтүүдийг боловсруулах
```

Эдгээр болон бусад сорилтууд гарч ирж болох бөгөөд энэ нь кодын санг (codebase) засварлах (maintain), debug хийх, болон тестлэхэд илүү хэцүү болгодог. Ийм үед state management library-ууд хэрэг болдог — тэд component-ууд шаардлагатай өгөгдлөө авах эсвэл шинэчлэх төвлөрсөн (centralized) орчныг бий болгодог.

Танд байгаа хэд хэдэн state management сонголтууд болон тэдгээрийг хэзээ ашиглах талаар харцгаая.

Context API нь React-д суурилагдсан (built-in) state manager бөгөөд гуравдагч талын сан (third-party library) ашиглахгүйгээр component-уудын хооронд state хуваалцах боломж олгодог. Энэ нь useState hook-оос илүү сайжруулсан (upgrade) арга тул theme солих (theme toggling) эсвэл хэрэглэгчийн нэвтрэлтийн (authentication) төлөв зэрэгт тохиромжтой.

Гэхдээ Context API нь олон дахин (frequent) шинэчлэлтүүдийг сайн удирдаж чаддаггүй бөгөөд шаардлагагүй re-render үүсгэж болдог тул eCommerce болон social media платформ зэрэг төвөгтэй state шаардлагатай аппликейшнүүдэд төдийлөн тохиромжгүй.

Дараах нь Context API-ийн үндсэн хэрэглээг харуулсан counter component юм:

import { useState, createContext } from 'react';

const CounterContext = createContext();

const CounterProvider = ({ children }) => {
const [count, setCount] = useState(0);

return (
<CounterContext.Provider value={{ count, setCount }}>
{children}
</CounterContext.Provider>
);
};

export { CounterContext, CounterProvider };

Энэ код нь context болон provider үүсгэж, count state-ийг аппликейшний хэмжээнд хуваалцаж байна.

CounterProvider нь useState hook ашиглан count state болон түүний setter-ийг эхлүүлж (initialize) удирддаг. Дараа нь эдгээрийг Provider-аар дамжуулан child component-ууд руу өгдөг.

Тиймээс та бүх аппликейшнээ CounterProvider-оор хүрээлбэл, count state нь аппликейшний хаанаас ч хандах боломжтой болно.

CounterProvider-ийг аппликейшнээ хэрхэн wrap хийхийг харцгаая:

import { CounterProvider } from './context/CounterContext';

function App() {
return ( <CounterProvider>
{/_ App components _/} </CounterProvider>
);
}

export default App;

Мөн count state-ийг хэрхэн ашиглахыг харцгаая:

import React, { useContext } from 'react';
import { CounterContext } from '../context/CounterContext';

const Counter = () => {
const { count, setCount } = useContext(CounterContext);

return (
<>

<div style={{ textAlign: 'center' }}> <h1>Context API Counter</h1>
<button style={{ marginRight: '5px' }} onClick={() => setCount(count - 1)}>
Decrease </button> <span>{count}</span>
<button style={{ marginLeft: '5px' }} onClick={() => setCount(count + 1)}>
Increase </button> </div>
</>
);
};

export default Counter;

Таны харж байгаачлан, count болон түүний setter функц setCount нь useContext функцээр дамжин эхлүүлэгдэж (initialize) байна.

Одоогийн count state дараа нь харуулагдаж, хэрэглэгч decrement болон increment товч дээр дарахад setCount ашиглан count state-ийг бууруулах болон нэмэгдүүлэхэд ашиглагдаж байна.

Өөр нэг алдартай state management сан бол Redux бөгөөд энэ нь React-тэй хамт ашиглагддаг хамгийн түгээмэл state management сангуудын нэг юм. Энэ нь олон жилийн турш ашиглагдаж ирсэн бөгөөд eCommerce, social media платформ, форум зэрэг томоохон аппликейшнүүдэд тохиромжтой.

Redux нь төвлөрсөн store болон state шинэчлэлтүүдийг хатуу (strict) хянах замаар state management-ийг гүйцэтгэдэг. Энэ нь actions, reducers, болон middleware ашигласан урьдчилан таамаглах боломжтой (predictable) загварыг ашигладаг.

Actions нь таны аппликейшнээс Redux store руу өгөгдөл илгээдэг мэдээллийн багц (payload) бөгөөд ихэвчлэн хэрэглэгчийн үйлдлүүдээс үүдэлтэй байдаг.

Reducers нь эдгээр actions-д хариу үйлдэл үзүүлж state хэрхэн өөрчлөгдөхийг тодорхойлдог функцууд бөгөөд state-ийг immutable байдлаар шинэчлэхийг хангадаг.

Нөгөө талаас middleware нь action dispatch хийх болон reducer хооронд гүүр (bridge) болж ажилладаг бөгөөд Redux-ийн үндсэн урсгалыг өөрчлөхгүйгээр (without modifying the core flow) түүний боломжуудыг өргөжүүлэх (жишээ нь, logging, async үйлдлүүдийг боловсруулах) боломж олгодог.

Redux-ийн хамгийн түгээмэл гомдол (complaint) нь эхлэхэд шаардлагатай их хэмжээний boilerplate кодтой холбоотой байдаг. Үүний хариуд Redux баг "Redux Toolkit" болон "RTK Query"-г танилцуулсан бөгөөд эдгээр нь тохиргооны (setup) процессыг нэлээн хялбаршуулдаг.

Та ихэвчлэн createSlice() функцийг ашиглан actions болон reducers-ийг нэг файлд тодорхойлдог. Файлын нэрийг ихэвчлэн Slice гэж төгсгөдөг, жишээ нь productSlice, userSlice, counterSlice гэх мэт.

Дараах нь үндсэн ойлголтыг харуулах counterSlice файл юм:

import { createSlice } from '@reduxjs/toolkit';

const counterSlice = createSlice({
name: 'counter',

initialState: { count: 0 },

reducers: {
increment: (state) => {
state.count += 1;
},
decrement: (state) => {
state.count -= 1;
},
},
});

export const { increment, decrement } = counterSlice.actions;

export default counterSlice.reducer;

Үүнээс хойш та бүх аппликейшнээ Provider-оор wrap хийж, useSelector() ашиглан slice-оос state-ийн хэсгийг сонгож, дараа нь useDispatch() ашиглан state-ийг идэвхжүүлэх (active) хэрэгтэй.

Өөр нэг сонголт бол Zustand юм.

Zustand нь энгийн API-тэй, хөнгөн жинтэй (lightweight) state management сан юм. Энэ нь hook-д суурилсан тул Redux-той харьцуулахад boilerplate код бага бөгөөд тохируулахад илүү амархан, хурдан байдаг.

Zustand нь жижиг болон дунд хэмжээний аппликейшнүүдэд тохиромжтой. Энэ нь useStore hook ашиглан component болон хуудсуудаас state-д шууд хандах байдлаар ажилладаг. Энэ нь actions, reducers, эсвэл provider шаардалгүйгээр өгөгдлийг өөрчлөх болон хандах боломж олгодог.

Дараах нь өөр нэг counter функционал хэрэгжүүлсэн useCounterStore юм:

import { create } from 'zustand';

const useCounterStore = create((set) => ({
count: 0,
increment: () => set((state) => ({ count: state.count + 1 })),
decrement: () => set((state) => ({ count: state.count - 1 })),
}));

export default useCounterStore;

Мөн таны аппликейшнд state-үүдийг хэрхэн эхлүүлж (initialize) ашиглахыг харцгаая:

// useCounterStore-ийг import хийнэ (энэ нь зүгээр л hook юм)
import useCounterStore from '../useCounterStore';

const Counter = () => {
// useCounterStore hook ашиглан state-үүдийг эхлүүлнэ
const { count, increment, decrement } = useCounterStore();

return (
<>

<div style={{ textAlign: 'center' }}> <h1>Zustand Counter</h1>
<button style={{ marginRight: '5px' }} onClick={() => decrement()}>
Decrease </button> <span>{count}</span>
<button style={{ marginLeft: '5px' }} onClick={() => increment()}>
Increase </button> </div>
</>
);
};

export default Counter;

Front-end орчин (ecosystem) байнга хөгжиж, шинэ state management сангууд тогтмол гарч ирж байгаа ч бидний ярьсан эдгээр нь салбарт (industry) өргөн хэрэглэгддэг.
