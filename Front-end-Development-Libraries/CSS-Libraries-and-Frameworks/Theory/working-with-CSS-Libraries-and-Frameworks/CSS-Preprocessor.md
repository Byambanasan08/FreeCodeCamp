# CSS Preprocessor ашиглахын ач холбогдол юу вэ, мөн ямар сул талууд байдаг вэ?

CSS preprocessor гэдэг нь стандарт CSS-ийг variables, mixins, nesting, болон selector inheritance зэрэг хүчирхэг боломжуудаар өргөтгөдөг (extends) хэрэгсэл юм.

Эдгээр боломжуудын зарим нь, жишээлбэл variables болон nesting, одоо native CSS-д дэмжигдэж байгаа эсвэл улам их дэмжигдэж байна, мөн энэ чиг хандлага цаашид үргэлжлэх магадлал өндөр. Гэсэн хэдий ч native CSS-ийн өмнөх хувилбарууд эдгээр боломжуудыг дэмждэггүй байсан.

Тиймээс CSS preprocessor-ууд анхнаасаа маш өргөн хэрэглэгдэж эхэлсэн. Эдгээр нь таны бичсэн CSS дүрэм (rules) болон style-уудыг, өргөтгөсөн синтакс (extended syntax)-тай нь хамт авч, браузер ойлгож чадах native CSS файл болгон хөрвүүлдэг (compile).

CSS preprocessor ашигласнаар та CSS кодоо илүү дахин ашиглах боломжтой (reusable) болон логик (logical) бүтэцтэй болгох боломжтой. Мөн та CSS-д шууд дэмжигддэггүй mixins зэрэг хүчирхэг боломжуудыг ашиглах боломжтой болно.

Хамгийн түгээмэл CSS preprocessor-уудын жишээнд Sass, Less, болон Stylus орно.

Одоо Sass-ийн талаар ярья.

Sass гэдэг нь "Syntactically Awesome Style Sheets" гэсэн утгатай. Энэ нь CSS-ийн бүх хувилбаруудтай нийцтэй (compatible) бөгөөд хөгжүүлэгчдийн (developers) том community-ээр дэмжигддэг.

Sass нь дараах боломжуудыг дэмждэг:

```
Variables — spreadsheet даяар утгуудыг хадгалж, дахин ашиглах боломж олгодог.

Nested CSS rules — файл дотор визуал шатлал (visual hierarchy) үүсгэх боломж олгодог.

Modules — style-уудаа олон stylesheet-д хуваах боломж олгодог.

Mixins — CSS declaration-уудыг сайт даяар дахин ашиглах боломж олгодог.

Inheritance — олон CSS selector-ууд ижил property-уудыг хуваалцах боломж олгодог.

Мөн operators — энгийн математик үйлдлүүдийг хийхэд ашиглагддаг.
```

Sass нь мөн хоёр төрлийн синтакс дэмждэг.

SCSS синтакс нь "Sassy CSS" гэсэн утгатай бөгөөд CSS-ийн superset юм. Энэ нь SCSS нь CSS-ийн үндсэн синтаксыг өргөтгөдөг гэсэн үг.

SCSS нь Sass ашиглах үед хамгийн түгээмэл хэрэглэгддэг синтакс юм. Энэ нь CSS property-уудыг {} хаалтаар (curly braces) хүрээлэх, мөн declaration бүрийн төгсгөлд ; (semicolon) ашиглахыг шаарддаг — яг native CSS шиг.

Эдгээр файлууд .scss өргөтгөлтэй (extension) байдаг. Жишээ нь:

$primary-color: #3498eb;

header {
background-color: $primary-color;
}

Энд дээр харагдаж байгаа нь SCSS-д тодорхойлсон variable юм. Энэ variable доорх CSS дүрэмд ашиглагдаж байна.

Одоо SCSS-ийг бага хэрэглэгддэг өөр нэг синтакс болох indented syntax-тэй харьцуулъя. Үүнийг мөн "Sass syntax" гэж нэрлэдэг, учир нь энэ нь Sass-ийн анхны синтакс байсан.

Энэ синтакс нь дүрмүүдийг тодорхойлохдоо indentation ашигладаг. Жишээ нь:

$primary-color: #3498eb

header
background-color: $primary-color

Энд CSS дүрмийн эргэн тойронд curly brace байхгүй, мөн declaration-ийн төгсгөлд semicolon байхгүйг анзаараарай. Дээд хэсэгт мөн variable харагдаж байна. Энэ синтаксд variable нэр нь dollar тэмдэг ($)-ээр эхэлдэг бөгөөд энэ нь native CSS variable-уудаас ялгаатай боловч маш төстэй байдлаар ажилладаг.

