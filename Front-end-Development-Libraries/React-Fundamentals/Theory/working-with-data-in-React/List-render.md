## React-д List-үүдийг хэрхэн Render хийх вэ?

List-үүдийг render хийх нь React вэб аппликейшнуудад үндсэн (fundamental) даалгавруудын нэг бөгөөд хэрэглэгчдэд өгөгдлийг харуулахад ашиглагддаг. React-д map method нь өгөгдлийн array-г JSX элементүүдийн array болгон хувиргахад ашиглагддаг бөгөөд эдгээрийг UI дээр render хийж болно.

Доорх нь жимснүүдийн жагсаалтыг харуулдаг FruitList нэртэй компонентын жишээ:

function FruitList() {
const fruits = ['Apple', 'Banana', 'Cherry', 'Date'];
return ( <ul>
{fruits.map(fruit => <li>{fruit}</li>)} </ul>
);
}

Энэ жишээнд map function нь fruits array-ийн элемент бүр дээр давталт хийж байна. Жимс бүрийн хувьд тухайн жимсний нэрийг агуулсан шинэ li элемент үүсгэж байна. Ингэж үүссэн li элементүүдийн array нь ul parent tag дотор харагдана.

Гэхдээ React-д list render хийх үед element бүрт key prop өгөхийг мартахгүй байх нь маш чухал. Key нь үргэлж давтагдашгүй (unique) байх ёстой бөгөөд React-д аль элемент өөрчлөгдсөн, нэмэгдсэн, эсвэл устсан болохыг танихад тусалдаг. Энэ нь list-ийг үр ашигтай (efficient) render болон update хийхэд зайлшгүй хэрэгтэй.

Хэрэв та key-г мартах юм бол React console дээр warning (анхааруулга) харуулна, гэхдээ fatal error (ноцтой алдаа) үүсгэхгүй. Аппликейшн render болон ажиллаж магадгүй ч ялангуяа list өөрчлөгдөх үед нарийн (subtle) алдаанууд гарч болзошгүй. Эдгээр алдаануудыг debug хийхэд хэцүү байдаг, учир нь UI эхэндээ зөв харагдаж байж болно.

Түгээмэл алдаа нь array-ийн index-ийг key болгон ашиглах явдал юм, жишээ нь:

{fruits.map((fruit, index) => <li key={index}>{fruit}</li>)}

Энэ нь warning-ийг арилгах боловч ерөнхийдөө anti-pattern (муу практик) гэж тооцогддог. Index-ийг key болгон ашиглах нь list-ийг дахин эрэмбэлэх (reorder), эрэмбэлэх (sort), эсвэл шүүх (filter) үед асуудал үүсгэж болно. React нь element-уудыг хянахдаа key-г ашигладаг. Хэрэв list-ийн дараалал өөрчлөгдвөл key (index)-үүд хэвээрээ байх тул React буруу component state-г дахин ашиглах эсвэл DOM-ийг үр ашигтай update хийж чадахгүй байх магадлалтай.

Хамгийн зөв практик нь item бүрт тогтвортой (stable), давтагдашгүй identifier ашиглах явдал юм. Энэ нь ихэвчлэн таны database-аас ирсэн ID, жишээ нь UUID эсвэл database ID байдаг.

Хэрэв таны өгөгдөлд unique ID байхгүй бол та өгөгдөл үүсэх үед нэгийг үүсгэж болно (жишээ нь crypto.randomUUID() эсвэл uuid зэрэг library ашиглан), эсвэл давтагдашгүй байх нь баталгаатай талбаруудын (fields) хослолыг ашиглаж болно. Гэхдээ render хийх үед key-г шууд үүсгэхээс (жишээ нь key={Math.random()}) зайлсхийх хэрэгтэй, учир нь энэ нь React-ийг render бүр дээр DOM элементүүдийг дахин үүсгэхэд хүргэж, тэдгээрийн state-г дахин тохируулах болно.

Жишээгээ key ашиглан өөрчилж үзье:

function FruitList() {
const fruits = ["Apple", "Banana", "Cherry", "Date"];
return ( <ul>
{fruits.map((fruit, index) => (

<li key={`${fruit}-${index}`}>{fruit}</li>
))} </ul>
);
}

Энэ шинэчилсэн жишээнд бид жимсний нэр болон index-ийг нэгтгэж (concatenate) list item бүрт unique key үүсгэж байна. Энэ нь list item бүрт ялгаатай key олгож, React-д элементүүд нэмэгдэх, устах, эсвэл байрлал өөрчлөгдөх үед list-ийг үр ашигтай удирдах болон update хийхэд тусалдаг.

React нь мөн илүү төвөгтэй бүтэц (complex structures)-үүдийг render хийх боломжийг олгодог. Жишээ нь, та хэрэглэгчдийг илэрхийлэх object-уудын array-тэй байж болох бөгөөд object бүр олон property-тэй байж болно:

function UserList() {
const users = [
{ id: "user-001-employee", name: "Alice", email: "[alice@example.com](mailto:alice@example.com)" },
{ id: "user-002-employee", name: "Bob", email: "[bob@example.com](mailto:bob@example.com)" },
{ id: "user-003-employee", name: "John", email: "[john@example.com](mailto:john@example.com)" },
];
return ( <div>
{users.map((user) => ( <div key={user.id}> <h3>{user.name}</h3> <p>{user.email}</p> </div>
))} </div>
);
}

Энэ жишээнд бид хэрэглэгч бүрт илүү төвөгтэй JSX бүтэц үүсгэж, тэдний нэр болон email хаягийг харуулж байна. Бид user.id-ийг key болгон ашиглаж байгаа нь зөв практик юм.

Дүгнэж хэлбэл, React-д list render хийх нь өгөгдлийн array-г JSX элементүүд болгон хувиргах үйл явц бөгөөд ихэвчлэн map function ашиглан хийгддэг.
