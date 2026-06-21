## State доторх Array-уудыг хэрхэн шинэчлэх вэ?

React дээр state доторх array-уудыг шинэчлэх нь нэлээд ойлгомжтой боловч, ялангуяа vanilla JavaScript-ээс ирсэн бол (энд array-ийг шууд өөрчилж болдог) алдаа гаргах нь амархан байдаг.

React дээр state-ийг immutable (өөрчлөгдөшгүй) гэж үздэг бөгөөд ингэснээр өөрчлөлтийг таньж, хэрэглэгчийн интерфэйс (user interface)-ийг зөв шинэчлэх боломжтой болдог.

React state дотор хадгалагдсан array-уудыг хэрхэн шинэчлэхийг харцгаая.

React state дотор array шинэчлэх үед гардаг хамгийн нийтлэг алдаануудын нэг нь push(), pop(), эсвэл splice() зэрэг method-уудыг ашиглан array-ийг шууд өөрчлөх явдал юм. Эдгээр method-ууд нь анхны array-ийг (original array) өөрчилдөг бөгөөд React үүнийг зөвшөөрдөггүй.

React нь өөрчлөлтийг илрүүлэхийн тулд шинэ array reference-д тулгуурладаг тул array-ийг шууд өөрчлөх нь component-ийг хүлээгдсэнээр дахин render хийхээс сэргийлж болно.

Доорх нь state доторх array-д push() method ашиглан элемент нэмэх жишээ бөгөөд энэ нь ажиллахгүй:

import { useState } from "react";

function ItemsList() {
const [items, setItems] = useState([
{ id: 0, name: "Item 1" },
{ id: 1, name: "Item 2" },
{ id: 2, name: "Item 3" },
]);

const addItem = () => {
const newItem = { id: items.length + 1, name: `Item ${items.length + 1}` };
items.push(newItem); // Энэ нь анхны array-ийг өөрчилж байна
setItems(items); // React энэ өөрчлөлтийг илрүүлэхгүй
};

return ( <div> <button onClick={addItem}>Add Item</button> <ul>
{items.map((item) => ( <li key={item.id}>{item.name}</li>
))} </ul> </div>
);
}

export default ItemsList;

Хэрэв та Add Item товчийг дарвал хэрэглэгчийн интерфэйс дээр ямар ч өөрчлөлт харагдахгүй.

Мөн array-ээс элемент устгахдаа pop() method ашиглах нь сэтгэлд ойрхон санагдаж магадгүй:

const removeItem = () => {
items.pop(); // Анхны array-ийг өөрчилж байна
setItems(items); // React энэ өөрчлөлтийг мөн илрүүлэхгүй
};

State доторх array-ийг шинэчлэх гол зарчим нь шинэ array үүсгэж, үйлдлүүдээ хийж, дараа нь үүнийг React-д дамжуулах явдал бөгөөд байгаа array-ийг өөрчлөх (mutate) биш юм.

Шинэ array тул React state өөрчлөгдсөнийг ойлгож, дахин render хийх trigger өгнө.

Доорх нь spread operator ашиглан items array-д элемент нэмэх арга юм:

const addItem = () => {
const newItem = {
id: items.length + 1,
name: `Item ${items.length + 1}`,
};

// Шинэ array үүсгэж байна
setItems((prevItems) => [...prevItems, newItem]);
};

[...prevItems, newItem] нь state доторх одоогийн items array-ийн бүх элементүүдийг хуулж, дараа нь newItem-ийг төгсгөлд нэмснээр шинэ array үүсгэдэг бөгөөд id болон item дугаарыг нэмэгдүүлдэг.

Хэрэв та array-ээс ямар нэг зүйл устгахыг хүсвэл filter() method ашиглаж болно, энэ нь устгахыг хүссэн элементүүдийг шүүж (filter out) шинэ array буцаадаг:

const removeItem = (id) => {
setItems((prevItems) => prevItems.filter((item) => item.id !== id));
};

Бүрэн кодыг харцгаая:

import { useState } from "react";

function ItemsList() {
const [items, setItems] = useState([
{ id: 0, name: "Item 1" },
{ id: 1, name: "Item 2" },
{ id: 2, name: "Item 3" },
]);

const addItem = () => {
const newItem = { id: items.length + 1, name: `Item ${items.length + 1}` };
setItems((prevItems) => [...prevItems, newItem]); // Шинэ array үүсгэж байна
};

const removeItem = (id) => {
setItems((prevItems) => prevItems.filter((item) => item.id !== id)); // Шинэ array үүсгэж байна
};

return ( <div> <button onClick={addItem}>Add Item</button> <ul>
{items.map((item) => ( <li key={item.id}>
{item.name}{" "}
<button onClick={() => removeItem(item.id)}>Remove</button> </li>
))} </ul> </div>
);
}

export default ItemsList;

Эдгээр нь state доторх array-ийг шинэчлэх зарим нийтлэг аргууд юм.
