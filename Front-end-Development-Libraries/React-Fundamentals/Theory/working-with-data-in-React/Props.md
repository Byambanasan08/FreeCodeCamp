# React-д Parent Component-оос Child Component руу Props хэрхэн дамжуулдаг вэ?

Өмнөх хичээлүүдэд бид React-д дараах шиг жижиг компонентуудыг хэрхэн бүтээхийг сурсан:
Example Code

function Greeting() {
const developerName = "Jessica";
return <h1>Hi {developerName}!</h1>;
}

Бид энэ компонентыг өөр parent компонент эсвэл root компонент дотор дараах байдлаар оруулж (nest) ашиглаж болно:
Example Code

function App() {
return <Greeting />;
}

function Greeting() {
const developerName = "Jessica";
return <h1>Hi {developerName}!</h1>;
}

Энэ код асуудалгүй ажиллаж, дэлгэц дээр Hi Jessica! гэсэн үр дүнг харуулах боловч энэ нь тийм ч уян хатан (flexible) компонент биш юм.

Хэрэв бид Naomi, Tom, эсвэл Oliver гэх мэт өөр нэрүүдийг харуулахыг хүсвэл яах вэ? Энэ үед React props хэрэг болно. Props (properties-ийн товчлол) нь parent компонентууд child компонент руу өгөгдөл дамжуулах арга юм. Props нь ямар ч төрлийн байж болно: strings (тэмдэгт мөр), numbers (тоо), booleans (үнэн/худал), objects (объект), эсвэл arrays (массив).

Өмнөх жишээгээ шинэчилж name prop хүлээж авдаг болгоё:
Example Code

function App() {
return <Greeting name="Jessica" />;
}

export default App;

function Greeting(props) {
console.log(props);
return <h1>Hi {props.name}!</h1>;
}

Greeting нэртэй child компонент дотор бид одоо "Jessica" гэж шууд бичихийн оронд props.name ашиглаж байна. Мөн бид props-ийг console дээр хэвлэж байгаа бөгөөд энэ нь object (объект) хэлбэртэй харагдана.

Дараа нь parent App компонент дотор бид name prop-д утга өгч байгаа бөгөөд энэ нь child компонент руу дамжуулагдана. Дэлгэц дээрх үр дүн өмнөхтэй адилхан байх боловч одоо бид илүү уян хатан компонент бүтээсэн байна.

Одоо бид child компонентыг олон удаа дахин ашиглаж, бүрд нь өөр нэр дамжуулах боломжтой боллоо:
Example Code

function App() {
return (
<> <Greeting name="Naomi" /> <Greeting name="Tom" /> <Greeting name="Jessica" /> <Greeting name="Oliver" />
</>
);
}

Та мөн props дээр object destructuring ашиглан кодыг илүү уншихад ойлгомжтой болгож болно. Greeting компонентыг дараах байдлаар дахин бичиж болно:
Example Code

function Greeting({ name }) {
return <h1>Hi {name}!</h1>;
}

Энэ код ижил үр дүн гаргах боловч компонент ямар props хүлээж байгааг илүү тодорхой харуулдаг. ]

[ React нь мөн children нэртэй тусгай prop-ийг өгдөг. Та компонентын нээх болон хаах tag-уудын хооронд байрлуулсан аливаа JSX нь children хэлбэрээр компонент руу дамжуулагдана.

Жишээ нь:
Example Code

function Card({ children }) {
return <div className="card">{children}</div>;
}

function App() {
return ( <Card> <h2>Hello</h2> </Card>
);
}

Энэ тохиолдолд <Card>...</Card> доторх JSX нь children prop болж хувирна. DOM дээр render хийгдсэн үр дүн нь дараах байдалтай байна:
Example Code

<div class="card">
  <h2>Hello</h2>
</div>

Энэ хэв маягийг ихэвчлэн component composition (компонентын найруулга)-д ашигладаг бөгөөд нэг компонент бусад UI элементүүдийг “ороож” (wrap) ажилладаг.

Заримдаа та props-оор дамжуулах ёстой олон property-тэй байж болно. Тэдгээрийг нэг нэгээр нь дамжуулахын оронд, object болгон хувиргаад spread operator (...) ашиглаж болно.

Доорх нь DeveloperCard нэртэй шинэ child компонентын жишээ:
Example Code

function DeveloperCard({ name, age, country }) {
return ( <div className="developer-card"> <h1>Developer: {name}</h1> <p>Age: {age}</p> <p>Country: {country}</p> </div>
);
}

Энэ DeveloperCard компонент нь name, age, болон country гэсэн гурван prop хүлээж авдаг.

Parent App компонент дотор бид spread syntax ашиглан object доторх бүх property-г child компонент руу тус тусын prop болгон дамжуулж болно:
Example Code

function App() {
const developerObj = {
name: "Alice",
age: 30,
country: "USA",
};

return ( <div className="App">
<DeveloperCard {...developerObj} /> </div>
);
}

Энэ нь ялангуяа object-уудын array (массив)-тай ажиллах үед болон child компонент руу олон property-ийн багцуудыг дамжуулах үед маш хэрэгтэй. Жишээ нь, та developer-уудын жагсаалттай байж болох бөгөөд массив доторх object бүр ижил бүтэцтэй боловч өөр өөр хүнийг илэрхийлж байж болно.

Та дараагийн хичээлүүдэд array доторх жагсаалтыг хэрхэн render хийх талаар илүү ихийг сурах болно.

React-д props ашиглах нь таны компонентуудыг илүү уян хатан, дахин ашиглагдах боломжтой болгодог бөгөөд ингэснээр та илүү төвөгтэй UI бүтээх боломжтой болно. Гэхдээ props нь immutable (өөрчлөгдөх боломжгүй) гэдгийг анхаарах нь чухал, өөрөөр хэлбэл компонент руу дамжуулсны дараа өөрчлөх боломжгүй. Хэрэв та хэрэглэгчийн оролтыг (user input) боловсруулж, өгөгдлийг өөрчлөх шаардлагатай бол state ашиглах хэрэгтэй. Та state удирдах талаар дараагийн хичээлүүдэд илүү ихийг сурах болно.
