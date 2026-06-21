[ Async/Await гэж юу вэ, мөн энэ нь хэрхэн ажилладаг вэ?

Өмнөх хичээлүүдэд та asynchronous programming (асинхрон програмчлал)-ийн талаар сурсан бөгөөд энэ нь серверээс өгөгдөл авах (fetching data from a server), файлаас өгөгдөл унших (reading data from a file) зэрэг хугацаа их шаарддаг ажлууд дуусахыг хүлээх хугацаанд бусад код ажиллах боломжийг олгодог.

Promise (промис)-ууд дээр суурилсан async/await нь асинхрон код бичих болон уншихыг илүү хялбар болгодог. Та function-ийн өмнө async түлхүүр үг (keyword)-ийг тавихад тухайн function үргэлж Promise буцаадаг болно гэсэн үг. Зөвхөн async function-ийн дотор await түлхүүр үгийг ашиглаж болох бөгөөд энэ нь дараагийн мөрийн код руу шилжихээс өмнө Promise resolve (шийдэгдэх)-ийг хүлээх боломжийг олгодог. Доорх жишээ нь async/await хэрхэн ажилладагийг харуулж байна:

async function delayedGreeting(name) {
console.log("A Messenger entered the chat...");
await new Promise(resolve => setTimeout(resolve, 2000));
console.log(`Hello, ${name}!`);
}

delayedGreeting("Alice");
console.log("First Printed Message!");

Энэ кодод бид delayedGreeting нэртэй async function тодорхойлж байна. Энэ function-ийн дотор бид await ашиглан гүйцэтгэлийг 2 секундээр түр зогсоож байна. Энэ саатлын дараа мэндчилгээ хэвлэгдэнэ.

Бид энэ function-ийг дуудах үед мэндчилгээнээс өмнө First Printed Message! гарч ирэхийг харах болно. Энэ нь тухайн function асинхрон учраас бусад кодын гүйцэтгэлийг хаадаггүй гэсэн үг.

async/await-ийн хамгийн том давуу талуудын нэг нь алдааны боловсруулалт (error handling) юм. Promise ашиглах үед бид ихэвчлэн алдааг боловсруулахын тулд .catch() method ашиглах шаардлагатай болдог байсан. Харин async/await ашиглах үед бид try/catch блок ашиглаж чадна. Доорх жишээг харна уу:

async function fetchUserData() {
try {
let response = await fetch(`https://api.example.com/users`);
let userData = await response.json();
console.log(userData);
} catch (error) {
console.log("Error fetching user data:", error);
}
}

fetchUserData();

Энэ жишээнд бид async/await ашиглан API-ээс хэрэглэгчийн өгөгдөл (user data) авч байна. await түлхүүр үгийг хоёр удаа ашигласан: нэг нь fetch үйлдэл дуусахыг хүлээхэд, нөгөө нь JSON задлах (parsing)-ыг дуусахыг хүлээхэд. Хэрэв энэ процессын явцад ямар нэг алдаа гарвал, тэр нь catch блок дотор баригдана. ]
