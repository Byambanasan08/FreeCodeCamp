# React-д Events хэрхэн ажилладаг вэ?

Event handling (үйл явдлыг боловсруулах) нь интерактив вэбсайт бүрийн чухал хэсэг юм.

React нь Synthetic Event System (хиймэл event систем)-ээр дамжуулан event-уудыг боловсруулах хүчирхэг бөгөөд нэгэн жигд (consistent) арга замыг өгдөг. Энэ нь өмнөх хичээлүүдэд үзсэн click, keydown, submit зэрэг native events (эх event-ууд)-ийн дээрх wrapper (бүрхүүл) юм.

Энэ cross-browser wrapper нь event-ууд бүх браузер дээр ижилхэн ажиллахыг баталгаажуулж, ямар нэг зөрүү (inconsistencies)-ийг арилгадаг.

React-д events хэрхэн ажилладгийг харцгаая, ингэснээр та төслүүддээ ашиглаж эхлэх боломжтой болно.

React-д event handler-ууд нь native browser events-тэй төстэй ажилладаг боловч бага зэрэг өөрчлөлтүүдтэй.

onclick болон onsubmit гэх мэт жижиг үсгээр бичигдсэн event attribute нэрсийг ашиглахын оронд React нь camelCase ашигладаг, жишээ нь onClick болон onSubmit.

Мөн event-ийн төрлийг string-ээр заахын оронд React нь event handler-д function хүлээдэг.

Event handler function нь элементэд prop хэлбэрээр дамжуулагддаг бөгөөд onClick эсвэл onSubmit зэрэг event төрлүүд нь JSX дотор attribute хэлбэрээр ашиглагддаг.

Энгийн HTML-д click event-тэй хэрхэн ажилладгийг сануулъя:
Example Code

<button onclick="alert('Button clicked!')">Click Me</button>

React-д үүнийг дараах байдлаар хийдэг:
Example Code

function handleClick() {
console.log("Button clicked!");
}

<button onClick={handleClick}>Click Me</button>;

Энэ жишээнд handleClick нь хэрэглэгч товчлуур дээр дарахад console дээр мессеж хэвлэж байна.

Анхаарах зүйл бол onClick attribute дотор handleClick-ийн ард хаалт () бичих шаардлагагүй, учир нь та function-ийг дуудаж байгаа биш, харин түүнд reference (заалт) өгч байна.

React-д event handler function-ууд ихэвчлэн handle гэсэн угтвартай (prefix) эхэлдэг бөгөөд энэ нь тухайн function event-ийг боловсруулах үүрэгтэйг илэрхийлдэг, жишээ нь handleClick эсвэл handleSubmit.

Хэрэглэгчийн үйлдэл event үүсгэх үед React таны handler руу Synthetic Event object-ийг дамжуулдаг. Энэ object нь vanilla JavaScript-ийн native event object-тэй төстэй бөгөөд type, target, currentTarget зэрэг property-уудыг агуулдаг.

Та handler function-д event-ийг параметр болгон авч, console дээр хэвлэж бүтэцийг нь харах боломжтой:
Example Code

function handleClick(event) {
console.log(event);
}

onSubmit event-ийн үед браузер refresh хийх зэрэг default үйлдлийг зогсоохын тулд preventDefault() method-ийг дуудаж болно:
Example Code

function handleSubmit(event) {
event.preventDefault();
console.log("Form submitted!");
}

<form onSubmit={handleSubmit}>
  <input type="text" />
  <button>Submit</button>
</form>;

Мөн event-ийг parent элементүүд рүү bubbling (дээр дамжих)-ээс зогсоохын тулд event.stopPropagation() ашиглаж болно.

Зарим тохиолдолд, жишээ нь delete болон edit функцүүдийг боловсруулах үед, та event handler руу нэмэлт өгөгдөл дамжуулах шаардлагатай байж болно. Үүнийг inline arrow function ашиглан хийж болно:
Example Code

function handleDelete(id) {
console.log("Deleting item:", id);
}

<button onClick={() => handleDelete(1)}>Delete Item</button>;

React-д inline event handler ашиглах нь асуудалгүй, учир нь React нь re-render-үүдийг үр ашигтай удирдаж, performance асуудлуудаас зайлсхийдэг.

Vanilla JavaScript-д inline event handler ашиглах нь render бүр дээр шинэ function үүсгэхэд хүргэдэг тул performance асуудал үүсгэж болно, учир нь virtual DOM байхгүй учраас энэ процессыг оновчтой болгох боломжгүй байдаг.
