Cache API гэж юу вэ, мөн хэрхэн ажилладаг вэ?

Cache API нь network request болон response-уудыг хадгалахад ашиглагддаг бөгөөд ингэснээр web application-ууд илүү үр ашигтай ажиллах, мөн offline үед ч ажиллах боломжтой болдог. Энэ нь Service Worker API-ийн өргөн хүрээний (broader) хэсэг бөгөөд найдвартай бус эсвэл удаан network нөхцөлд ажиллах чадвартай Progressive Web Apps (PWAs)-ийг бүтээхэд маш чухал үүрэгтэй.

Cache API-г үргэлжлүүлэн судлахаас өмнө бид service workers, PWAs, болон network request-ууд хэрхэн ажилладгийг суурь түвшинд ойлгох хэрэгтэй.

Network request гэдэг нь web browser эсвэл application интернетээр сервер рүү өгөгдөл эсвэл resource авахын тулд илгээдэг хүсэлт юм. Жишээлбэл, та вэбсайт руу ороход таны browser web server рүү request илгээж, тухайн хуудсыг харуулахад хэрэгтэй файлуудыг (HTML, зураг, видео гэх мэт) авдаг.

Service worker гэдэг нь web application-ийн background-д ажилладаг, үндсэн browser thread-ээс тусдаа ажилладаг JavaScript файлын тусгай төрөл юм. Энэ нь web page болон network хооронд зуучлагч (middleman) болж ажилладаг бөгөөд developer-уудад network request-уудыг intercept хийх, resource-уудыг cache хийх, мөн push notification эсвэл background sync зэрэг зүйлсийг зохицуулах боломжийг олгодог.

PWA буюу Progressive Web App нь орчин үеийн web технологиудыг ашиглан native app шиг туршлага (experience) олгодог web application-ийн төрөл юм. PWA-ууд нь ямар ч төхөөрөмж дээр, network нөхцөлөөс үл хамааран найдвартай ажиллахаар зохион бүтээгдсэн бөгөөд browser-оор нэвтрэх эсвэл хэрэглэгчийн төхөөрөмж дээр уламжлалт app шиг суулгах боломжтой.

Одоо бид service workers, PWAs, болон network request-уудын талаар илүү ойлголттой болсон тул Cache API-г илүү гүнзгий судалж болно.

Cache API нь Request болон Response object-уудыг хадгалдаг storage механизм юм. Сервер рүү request илгээгдэх үед application тухайн response-ийг хадгалж, дараа нь шинэ network request хийхийн оронд cache-аас буцаан авах боломжтой. Энэ нь load time-ийг багасгаж, bandwidth хэмнэж, нийт хэрэглэгчийн туршлагыг (user experience) сайжруулдаг.

Browser нь CacheStorage гэж нэрлэгддэг хадгалах орчныг (storage area) олгодог бөгөөд developer-ууд network request болон тэдгээрийн response-уудыг key-value хос хэлбэрээр хадгалах боломжтой.

Cache-Control header ашиглан developer-ууд cache-д хадгалагдсан resource хэр удаан хадгалагдах, мөн дахин баталгаажуулах (revalidate) эсвэл шууд cache-аас өгөх эсэхийг тодорхойлж болно.

Cache API-г ашигласнаар developer-ууд offline-first web application-уудыг бүтээж чадна, жишээлбэл PWA нь хэрэглэгч network-ээс салсан үед cache-д хадгалагдсан asset-уудыг ашиглан ажиллах боломжтой.
