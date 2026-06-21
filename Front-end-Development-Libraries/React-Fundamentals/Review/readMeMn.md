# React Basics тойм (Review)

# 1. JavaScript Libraries болон Frameworks

JavaScript libraries (сангууд) болон frameworks (хүрээнүүд) нь нийтлэг асуудлуудад хурдан шийдэл өгч, урьдчилан бичигдсэн код (pre-built code)-оор дамжуулан хөгжүүлэлтийг хурдасгадаг.

Libraries нь ихэвчлэн тодорхой ажлуудын шийдэлд төвлөрдөг, жишээ нь DOM (Document Object Model)-ийг удирдах, events (үйл явдал)-ийг боловсруулах, эсвэл AJAX requests-ийг удирдах зэрэг.

JavaScript library-ийн жишээнүүдэд jQuery болон React орно.

Frameworks нь харин эсрэгээрээ аппликейшн (applications) бүтээхэд илүү тодорхой бүтэц (defined structure)-ийг өгдөг. Тэдгээр нь ихэвчлэн хөгжүүлэгчид дагаж мөрдөх ёстой дүрэм (rules) болон conventions (хэвшмэл загварууд)-ыг агуулдаг.

Framework-ийн жишээнүүдэд Angular болон Next.js (React-д зориулсан meta framework) орно.

1.1 Single page applications (SPAs) нь нэг HTML хуудсыг ачаалж, хэрэглэгч аппликейшнтай харилцах үед бүх хуудсыг дахин ачаалахгүйгээр динамикаар шинэчилдэг вэб аппликейшнууд юм.

SPAs нь аппликейшний state (төлөв)-ийг удирдах болон контентыг render (дүрслэх)-д JavaScript ашигладаг. Энэ нь ихэвчлэн төвөгтэй хэрэглэгчийн интерфэйс бүтээхэд зориулсан сайн хэрэгслүүдтэй frameworks ашиглан хийгддэг.

SPAs-тэй холбоотой зарим асуудлууд:
Screen readers (дэлгэц уншигч) нь динамикаар шинэчлэгдсэн контентыг ойлгоход хүндрэлтэй байдаг.
Хэрэглэгч аппликейшн дотор navigation (шилжилт) хийхэд URL өөрчлөгддөггүй тул тодорхой хуудсыг bookmark хийх, буцах (backtrack), эсвэл хуваалцахад хүндрэлтэй болдог.
Аппликейшн том байвал бүх assets-ийг эхэнд нь ачаалах шаардлагатай тул initial load time (эхний ачаалах хугацаа) удаан байж болно.

# 2. React

React нь хэрэглэгчийн интерфэйс (user interfaces) болон вэб аппликейшн бүтээхэд ашиглагддаг алдартай JavaScript library юм.
React-ийн гол ойлголтын нэг нь өгөгдөл өөрчлөгдөхөд бие даан update болон render хийх боломжтой дахин ашиглагдах UI components (компонентууд)-ыг үүсгэх явдал юм.
React нь аппликейшний state дээр үндэслэн UI хэрхэн харагдах ёстойг тодорхойлох боломжийг хөгжүүлэгчдэд олгодог. Дараа нь өгөгдөл эсвэл state өөрчлөгдөх үед зөв компонентуудыг update болон render хийдэг.

React Components

```
Components нь React аппликейшнуудын барилгын үндсэн хэсгүүд (building blocks) бөгөөд хөгжүүлэгчдэд төвөгтэй UI-г жижиг, удирдахад хялбар хэсгүүдэд хуваах боломжийг олгодог.
UI нь JSX ашиглан тодорхойлогддог бөгөөд энэ нь JavaScript-ийн синтаксын өргөтгөл (extension) бөгөөд хөгжүүлэгчдэд JavaScript дотор HTML-тэй төстэй код бичих боломжийг олгодог.
Components нь үндсэндээ UI-ийн нэг хэсгийг буцаадаг JS function эсвэл class юм.
```

Доорх нь мэндчилгээ харуулдаг энгийн React компонентын жишээ:
Example Code

function Greeting() {
const name = 'Anna';
return <h1>Welcome, {name}!</h1>;
}

