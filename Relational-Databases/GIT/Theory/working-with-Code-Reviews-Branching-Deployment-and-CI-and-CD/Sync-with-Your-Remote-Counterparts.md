# Remote талуудтайгаа (remote counterparts) синк (sync) хэвээр байх сайн практикууд юу вэ?

Бид main branch-аа “бохирдуулахгүй” (soiling) байлгахын тулд өөрчлөлтүүдийг тусгаарласан байдлаар хийхийн тулд branch ашиглах талаар бага зэрэг ярьсан. Гэхдээ энэ нь яг юу гэсэн үг вэ, мөн яагаад чухал вэ?

Хэрвээ та өөрчлөлтүүдийг шууд main branch дээрээ commit хийвэл, мөн upstream repository (эх repository) таны биш өөр өөрчлөлтүүдийг хүлээн авбал “divergent history” гэж нэрлэгдэх нөхцөл үүснэ. Энэ нь таны main branch дээрх commit-ууд upstream main branch дээрх commit-уудтай нийцэхээ больсон гэсэн үг. Ингэснээр upstream өөрчлөлтүүдийг синк хийх нь маш төвөгтэй (nightmare) болно.

Тэгэхээр та сайн branching практик дагаж байгаа гэж үзвэл энэ асуудал гарахгүй. Хэрвээ өмнөх хичээлүүдийг дагаж хийсэн бол та нэг repository-г fork хийж, түүнийгээ local дээрээ clone хийсэн, мөн анхны repository руу заасан upstream remote-тэй болсон байх ёстой.

Хэрвээ үүнийг хийгээгүй бол товч сануулга өгье. Та repository-г fork хийж, fork-оо local дээр clone хийж, дараах командыг ажиллуулах хэрэгтэй:

git remote add upstream <url>

Энд <url>-ийг анхны repository-ийн SSH URL-ээр солино, таны fork-ийнх биш.

Зөв тохируулсан upstream-тэй бол та дараах командуудын дарааллыг ашиглан upstream-ийн хамгийн сүүлийн өөрчлөлтүүдийг татаж авч болно:

git checkout main
git fetch upstream
git merge upstream/main

Эдгээр нь юу хийдэг вэ? Та git checkout-ийг мэддэг болсон тул эхний команд таныг local дээрх main branch дээр байгааг баталгаажуулна.

Хоёр дахь команд болох git fetch upstream нь Git-д upstream remote (анхны repository) дээрх хамгийн сүүлийн өөрчлөлтүүдийг татаж авахыг хэлдэг. Гэхдээ pull-оос ялгаатай нь Git таны branch-ийг автоматаар шинэчлэхгүй. Энэ нь маш чухал, учир нь таны local main branch нь таны fork-ийн main branch-тэй холбогдсон байдаг — анхны repository-ийн main branch-тэй биш! Шууд git pull хийх нь хүсээгүй (unexpected) үр дүнд хүргэж болно.

Сүүлийн команд болох git merge upstream/main нь upstream remote дахь main branch-ийн хамгийн сүүлийн өөрчлөлтүүдийг таны одоогийн branch руу merge хийхийг Git-д заадаг — энэ нь таны local main branch юм, учир нь бид үүнийг checkout хийсэн.

Гэхдээ merge амжилтгүй бол яах вэ? Хэрвээ та санамсаргүйгээр main дээр commit хийсэн бөгөөд Git divergent history-ийг merge хийж чадахгүй байвал яах вэ? Хэрвээ та main branch-аас pull request хийгээгүй бол hard reset хийж Git-ийг branch-аа хүчээр шинэчлэх боломжтой.

git reset --hard upstream/main

git reset команд нь branch-ийн одоогийн төлөвийг reset хийх боломж олгодог. --hard флагийг дамжуулахад Git local файлуудыг branch-ийн төлөвтэй яг тааруулж хүчээр шинэчилдэг. Ингэснээр та “цэвэр” (clean slate) орчноос эхлэх боломжтой болно. Мөн upstream/main гэж өгснөөр Git таны одоогийн branch (main)-ийг upstream remote-ийн main branch-тэй ижил болгоно. Энэ командыг болгоомжтой ашиглаарай — Git history-г хүчээр өөрчлөх бүрт гэнэтийн, таагүй үр дагавар гарч болзошгүй.

Local main branch-аа зөв шинэчилсний дараа энэ төлвийг remote fork руугаа push хийх нь маш чухал (энэ нь ихэвчлэн origin байдаг). Үүнийг хийхийн тулд дараах командыг ажиллуулна:

git push

Энэ нь одоогийн төлвийг remote fork руу push хийнэ. Гэхдээ хэрвээ та history-ийг засахын тулд hard reset хийсэн бол remote fork ч мөн divergent history-тэй байж магадгүй тул push амжилтгүй болох боломжтой.

Үүнийг force push ашиглан засаж болно:

git push --force

Энэ командыг болгоомжтой ашиглаарай. Force push хийх нь таны remote history-г үндсэндээ дахин бичдэг бөгөөд хэрвээ буруу зүйл хийсэн бол үүнийг засах нь маш төвөгтэй болно.

Синк хийсэн өөрчлөлтүүдийг remote fork руу push хийх нь чухал, учир нь хэрвээ та local repository-оо алдсан тохиолдолд хамгийн сүүлийн өөрчлөлтүүдтэй fork-оо дахин clone хийх боломжийг хангана.

Local main branch-аа синк хийсний дараа та шинэ branch үүсгэж, дараагийн хувь нэмрээ хийхэд бэлэн болно — анхны кодын сангийн (codebase) хамгийн сүүлийн хувилбартайгаар!
