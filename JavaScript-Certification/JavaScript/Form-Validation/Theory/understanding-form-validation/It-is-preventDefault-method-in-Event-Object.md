preventDefault() Method-ийн зорилго юу вэ?

Одоо event дээрх preventDefault() method ямар зорилготой болохыг сурцгаая.

DOM дотор trigger болж буй event бүр өөрийн гэсэн default behavior-тэй байдаг. Жишээ нь, checkbox дээрх click event нь анхдагчаар тухайн checkbox-ийн төлөвийг (state) сольдог. Focus хийсэн button дээр space дарвал button идэвхждэг. Эдгээр event object дээрх preventDefault() method нь энэ default behavior-ийг зогсоодог.

Одоо жишээ харцгаая. Хэрэглэгч текст бичих input element тодорхойлъё:

```html id="4j7t8a"
<link rel="stylesheet" href="styles.css">
<label>Enter some characters:
  <input type="text">
</label>
```

```css id="6k3m2p"
label {
  display: flex;
  flex-direction: column;
  font-family: Arial, sans-serif;
  font-size: 14px;
  color: #333;
  margin-bottom: 12px;
}

input[type="text"] {
  padding: 8px 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  font-size: 14px;
  margin-top: 4px;
  width: 100%;
  box-sizing: border-box;
  transition: border-color 0.2s, box-shadow 0.2s;
}

input[type="text"]:focus {
  border-color: #0078d4;
  box-shadow: 0 0 3px rgba(0, 120, 212, 0.5);
  outline: none;
}
```

Үр дүнг харвал бид input талбарт хэвийн байдлаар текст бичиж чадна. Гэхдээ магадгүй бид тэгэхийг хүсэхгүй байж болно. Үүний оронд хэрэглэгчийн бичсэн тэмдэгтийг өөр элемент дээр харуулахыг хүсэж байж болно. Эхлээд тэр элементээ тодорхойлъё:

```html id="y3h9s2"
<link rel="stylesheet" href="styles.css">
<label>Enter some characters:
  <input type="text">
</label>
<p id="output"></p>
```

```css id="x8n4vd"
body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
  margin: 0;
}

label {
  font-size: 1.2rem;
  color: #333;
  margin-bottom: 1rem;
  display: flex;
  flex-direction: column;
}

input[type="text"] {
  padding: 0.5rem;
  font-size: 1rem;
  border: 2px solid #ccc;
  border-radius: 5px;
  margin-top: 0.5rem;
  outline: none;
}

input[type="text"]:focus {
  border-color: #007BFF;
}

#output {
  margin-top: 1rem;
  font-size: 1.1rem;
  color: #555;
}
```

Одоо бид keyboard дээр тэмдэгт дарж байгааг сонсохын тулд keydown event-д холбогдох хэрэгтэй. Энэ тохиолдолд change эсвэл input event ашиглахгүй, учир нь бидэнд keyboard-ийн мэдээлэл хэрэгтэй.

```js
const input = document.querySelector("input");

input.addEventListener("keydown", (e) => {
    
})
```

keydown event нь keyboard дээр товч дарсан үед trigger болдог. Энэ үед бид дарсан тэмдэгтийг p элемент дээр харуулъя.

```html
<link rel="stylesheet" href="styles.css">
<label>Enter some characters:
  <input type="text">
</label>
<p id="output"></p>
<script src="index.js"></script>
```

```css
body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
  margin: 0;
}

label {
  font-size: 1.2rem;
  color: #333;
  margin-bottom: 1rem;
  display: flex;
  flex-direction: column;
}

input[type="text"] {
  padding: 0.5rem;
  font-size: 1rem;
  border: 2px solid #ccc;
  border-radius: 5px;
  margin-top: 0.5rem;
  outline: none;
}

input[type="text"]:focus {
  border-color: #007BFF;
}

#output {
  margin-top: 1rem;
  font-size: 1.1rem;
  color: #555;
}
```

```js
const input = document.querySelector("input");
const output = document.getElementById("output");

input.addEventListener("keydown", (e) => {
  output.innerText = `You pressed the ${e.key} key`;
});
```

e.key нь дарсан товчны утгыг өгдөг, жишээ нь a товч дарахад "a", Enter дарахад "Enter" гэх мэт.

Дээрх кодоор input дээр бичих үед бичсэн тэмдэгт p элемент дээр харагдана.

Гэхдээ энэ нь хангалтгүй — бид input дээр текст гаргахыг хүсэхгүй байна. Энд preventDefault() method хэрэг болно. keydown-ийн default behavior нь input дээр тэмдэгт бичих юм. Үүнийг зогсоохын тулд e.preventDefault() дуудаж болно:

```html
<link rel="stylesheet" href="styles.css">
<label>Enter some characters:
  <input type="text">
</label>
<p id="output"></p>
<script src="index.js"></script>
```

```css
body {
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  height: 100vh;
  margin: 0;
}

label {
  font-size: 1.2rem;
  color: #333;
  margin-bottom: 1rem;
  display: flex;
  flex-direction: column;
}

input[type="text"] {
  padding: 0.5rem;
  font-size: 1rem;
  border: 2px solid #ccc;
  border-radius: 5px;
  margin-top: 0.5rem;
  outline: none;
}

input[type="text"]:focus {
  border-color: #007BFF;
}

#output {
  margin-top: 1rem;
  font-size: 1.1rem;
  color: #555;
}
```

```js
const input = document.querySelector("input");
const output = document.getElementById("output");

input.addEventListener("keydown", (e) => {
  e.preventDefault();
  output.innerText = `You pressed the ${e.key} key`;
});
```

Ингэснээр default behavior-ийг зогсоож, өөрийн custom event handling-ийг хэрэгжүүлэх боломжтой болно.

preventDefault()-ийг ашиглах өөр нэг түгээмэл жишээ бол form submit хийх үед юм. Анхдагчаар form submit хийхэд өгөгдөл сервер рүү илгээгдэж, page дахин ачаалдаг. e.preventDefault() ашигласнаар энэ үйлдлийг зогсоож болно.

```js
const form = document.querySelector("form");

form.addEventListener("submit", (e) => {
  e.preventDefault();
  // үлдсэн код энд бичигдэнэ
});
```

Default behavior-ийг зогсоох нь хэрэглэгчийн interaction-ийг илүү нарийн хянах боломж олгодог. Гэхдээ accessibility-г (хүртээмж) заавал анхаарах хэрэгтэй — таны custom behavior нь анхдагч үйлдлийн боломжуудыг орлож чадахуйц байх ёстой.
