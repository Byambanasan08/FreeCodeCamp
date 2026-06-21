# BDD болон TDD гэж юу вэ?

Програм хангамжийн хөгжүүлэлтэд (software development) мэдэж байх ёстой хоёр төрлийн тестийн хандлага (testing approaches) байдаг. Тэдгээр нь TDD (Test-Driven Development) болон BDD (Behavior-Driven Development) юм.

Эхлээд TDD-г авч үзье. Test-Driven Development нь аппликейшний функцуудыг (features) хөгжүүлэхээс өмнө тестүүдийг эхэлж бичихийг онцолдог аргачлал (methodology) юм.

TDD-ийн ердийн процесс дараах байдалтай:

```
Тест бичих

Тэр тест амжилтгүй (fail) болохыг баталгаажуулах

Тэр тестийг давах код бичих

Энэ удаад тест амжилттай (pass) болохыг баталгаажуулах

Кодонд шаардлагатай refactor хийх
```

1-5 алхмуудыг давтах.

Функцуудыг хөгжүүлэхээс өмнө тест бичих нь хөгжүүлэлтийн явцад (development process) хөгжүүлэгчдэд бодит цагийн (real-time) feedback өгдөг. Мөн хөгжүүлэлтийн эхний шатанд алдаануудыг (bugs) илрүүлэхэд тусалдаг.

Зарим програм хангамжийн багууд TDD хандлагыг дагадаг боловч TDD нь салбарт (industry) маргаантай (polarizing) сэдэв юм. Та TDD-г дэмжсэн болон шүүмжилсэн олон нийтлэл (articles) болон бичлэгүүдийг олж харах болно. Та энэ хандлагын талаар ямар бодолтой байхаас үл хамааран, бодит амьдрал дээр тааралдаж магадгүй тул мэдэж байх нь чухал.

Одоо хоёр дахь тестийн хандлага болох Behavior-Driven Development (BDD)-ийг авч үзье. Behavior-Driven Development нь тестүүдийг бизнесийн зорилгуудтай (business goals) уялдуулах (aligning) хандлага юм. Эдгээр тестүүд нь техникийн болон техникийн бус (non-technical) хүмүүс аль аль нь ойлгох хэлээр бичигдэх ёстой.

Програм хангамжийн тодорхой зан төлөвүүдийг (behaviors) тестлэхэд BDD нь ихэвчлэн Gherkin хэлийг ашигладаг бөгөөд энэ нь бизнесийн орчинд зан төлөв болон сценарийг (scenarios) тайлбарлахад хэрэглэгддэг. Gherkin хэл нь сценарийг тайлбарлахдаа Given, When, Then гэсэн бүтэц ашигладаг.

Доорх нь жишээ:

Scenario: Creating a New Blog Post

Given the user is logged into their account and is on the "Create New Post" page,

When the user enters a title and content for the post and clicks the "Publish" button,

Then the blog post should be saved and displayed on the homepage with the correct title, content, and timestamp.

Эхлээд та scenario тодорхойлох хэрэгтэй. Scenario-ийн жишээ нь хэрэглэгч аппликейшнд нэвтрэх эсвэл вебсайт дээр захиалга өгөх зэрэг байж болно. Энэ жишээнд scenario нь хэрэглэгч сайт дээр шинэ блог пост үүсгэх тухай юм.

Scenario тодорхойлогдсоны дараа та Given statement-оор эхлэх хэрэгтэй. Энэ нь хэрэглэгч ямар нөхцөлд (context) байгаагаас эхэлж үйлдэл хийх гэж байгааг тайлбарлана. When statement нь хэрэглэгчийн хийж буй үйлдлийг илэрхийлдэг.

Эцэст нь Then statement нь хэрэглэгчийн өмнөх үйлдлийн үр дүнд гарах ёстой үр дүнг илэрхийлдэг. Бүх scenario-уудаа тодорхойлсны дараа та scenario бүрт тест бичиж болно.

BDD testing framework-үүдийн жишээнд Cucumber, JBehave, болон SpecFlow орно.
