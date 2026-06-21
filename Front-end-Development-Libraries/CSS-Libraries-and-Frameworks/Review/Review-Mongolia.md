# CSS Libraries and Frameworks Review

# 1. CSS Frameworks

```
1.1 CSS frameworks: CSS framework-ууд нь таны workflow-ийг хурдасгах, вебсайтын даяар жигд визуал хэв маяг (uniform visual style) үүсгэх, олон browser дээр таны дизайныг жигд харагдуулах, мөн CSS кодыг илүү зохион байгуулалттай (organized) байлгахад тусалдаг.
1.2 Popular CSS frameworks: Түгээмэл CSS framework-уудын зарим нь Tailwind CSS, Bootstrap, Materialize, болон Foundation юм.
1.3 Potential disadvantages:
    Framework-оос өгөгдсөн CSS нь таны custom CSS-тэй зөрчилдөх (conflict) магадлалтай.
    Таны вебсайт ижил framework ашигладаг бусад вебсайтуудтай төстэй харагдаж магадгүй.
    Том framework-ууд нь performance-ийн асуудал үүсгэж болзошгүй.
```

# 2. Two Types of CSS Frameworks

```
2.1 Utility-first CSS frameworks: Эдгээр framework-ууд нь margin, padding, эсвэл background color тохируулах зэрэг тодорхой зориулалттай жижиг class-уудтай байдаг. Та эдгээр жижиг class-уудыг шаардлагатай үед шууд HTML элементүүд дээр оноож болно. Tailwind CSS нь utility-first CSS framework гэж ангилагддаг.
```

Tailwind CSS ашиглан button-ийг style хийх жишээ:

<button class="bg-blue-500 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-700">
  Button
</button>

```
2.2 Component-based CSS frameworks: Эдгээр framework-ууд нь таны вебсайт дээр нэмэх боломжтой, урьдчилан бэлтгэгдсэн (pre-built) болон урьдчилан тодорхойлогдсон style-уудтай component-уудтай байдаг. Эдгээр component-ууд нь CSS framework-ийн албан ёсны documentation дээр байдаг бөгөөд та тэдгээрийг copy хийж project-доо paste хийж болно. Bootstrap нь component-based CSS framework гэж ангилагддаг.
```

Bootstrap ашиглан list group үүсгэх жишээ. HTML элементүүд дээр жижиг class-уудыг тус тусад нь оноохын оронд, та бүхэл component-ийг, HTML бүтэцтэй нь хамт нэмнэ.

<div class="card" style="width: 25rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">HTML</li>
    <li class="list-group-item">CSS</li>
    <li class="list-group-item">JavaScript</li>
  </ul>
</div>

# 3. Tailwind CSS

Tailwind нь utility-first CSS framework юм. Custom CSS rule-ууд бичихийн оронд, та жижиг utility class-уудыг HTML дотор шууд хослуулан (combining) дизайнаа бүтээдэг.

3.1 Responsive Design Utilities

Tailwind нь sm:, md:, болон lg: зэрэг prefix-үүдийг ашиглан өөр өөр дэлгэцийн хэмжээ (screen size)-д style-уудыг хэрэгжүүлдэг.

<div class="w-full md:w-1/2 lg:flex-row">Responsive layout</div>

3.2 Flexbox Utilities

flex, flex-col, justify-around, болон items-center зэрэг class-ууд нь уян хатан layout (flexible layouts) үүсгэхийг хялбар болгодог.

<div class="flex flex-col md:flex-row justify-around items-center">
  <p>Жижиг дэлгэц дээр column хэлбэрээр</p>
  <p>Дунд болон том дэлгэц дээр row хэлбэрээр</p>
</div>

3.3 Grid Utilities

Tailwind нь CSS Grid-д зориулсан utility-уудыг агуулдаг, жишээ нь grid, grid-cols-1, болон md:grid-cols-3.

<div class="grid grid-cols-1 md:grid-cols-3 gap-8">
  <div class="bg-gray-100 p-4">Багана 1</div>
  <div class="bg-gray-100 p-4">Багана 2</div>
  <div class="bg-gray-100 p-4">Багана 3</div>
</div>

3.4 Spacing Utilities

mt-8, mx-auto, p-4, болон gap-4 зэрэг utility-ууд нь CSS бичихгүйгээр жигд spacing үүсгэхэд тусалдаг.

<div class="mt-8 p-4 bg-indigo-600 text-white">Зайтай контент</div>

3.5 Typography Utilities

uppercase, font-bold, font-semibold, болон text-4xl зэрэг utility-ууд нь текстийн харагдах байдлыг (appearance) удирддаг.

Та breakpoint-ууд дээр өөрчлөгдөх font size тохируулж болно, жишээ нь text-3xl md:text-5xl.

