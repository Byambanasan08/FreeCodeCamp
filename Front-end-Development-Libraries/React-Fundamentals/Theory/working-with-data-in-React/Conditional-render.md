## React компонентууд дээр Conditional Rendering хэрхэн ажилладаг вэ?

React-д conditional rendering (нөхцөлт дүрслэлт) нь динамик хэрэглэгчийн интерфэйс (dynamic user interfaces) бүтээх боломжийг олгодог. Энэ нь аппликейшний доторх тодорхой нөхцөлүүд (conditions) эсвэл state (төлөв)-өөс хамааран өөр өөр контент харуулахад ашиглагддаг.

Conditional rendering ашиглах хамгийн түгээмэл аргууд нь if statement (if нөхцөл), ternary (?:) operator, болон logical AND (&&) operator ашиглах явдал юм.

Conditional rendering-ийн хамгийн энгийн хэлбэр нь if statement ашиглах явдал юм. Доорх жишээг харна уу:

function Greeting({ isLoggedIn }) {
if (isLoggedIn) {
return <h1>Welcome back!</h1>;
}
return <h1>Please sign in</h1>;
}

Энэ жишээнд Greeting компонент нь isLoggedIn prop-ийг шалгаж байна. Хэрэв энэ нь true бол welcome message (тавтай морил мессеж) буцаана, эс бөгөөс хэрэглэгчид sign in хийхийг сануулна.

Доорх нь Greeting компонентыг parent App компонент дотор ашигласан жишээ:

function App() {
return ( <div className="App"> <Greeting isLoggedIn={false} /> </div>
);
}

Илүү энгийн нөхцөлүүдийн хувьд ternary operator (?:) нь ихэвчлэн JSX дотор шууд ашиглагддаг. Энэ нь inline conditional rendering хийх боломжийг олгож, таны кодыг илүү товч (concise) болгодог:

function Greeting({ isLoggedIn }) {
return <h1>{isLoggedIn ? "Welcome back!" : "Please sign in."}</h1>;
}

Энэ код нь өмнөх жишээтэй ижил үр дүн гаргах боловч илүү шахуу хэлбэртэй байна. Ternary operator нь isLoggedIn-ийг шалгаж, тохирох мессежийг render хийж байна.

Conditional rendering-ийн өөр нэг түгээмэл хэв маяг нь logical AND (&&) operator ашиглах явдал юм. Энэ нь тодорхой нөхцөлөөс хамааран ямар нэг зүйл харуулах эсвэл огт харуулахгүй байх үед онцгой хэрэгтэй:

function Notification({ message }) {
return ( <div>
{message && <p>{message}</p>} </div>
);
}

Энэ жишээнд message бүхий paragraph элемент нь зөвхөн message prop truthy (үнэн утгатай) үед render хийгдэнэ. Хэрэв message falsy (хоосон string, null, эсвэл undefined) бол дэлгэц дээр юу ч харагдахгүй.

Эдгээр conditional rendering аргуудыг сайн эзэмшсэнээр та өөрчлөгдөж буй өгөгдөл болон хэрэглэгчийн харилцан үйлчлэлд (user interactions) дасан зохицох илүү интерактив, хэрэглэгчид ээлтэй аппликейшн бүтээх боломжтой болно.