Sass нь мөн mixins гэж нэрлэгддэг хүчирхэг боломжийг дэмждэг.

Mixins нь олон CSS property болон тэдгээрийн утгуудыг нэг нэрийн дор бүлэглэж, тухайн CSS кодын блокийг stylesheet даяар дахин ашиглах боломж олгодог.

Энэ нь таны CSS кодыг давхардал багатай (less repetitive) болгож, засварлахад (maintain) илүү хялбар болгодог, учир нь та тухайн блокт өөрчлөлт хийвэл mixin ашигласан бүх газарт автоматаар хэрэгжинэ.

Mixins нь өөрийн нэрийг (custom and descriptive names) ойлгомжтой өгч болдог тул CSS кодын блок бүр юу хийж байгааг ойлгоход тусалж, stylesheet-ийг илүү ойлгомжтой болгодог.

Мөн mixins нь stylesheet дотор жигд (uniform) style хэрэгжүүлснээр consistency-ийг дэмждэг.

Доорх нь SCSS синтакс дахь mixin-ийн жишээ:

@mixin center-flex {
display: flex;
justify-content: center;
align-items: center;
}

Mixin тодорхойлохын тулд та эхлээд @mixin at-rule бичээд, дараа нь mixin-ийн нэрийг бичнэ. Энэ жишээнд mixin-ийн нэр нь center-flex. Энэ нь Flexbox ашиглан элементүүдийг төвлөрүүлэх (center) гурван CSS property агуулж байна.

Дараа нь mixin-аа тодорхойлсны дараа @include at-rule ашиглан тухайн property-уудыг CSS дүрэмд оруулж ашиглана. Та @include бичээд mixin-ийн нэрийг дагуу бичихэд хангалттай. Энэ жишээнд нэр нь center-flex:

section {
@include center-flex;
height: 500px;
background-color: #3289a8;
}

Mixin болон CSS дүрэмтэй бүрэн код нь дараах байдалтай:

@mixin center-flex {
display: flex;
justify-content: center;
align-items: center;
}

section {
@include center-flex;
height: 500px;
background-color: #3289a8;
}

Та mixin-ийг хэрэгцээний дагуу олон CSS дүрэмд ашиглаж болно. Хэрэв өөрчлөлт хийх шаардлагатай бол зөвхөн mixin дээрээ өөрчлөлт хийхэд хангалттай бөгөөд бүх газар автоматаар хэрэгжинэ. Энэ жишээ нь SCSS синтакс дээр бичигдсэн. Энэ нь curly brace болон semicolon ашиглаж байгааг анзаараарай.

Доорх нь indented syntax буюу Sass syntax дахь хувилбар бөгөөд curly brace болон semicolon ашиглаагүй:

@mixin center-flex
display: flex
justify-content: center
align-items: center

section
@include center-flex
height: 500px
background-color: #3289a8

Харин доорх нь compile хийсний дараах, браузер шууд ойлгож ажиллуулах native CSS код:

section {
display: flex;
justify-content: center;
align-items: center;
height: 500px;
background-color: #3289a8;
}

Энд mixin-ийн гурван property (display, justify-content, align-items) дээр байрлаж байгааг анзаараарай.

Энэ нь CSS preprocessor-ууд юу хийж чаддгийн зөвхөн энгийн жишээ юм. Тэд өдөр тутмын workflow-д хэрэглэхэд үнэ цэнэтэй олон хүчирхэг боломжуудтай.

Гэсэн хэдий ч тэдгээр нь зарим сул талуудтай бөгөөд үүнийг мэдэж байх хэрэгтэй.

Нэгдүгээрт, CSS preprocessor-ууд CSS дүрмүүдийг стандарт CSS болгон compile хийх шаардлагатай. Энэ compile процессын нэмэлт ачаалал (overhead) нь ихэвчлэн цаг хугацаа болон нөөцийн хувьд бага байдаг ч бодит төслүүд дээр үүнийг анхаарах хэрэгтэй.

Дараагийнх нь debugging хийхэд хүндрэл үүсгэж болно, учир нь браузер compile хийгдсэн CSS-ийг шууд ашигладаг. Extended syntax-оос үүссэн асуудалтай style-ийг олох нь стандарт CSS-тэй харьцуулахад хэдэн нэмэлт алхам шаардаж магадгүй.

Гэсэн хэдий ч CSS preprocessor-уудын давуу тал нь ихэнхдээ сул талаасаа давдаг, ялангуяа төвөгтэй төслүүд дээр. Тэд цэвэрхэн (cleaner), дахин ашиглах боломжтой (reusable), давхардал багатай (less repetitive), болон өргөтгөх боломжтой (scalable) CSS бичихэд маш их тус болдог.