<h1 class="text-3xl md:text-5xl font-semibold text-center">Responsive Heading
</h1>

3.6 Colors and Hover States

Tailwind нь өргөн хүрээний өнгөний сонголтыг (color palette) өгдөг, жишээ нь text-red-700, bg-indigo-600, болон bg-gray-100.

hover:bg-pink-600 зэрэг class-ууд нь интерактив эффектүүдийг (interactive effects) хялбар болгодог.

<a href="#" class="bg-pink-500 hover:bg-pink-600 text-white px-4 py-2 rounded-md">
  Намайг hover хийгээрэй
</a>

3.7 Borders, Rings, and Effects

```
3.7.1 Borders: border-2 border-red-300 нь тодорхой зузаан болон өнгөтэй хүрээ (border) нэмдэг.
3.7.2 Rings: ring-1 ring-gray-300 нь ихэвчлэн focus эсвэл card-д ашиглагддаг outline-тэй төстэй эффект үүсгэдэг.
3.7.3 Rounded corners and scaling: rounded-md, rounded-xl, болон scale-105 зэрэг class-ууд нь илүү гоёмсог харагдуулдаг.
```

<div class="p-6 rounded-xl ring-2 ring-fuchsia-500 scale-105">
  Онцолсон card
</div>

3.8 Gradients

Tailwind нь bg-gradient-to-r from-fuchsia-500 to-indigo-600 зэрэг gradient utility-уудыг дэмждэг.

<div class="p-4 text-white bg-gradient-to-r from-fuchsia-500 to-indigo-600">
  Gradient background
</div>

# 4. CSS Preprocessors

```
 CSS preprocessor: CSS preprocessor нь стандарт CSS-ийг өргөтгөдөг (extends) хэрэгсэл юм. Энэ нь өргөтгөсөн синтакстай (extended syntax) кодыг native CSS файл болгон хөрвүүлдэг (compiles). Энэ нь том төслүүдэд илүү цэвэр, дахин ашиглах боломжтой (reusable), давталт багатай (less repetitive), болон өргөтгөх боломжтой (scalable) CSS бичихэд тус болдог.
Features: CSS preprocessor-уудын өгч чадах боломжуудын зарим нь variables, mixins, nesting, болон selector inheritance юм.
Popular CSS preprocessors: Түгээмэл CSS preprocessor-уудын зарим нь Sass, Less, болон Stylus юм.
Potential disadvantages:
    CSS rule-уудыг стандарт CSS болгон compile хийх нь нэмэлт ачаалал (overhead) үүсгэж болзошгүй.
    Compile хийсэн кодыг debug хийх нь хэцүү байж магадгүй.
```

# 5. Sass

```
Sass: Энэ нь хамгийн түгээмэл CSS preprocessor-уудын нэг юм. Sass гэдэг нь "Syntactically Awesome Style Sheets" гэсэн үгийн товчлол юм.
Features supported by Sass: Sass нь variables, nested CSS rules, modules, mixins, inheritance, мөн үндсэн математик үйлдлүүдэд зориулсан operator-ууд зэрэг боломжуудыг дэмждэг.
```

5.1 Two Syntaxes Supported by Sass

```
5.1.1 SCSS syntax: SCSS (Sassy CSS) нь CSS-ийн үндсэн синтаксийг өргөтгөдөг. Энэ нь Sass-д хамгийн өргөн хэрэглэгддэг синтакс юм. SCSS файлууд нь .scss өргөтгөлтэй байдаг.
```

SCSS дээр variable тодорхойлох болон ашиглах жишээ:

$primary-color: #3498eb;

header {
background-color: $primary-color;
}

```
5.1.2 Indented syntax: Indented syntax нь Sass-ийн анхны синтакс бөгөөд мөн "Sass syntax" гэж нэрлэгддэг.
```

Indented syntax дээр variable тодорхойлох болон ашиглах жишээ:

$primary-color: #3498eb

header
background-color: $primary-color

# 6. Mixins

```
 6.1 Mixins: Mixins нь олон CSS property болон тэдгээрийн утгуудыг нэг нэрийн дор бүлэглэж, тухайн CSS кодын хэсгийг stylesheet даяар дахин ашиглах боломж олгодог.
```

SCSS синтакс дээр mixin тодорхойлох жишээ. Энэ тохиолдолд mixin-ийн нэр нь center-flex. Энэ нь flexbox ашиглан элементүүдийг төвд байрлуулах гурван CSS property агуулдаг.

@mixin center-flex {
display: flex;
justify-content: center;
align-items: center;
}

Таны тодорхойлсон mixin-ийг ашиглах жишээ:

section {
@include center-flex;
height: 500px;
background-color: #3289a8;
}
