## React-д Inline Styles хэрхэн ажилладаг вэ?

React-д inline styles (дотоод стиль) нь CSS стилүүдийг тусдаа CSS файлд тодорхойлохын оронд JSX код дотор React элементүүдэд шууд хэрэглэхэд ашиглагддаг.

React-д inline styles ашиглах арга нь уламжлалт CSS string ашиглахын оронд JavaScript object ашиглан стилүүдийг тодорхойлох явдал юм. Энэ нь та CSS файлд бичдэг шиг стил бичихийн оронд JavaScript object үүсгэж, түүний key-үүдийг CSS property нэрсийн camel case хувилбараар, харин value-уудыг CSS утгын string хэлбэрээр бичнэ гэсэн үг.

Доорх нь Button компонент дээр inline styles хэрхэн ашиглаж болох жишээ:

function Button({ buttonText }) {
const defaultStyles = {
backgroundColor: "#007BFF",
color: "white",
border: "none",
borderRadius: "4px",
padding: "10px 20px",
fontSize: "16px",
fontWeight: "bold",
cursor: "pointer",
transition: "background-color 0.3s ease",
};

return <button style={defaultStyles}>{buttonText}</button>;
}

Энэ жишээнд бид defaultStyles нэртэй style object тодорхойлж байна. Дараа нь бид style attribute ашиглан эдгээр стилүүдийг button элементэд хэрэглэж байна. React нь render хийх үед эдгээр стилүүдийг элементэд хэрэглэхийг өөрөө зохицуулдаг.

Мөн та style attribute-д object-ийг шууд дамжуулж болно. Доорх нь өөрчлөгдсөн жишээ:

function Button({ buttonText }) {
return (
<button
style={{
backgroundColor: "#007BFF",
color: "white",
}}

> {buttonText} </button>
> );
> }

style attribute доторх давхар муруй хаалт {{}}-ыг анзаараарай. Гаднах хаалт нь JSX доторх JavaScript expression-ийг илэрхийлдэг бол доторх хаалт нь JavaScript object literal-ийг тодорхойлж байна. Энэ синтакс нь JSX attribute дотор JavaScript object-ийг шууд оруулах боломжийг олгодог.

Зарим тохиолдолд property цөөн байвал object-ийг шууд дамжуулах нь тохиромжтой байдаг. Харин олон property байвал эхний жишээ шиг object-д нэр өгөөд дамжуулах нь илүү дээр.

Анхаарах нэг чухал зүйл бол CSS property нэрс ихэвчлэн kebab-case (жишээ нь font-size) хэлбэртэй байдаг бол React-ийн inline styles-д camelCase (жишээ нь fontSize) хэлбэр ашиглагддаг. Учир нь style object нь JavaScript object бөгөөд kebab-case нэрсийг JavaScript object-ийн key болгон ашиглахад заавал ишлэл (quotes) хэрэгтэй болдог.

React-д inline styles-ийн нэг том давуу тал нь component-ийн state эсвэл props дээр үндэслэн динамик стиль (dynamic styling) хийх боломжтой байдаг. Жишээ нь:

function DynamicButton({ isActive }) {
const buttonStyles = {
backgroundColor: isActive ? "green" : "red",
color: "white",
padding: "10px 15px",
border: "none",
cursor: "pointer",
};

return <button style={buttonStyles}>Login</button>;
}

Энэ жишээнд button-ийн background өнгө нь isActive prop-оос хамааран өөрчлөгдөж байна. Ийм төрлийн динамик стиль нь интерактив (interactive), responsive хэрэглэгчийн интерфэйс бүтээхэд маш хүчирхэг хэрэгсэл болдог.

Дүгнэж хэлбэл, React-д inline styles нь компонент дотор шууд стиль хэрэглэх болон удирдах хүчирхэг арга юм. Энэ нь CSS string-ийн оронд JavaScript object ашигладаг, camelCase property нэр шаарддаг, мөн динамик утгуудыг хялбархан ашиглах боломжийг олгодог. Энэ нь React хөгжүүлэгчийн toolkit-д зайлшгүй байх хэрэгсэл бөгөөд ялангуяа өндөр түвшний customized болон интерактив хэрэглэгчийн интерфэйс бүтээхэд чухал үүрэгтэй.
