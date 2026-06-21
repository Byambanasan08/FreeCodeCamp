## State доторх Object-уудыг хэрхэн шинэчлэх вэ?

React дотор state-д байгаа object-уудыг шинэчлэх нь, хэрэв та object-ийн property утгуудыг шууд өөрчилж дассан бол, бага зэрэг төвөгтэй санагдаж болно.

React нь state-ийг immutable (өөрчлөгдөшгүй) гэж үздэг бөгөөд энэ нь та state-ийг шууд өөрчилж болохгүй гэсэн үг юм.

React state дотор object-ийг шууд өөрчлөх гэж оролдвол юу болохыг харцгаая, дараа нь үүнийг зөв хийх аргыг авч үзье.

Та component-ийн state дотор хэрэглэгчийн профайлыг илэрхийлсэн object байна гэж төсөөлье, мөн хэрэглэгч өөрийн насыг шинэчлэхийг хүсэж байна:

import { useState } from "react";

function Profile() {
const [user, setUser] = useState({
name: "John Doe",
age: 31,
city: "LA",
});

// Хэрэглэгчийн насыг шууд өөрчилж байна
const handleAgeChange = (e) => {
user.age = e.target.value;
console.log(user);
};

return ( <div> <h1>User Profile</h1> <p>Name: {user.name}</p> <p>Age: {user.age}</p> <p>City: {user.city}</p>

```
  <h2>Update User Age </h2>
  <input type="number" value={user.age} onChange={handleAgeChange} />
</div>
```

);
}

export default Profile;

Энэ код ажиллахгүй, учир нь та user.age property-ийг шууд өөрчилж байна.

console.log(user) нь шинэ насны утгыг console дээр харуулна, гэвч React нь component-ийг дахин render хийхгүй бөгөөд хэрэглэгчийн интерфэйс дээр үүнийг харуулахгүй, учир нь та setter функц болох setUser-ийг ашиглаагүй.

State доторх object-ийг шинэчлэхийн тулд та setter функц ашиглан шинэ object үүсгэж, шинэчлэгдсэн утгыг дамжуулах хэрэгтэй. Жишээ нь:

const handleAgeChange = (e) => {
setUser({
age: e.target.value,
});
};

Энэ ажиллана. Гэхдээ одоо хуудсыг харвал хэрэглэгчийн нас шинэчлэгдсэн боловч name болон city утгууд алга болсон байна.

Учир нь setter функцэд дамжуулсан шинэ object нь зөвхөн age гэсэн key/value хосыг (pair) агуулж байна.

Үүнийг сэргийлэхийн тулд та эхлээд байгаа object-ийг хуулж (copy), дараа нь зөвхөн шинэчлэхийг хүссэн property-ийг шинэчлэх хэрэгтэй, энэ тохиолдолд age.

Үүнийг хийхийн тулд та updater function гэж нэрлэгддэг тусгай функцийг setter функц болох setUser-д дамжуулж болно. Updater function нь pending state-ийг аргумент болгон авч, энд prevUser гэж нэрлэгдсэн, дараагийн state-ийг буцаах ёстой:

const handleAgeChange = (e) => {
setUser((prevUser) => {
const updatedUser = { ...prevUser, age: e.target.value };
console.log('Previous State:', prevUser);
console.log('Updated State:', updatedUser);
return updatedUser;
});
};

Таны харж байгаагаар бид spread syntax ашиглан pending user object болох ...prevUser-ийг хуулж updatedUser гэсэн шинэ user object үүсгэж байна. Дараа нь бид form input дээр үндэслэн age-ийг шинэчилж, функцийн төгсгөлд updatedUser-ийг дараагийн state болгон буцааж байна.

Одоо таны төсөл хүлээгдэж буй байдлаар ажиллах бөгөөд age input дээрх өөрчлөлтүүд хэрэглэгчийн name эсвэл city нэрэнд нөлөөлөхгүй. Мөн та console дээр өмнөх болон шинэчлэгдсэн state-уудыг харах боломжтой.

Энэ нь state доторх object-ийг шинэчлэх хамгийн зөв арга бөгөөд ялангуяа бүх property-уудыг шинэчлэхгүй үед тохиромжтой.

Үлдсэн name болон city property-уудыг шинэчлэхийн тулд та тус тусдаа setter функцүүд бичиж, тэдгээрийг харгалзах input-уудтай холбож болно:

const handleNameChange = (e) => {
setUser((prevUser) => ({
...prevUser,
name: e.target.value,
}));
};

const handleCityChange = (e) => {
setUser((prevUser) => ({
...prevUser,
city: e.target.value,
}));
};

Эсвэл та эдгээрийг дараах байдлаар нэг setter функцэд нэгтгэж болно:

const handleChange = (e) => {
const { name, value } = e.target;
setUser((prevUser) => ({
...prevUser,
[name]: value,
}));
};

Үүнийг ажиллуулахын тулд input талбар бүр name attribute-тэй байх ёстой.

Одоо бүрэн кодыг харцгаая:

import { useState } from "react";

function Profile() {
const [user, setUser] = useState({ name: "John Doe", age: 31, city: "LA" });

const handleChange = (e) => {
const { name, value } = e.target;

```
setUser((prevUser) => ({...prevUser, [name]: value}));
```

};

return ( <div> <h1>User Profile</h1> <p>Name: {user.name}</p> <p>Age: {user.age}</p> <p>City: {user.city}</p>

```
  <h2>Update User Age </h2>
  <input type="number" name="age" value={user.age} onChange={handleChange} />

  <h2>Update User Name </h2>
  <input type="text" name="name" value={user.name} onChange={handleChange} />

  <h2>Update User City </h2>
  <input type="text" name="city" value={user.city} onChange={handleChange} />
</div>
```

);
}

export default Profile;