Компонентыг ашиглахын тулд та дараах байдлаар дуудна:
Example Code

  <Greeting />

2.1 React компонентуудыг Import болон Export хийх

```
React компонентуудыг нэг файлаас export хийж, өөр файлд import хийж болно.
Жишээ нь, City.js нэртэй файлд City нэртэй компонент байна гэж үзье. Та компонентыг export түлхүүр үг ашиглан экспортлож болно:
```

Example Code

// City.js
function City() {
return <p>New York</p>;
}

export default City;

```
City компонентыг өөр файлд импортлохын тулд import түлхүүр үгийг ашиглана:
```

Example Code

// App.js
import City from './City';

function App() {
return ( <div> <h1>My favorite city is:</h1> <City /> </div>
);
}

```
default түлхүүр үг нь City.js файлаас default export хийж байгааг илэрхийлдэг.

Та мөн компонентыг тодорхойлж буй мөр дээр нь шууд экспортлож болно:
```

Example Code

export default function City() {
return <p>New York</p>;
}

2.2 Vite ашиглан React төсөл тохируулах

```
Төслийн setup хэрэгслүүд болон CLI-ууд нь шинэ төслүүдийг хурдан, хялбар эхлүүлэх боломжийг олгодог бөгөөд хөгжүүлэгчдэд тохиргоо (configuration)-той зууралдах биш код бичихэд анхаарах боломж олгодог.
:contentReference[oaicite:0]{index=0} нь түгээмэл хэрэглэгддэг төсөл үүсгэх хэрэгсэл бөгөөд React-тэй хамт ашиглаж болно.
Vite ашиглан шинэ төсөл үүсгэхийн тулд та terminal дээр дараах командыг ашиглаж болно:
```

Example Code

npm create vite@latest my-react-app -- --template react

Энэ команд нь Vite-ийн React template-ийг ашиглан my-react-app нэртэй шинэ React төсөл үүсгэнэ. Төслийн директор дотор та project dependencies болон командууд жагсаасан package.json файлыг харах болно.

```
Төслийг ажиллуулахын тулд төслийн директор руу шилжээд дараах командуудыг ажиллуулна:
```

Example Code

cd my-react-app # төслийн директор руу шилжих
npm install # package.json файлд жагсаасан dependencies-ийг суулгах

```
Dependencies суулгасны дараа таны төсөл дотор node_modules нэртэй шинэ хавтас үүссэнийг анзаарах болно.

node_modules хавтас нь таны төслийн шаардлагатай бүх packages болон libraries хадгалагддаг газар юм.

Төслийг ажиллуулахын тулд дараах командыг ашиглана:
```

Example Code

npm run dev

```
Дараа нь браузераа нээгээд http://localhost:5173 хаягаар орж React аппликейшн ажиллаж байгааг харна.

Starter template-ийн кодыг харахын тулд та төслийн src хавтас руу орж App.jsx файлыг үзэж болно.
```

2.3 React компонентууд дээр props дамжуулах

```
React-д props (properties-ийн товчлол) нь parent компонентээс child компонент руу өгөгдөл дамжуулах арга юм. Энэ механизм нь дахин ашиглагдах боломжтой, динамик UI элементүүдийг бүтээхэд шаардлагатай.
Props нь ямар ч JavaScript утга байж болно. Parent-оос child компонент руу props дамжуулахын тулд parent-ийн JSX дотор child компонентыг ашиглахдаа props-ийг attribute хэлбэрээр нэмдэг. Доорх нь энгийн жишээ:
```

Example Code

// Parent component
function Parent() {
const name = 'Anna';
return <Child name={name} />;
}

// Child component
function Child(props) {
return <h1>Hello, {props.name}!</h1>;
}

Та олон props-ийг object болгон хувиргаад spread operator (...) ашиглан дамжуулж болно. Доорх нь жишээ:
Example Code

// Parent component
function Parent() {
const person = {
name: 'Anna',
age: 25,
city: 'New York'
};
return <Child {...person} />;
}

Энэ кодонд {...person} spread operator нь person object-ийг тус тусын props болгон хувиргаж Child компонент руу дамжуулж байна.

2.4 React-д conditional rendering

