# Performance Web API-уудыг ашиглан өөрийн гүйцэтгэлийн хэмжилтийн хэрэгслүүдийг хэрхэн бүтээх вэ?

Lighthouse болон Chrome DevTools зэрэг хэрэгслүүд маш сайн боловч зарим үед танд өөрийн сайтдаа тохирсон (custom) илүү нарийн ойлголтууд хэрэг болдог.

Тэгэхээр Performance Web API-ууд хэрэг болно!

Энэ хичээлд бид вебсайтынхаа хурдыг хэмжих болон шинжлэхэд ашиглаж болох гурван гол Web API-г хэрхэн ашиглахыг задлан тайлбарлах болно.

Гэхдээ эхлээд, Performance Web API гэж юу вэ?

Performance Web API-ууд нь хөгжүүлэгчдэд веб хуудас хэр үр ашигтай (efficiently) ачаалагдаж, хариу үйлдэл үзүүлж байгааг шууд кодоос хянах боломж олгодог. Эдгээр API-ууд нь хуудас ачаалах хугацааг хэмжих, рэндэрлэх болон харилцан үйлдлийн саатлыг (interaction delays) хянах, мөн JavaScript гүйцэтгэлийн хугацааг (execution time) шинжлэх боломж олгодог.

Эдгээр API-уудыг ашигласнаар та гуравдагч талын (third-party) програм хангамжид найдахгүйгээр өөрийн гүйцэтгэлийн мониторингийн хэрэгслүүдийг бүтээж чадна!

Одоо өнөөдөр ашиглаж болох гурван хүчирхэг Web API-г харцгаая.

Эхнийх нь performance.now().

Энэ API нь өндөр нарийвчлалтай (high-precision) timestamp (миллисекундээр) өгч, таны сайтын өөр өөр хэсгүүд хэр хугацаанд ачаалагдаж байгааг хэмжих боломж олгодог.

Жишээлбэл, та нэг функц хэр хурдан ажиллаж байгааг хэмжихийг хүсвэл:

const start = performance.now();
// Энд ямар нэг код ажиллуулна
const end = performance.now();

console.log(`Execution time: ${end - start}ms`);

Энэ нь Date.now()-оос илүү нарийвчлалтай, учир нь микросекунд (microsecond) түвшний нарийвчлалтай миллисекундээр хэмжиж, цагийн зөрүү (clock drift)-ийн асуудлаас зайлсхийдэг. Та үүнийг script гүйцэтгэлийн хугацаа, event response delay, болон animation гүйцэтгэлийг хянахад ашиглаж болно.

Дараагийнх нь Performance Timing API.

Энэ API нь хуудас ачаалах бүх үе шатыг (stage), DNS lookup-оос эхлээд DOMContentLoaded хүртэл задлан харуулдаг.

Та хуудсыг бүрэн ачаалахад хэр хугацаа зарцуулж байгааг хэмжихийг хүсэж байна уу?

let [navigationTiming] = performance.getEntriesByType("navigation");

if (navigationTiming instanceof PerformanceNavigationTiming) {
// navigation эхлэлээс DOM content ачаалагдах хүртэлх хугацааг тооцоолох
const pageLoadTime =
navigationTiming.domContentLoadedEventEnd - navigationTiming.startTime;

console.log("DOM Content Loaded Time:", pageLoadTime, "ms");
}

Энэ API-аар хянаж болох гол хэмжүүрүүд нь DNS lookup time — өөрөөр хэлбэл холболтын хурд, Time to First Byte (TTFB) — серверийн хариу өгөх хурд, болон DOMContentLoaded — өөрөөр хэлбэл хуудас харилцан үйлдэлд бэлэн болох үе юм.

Хэрэв таны хуудас удаан ачаалагдаж байвал энэ API яг аль хэсэгт саатал (delay) үүсэж байгааг тодорхой зааж өгдөг!

Эцэст нь PerformanceObserver-ийн тухай ярья.

Энэ API нь layout shift, long task, болон хэрэглэгчийн харилцан үйлдэл зэрэг гүйцэтгэлийн event-уудыг (performance events) сонсдог (listens).

Та урт хугацаатай JavaScript task-уудыг хянахыг хүсэж байна уу?

const observer = new PerformanceObserver((list) => {
list.getEntries().forEach((entry) => {
console.log(`Long task detected: ${entry.duration}ms`);
});
});

observer.observe({ type: "longtask", buffered: true });

Энэ API юу хянаж чаддаг вэ? Энэ нь long task — өөрөөр хэлбэл рэндэрлэхийг блоклодог JavaScript, layout shift — UI гацалт (jank)-ыг илрүүлэх, болон First Input Delay (FID) — хэрэглэгчийн оролтод (input) хуудас хэр хурдан хариу өгч байгааг хянах боломжтой.

Хэрэв та бодит цагийн (real-time) гүйцэтгэлийн хяналт хийхийг хүсвэл энэ API маш хүчирхэг шийдэл юм.

Тэгвэл аль API-г ашиглах вэ? Энд товч харьцуулалт байна:
Performance API Хамгийн тохиромжтой хэрэглээ
performance.now() Функц болон script-ийн нарийвчилсан хугацаа хэмжих
Performance Timing API Бүрэн хуудасны ачаалалтын гүйцэтгэлийг хэмжих
Performance Observer Харилцан үйлдэл болон рэндэрлэлтийг бодит цагт хянах

Эдгээр API-уудыг хослуулан ашигласнаар та өөрийн гүйцэтгэлийн хэмжилтийн хэрэгслүүдийг бүтээж, таны сайтанд хамгийн чухал үзүүлэлтүүдийг яг таг хянах боломжтой болно.
