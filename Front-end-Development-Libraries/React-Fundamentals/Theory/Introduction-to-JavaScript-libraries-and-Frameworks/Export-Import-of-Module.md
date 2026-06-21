## React компонентууд дээр Default болон Named Exports хэрхэн ажилладаг вэ?

Өмнөх хичээлүүдэд та JavaScript-д imports болон exports-тэй хэрхэн ажиллах талаар сурсан. Энэ хичээлд бид React-д компонентуудыг хэрхэн import болон export хийхийг авч үзэх болно.

Export (экспорт) нь компонентыг бусад файлуудад ашиглах боломжтой болгодог. Import (импорт) нь өөр газар export хийгдсэн компонентыг тухайн файлд ашиглах боломжийг олгодог. React төслүүдэд энэ нь компонентуудыг дахин ашиглах болон нэгтгэн (combine) хэрэглэгчийн интерфэйс бүтээх үндсэн арга юм.

Энэ хичээлд та React компонентуудыг default exports болон named exports ашиглан хэрхэн экспортлох, мөн хэрэгтэй газар нь хэрхэн импортлохыг сурах болно.

Энэ жишээнд бид Cat нэртэй компоненттой бөгөөд энэ нь Cat.jsx нэртэй файлд байрлах ёстой. Файлын өргөтгөл (file extension)-д бид .jsx ашиглаж байгаа нь энэ файл голчлон JSX-тэй ажиллаж байгаатай холбоотой.

Энэ Cat компонент нь Mr. Whiskers нэртэй муурын гарчиг болон зургийг агуулсан JSX markup буцаадаг:

function Cat() {
return ( <div className="card"> <h2>Mr. Whiskers</h2> <img
     src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg"
     alt="Tuxedo cats running on dirt ground."
   /> </div>
);
}

Хэрэв бид Cat компонентыг өөр файлд ашиглахыг хүсвэл эхлээд дараах байдлаар экспортлох шаардлагатай:

function Cat() {
return ( <div className="card"> <h2>Mr. Whiskers</h2> <img
     src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg"
     alt="Tuxedo cats running on dirt ground."
   /> </div>
);
}

export default Cat;

Бид default түлхүүр үгийг ашиглаж байгаа нь энэ компонент тухайн module-оос default export болохыг илэрхийлж байна. Та мөн компонентыг тодорхойлох мөртэй нь хамт нэг мөрөнд экспортлож болно:

export default function Cat() {
return ( <div className="card"> <h2>Mr. Whiskers</h2> <img
     src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg"
     alt="Tuxedo cats running on dirt ground."
   /> </div>
);
}

Та child компонентуудыг (дэд компонентууд) бусад parent компонент файлуудад импортлох эсвэл root компонент файлд импортлох аль алиныг нь сонгож болно. Энэ жишээнд бид Cat компонентыг root компонент файл дотор импортлох болно. ]
[ Бүх React төслүүдэд дээд түвшний (top-level) компонент байдаг бөгөөд ихэвчлэн App.jsx гэж нэрлэгддэг:

export default function App() {
return (
// return component here
);
}

Энэ файл ихэвчлэн таны төслийн src директорид байрладаг. Та төслийн нийтлэг бүтэц (project layouts)-ийн талаар дараагийн хичээлүүдэд илүү ихийг сурах болно.

Cat компонентыг root App компонент дотор ашиглахын тулд та дараах байдлаар импортлох хэрэгтэй:

import Cat from "./Cat";

export default function App() {
return (
// return component here
);
}

Одоо та Cat компонентыг App компонент дотор дараах байдлаар буцааж (return) ашиглаж болно:

import Cat from "./Cat";

export default function App() {
return ( <Cat />
);
}

Энэ хандлага нь нэг файл зөвхөн нэг үндсэн компонент экспортолж байгаа үед сайн ажилладаг бөгөөд импортын синтаксийг энгийн, уншихад хялбар байлгадаг. Санаж байх хэрэгтэй: нэг файл зөвхөн нэг default export-тэй байж болно, энэ нь ихэвчлэн ганц компонент агуулсан файлд тохиромжтой.

Одоо та default exports хэрхэн ашиглахыг мэдсэн тул named exports-ийг авч үзье. Named exports нь нэг файлд олон компонент эсвэл функцуудыг хуваалцах боломжийг олгодог. Default export-оос ялгаатай нь эдгээрийг яг экспортлогдсон нэрээр нь (эсвэл as түлхүүр үгээр нэрийг өөрчилж) импортлох ёстой.

Энэ нь файл компонентуудын сан (library) болж ажиллах үед хэрэгтэй байдаг. Жишээ нь, дараах файлд Cat болон Dog гэсэн хоёр компонент байна:

// Animals.jsx
export function Cat() {
return <h2>Mr. Whiskers</h2>;
}

export function Dog() {
return <h2>Fido</h2>;
}

Бид export түлхүүр үгийг компонент бүр дээр тус тусад нь ашиглаж байна. Эдгээрийг өөр файлд ашиглахын тулд бид муруй хаалт (curly braces) ашиглан импортлоно:

import { Cat, Dog } from "./Animals";

export default function App() {
return ( <div> <Cat /> <Dog /> </div>
);
}

{ Cat, Dog } синтакс нь JavaScript-д Animals.jsx файлаас тодорхой named exports-ийг импортлохыг зааж өгдөг. Муруй хаалт доторх нэрс нь экспортлогдсон нэрстэй яг таарч байх ёстой. Хэрэв та нэрийн зөрчил (naming conflicts)-өөс зайлсхийх эсвэл одоогийн файлд өөр нэр ашиглахыг хүсвэл import хийх үед as түлхүүр үгийг ашиглан нэрийг өөрчилж болно.

import { Cat as Kitty } from "./Animals";

export default function App() {
return <Kitty />;
}

Эцэст нь, нэг файл нэг default export болон олон named exports-тэй байж болно.

// Animals.jsx
export default function Cat() {
return <h2>Mr. Whiskers</h2>;
}

export function Dog() {
return <h2>Fido</h2>;
}

Mixed exports (холимог экспорт)-ийг импортлох үед default export нь эхэнд (муруй хаалтгүйгээр), дараа нь named exports (муруй хаалт дотор) бичигддэг:

// App.jsx
import Cat, { Dog } from "./Animals";

export default function App() {
return ( <div> <Cat /> <Dog /> </div>
);
}

Энэ жишээнд Cat нь default export тул муруй хаалт ашиглахгүй. Dog нь named export тул муруй хаалт шаардлагатай.

Default болон named exports хэрхэн ажилладгийг ойлгосноор та React компонентуудыг олон файлд зохион байгуулж, хэрэгтэй газарт нь дахин ашиглах боломжтой болно. Та илүү том аппликейшн бүтээх үед зөв экспортын хэв маягийг сонгох нь таны кодыг ойлгомжтой, арчлахад хялбар болгох бөгөөд бусдын бүтээсэн компонентуудтай ажиллахад илүү хялбар болгоно.