```
React-д conditional rendering (нөхцөлт дүрслэлт) нь динамик хэрэглэгчийн интерфэйс бүтээх боломжийг олгодог. Энэ нь аппликейшний доторх тодорхой нөхцөлүүд эсвэл state-ээс хамааран өөр өөр контент харуулахад ашиглагддаг.
React-д контентыг нөхцөлт байдлаар render хийх хэд хэдэн арга байдаг. Түгээмэл аргуудын нэг нь ternary operator ашиглах явдал юм. Доорх жишээ:
```

Example Code

function Greeting({ isLoggedIn }) {
return ( <div>
{isLoggedIn ? <h1>Welcome back!</h1> : <h1>Please log in</h1>} </div>
);
}

```
Контентыг нөхцөлт байдлаар render хийх өөр нэг арга бол logical AND (&&) operator ашиглах явдал юм. Энэ нь тодорхой нөхцөл биелсэн үед л контент харуулахад ашиглагддаг. Доорх жишээ:
```

Example Code

function Greeting({ user }) {
return ( <div>
{user && <h1>Welcome, {user.name}!</h1>} </div>
);
}

Дээрх кодонд user object truthy үед л h1 элемент render хийгдэнэ.

Мөн та if statement-ийг шууд ашиглаж болно:
Example Code

function Greeting({ isLoggedIn }) {
if (isLoggedIn) {
return <h1>Welcome back!</h1>;
}
return <h1>Please sign in</h1>;
}

2.5 React-д list render хийх

```
React-д list render хийх нь хэрэглэгчийн интерфэйс бүтээх үед түгээмэл даалгавар юм.
List-үүдийг JS array-ийн map() method ашиглан render хийж болно, энэ нь array доторх элемент бүр дээр давталт хийж, шинэ JSX элементүүдийн array буцаадаг.
Жишээ нь, хэрэв танд нэрсийн array байгаа бөгөөд түүнийг list хэлбэрээр харуулахыг хүсвэл дараах байдлаар хийж болно:
```

Example Code

function NameList({ names }) {
return ( <ul>
{names.map((name, index) => (<li key={`${name}-${index}`}>{name}</li>))} </ul>
);
}

```
List item бүрт давтагдашгүй (unique) key өгөхийг үргэлж санаарай, ингэснээр React update болон render процессыг зөв удирдах боломжтой болно. Эдгээр аргуудыг ашигласнаар та React аппликейшндоо уян хатан, үр ашигтай, динамик list-үүдийг бүтээж чадна.
```

2.6 React-д inline styles

```
React-д inline styles нь CSS стилүүдийг JSX элементүүд дээр JavaScript object ашиглан шууд хэрэглэх боломжийг олгодог.
React-д inline styles хэрэглэхийн тулд JSX элементүүд дээр style attribute ашиглана. style attribute нь object хүлээж авдаг бөгөөд key-үүд нь camelCase хэлбэртэй CSS property нэрс, харин value-ууд нь тухайн утгууд байна. Доорх жишээ:
```

Example Code

function Greeting() {
return (

<h1
style={{ color: 'blue', fontSize: '24px', backgroundColor: 'lightgray' }}
>
Hello, world! </h1>
);
}

export default Greeting;

Та мөн стилүүдийг тусдаа object болгон гаргаж, style attribute-д дараах байдлаар дамжуулж болно:
Example Code

function Greeting() {
const styles = {
color: 'blue',
fontSize: '24px',
backgroundColor: 'lightgray'
};

return <h1 style={styles}>Hello, world!</h1>;
}

export default Greeting;

```
Inline styles нь props эсвэл state дээр үндэслэн нөхцөлт байдлаар стиль хэрэглэх (dynamic styling) боломжийг олгодог. Доорх нь prop дээр үндэслэн стиль хэрэглэх жишээ:
```

Example Code

function Greeting({ isImportant }) {
const styles = {
color: isImportant ? 'red' : 'black',
fontSize: isImportant ? '24px' : '16px'
};

return <h1 style={styles}>Hello, world!</h1>;
}

export default Greeting;

```
Дээрх кодонд color болон fontSize стилүүд нь isImportant prop-оос хамааран нөхцөлт байдлаар тохируулагдаж байна.
```
