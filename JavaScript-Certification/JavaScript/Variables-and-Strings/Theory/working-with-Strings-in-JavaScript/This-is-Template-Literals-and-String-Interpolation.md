# Template Literals гэж юу вэ, мөн String Interpolation гэж юу вэ?

JavaScript-д template literals нь string-тэй ажиллах илүү хүчирхэг, уян хатан арга юм. Энгийн string-үүд нэг (‘ ’) эсвэл давхар (“ ”) хашилт ашигладаг бол template literals нь backtick (`) тэмдэг ашигладаг.

Template literals нь string дотор хувьсагч шууд оруулах боломжийг олгодог бөгөөд үүнийг string interpolation гэж нэрлэдэг.

Template literals нь олон мөртэй string үүсгэх, мөн string дотор хувьсагч эсвэл JavaScript илэрхийлэл (expression) шууд ашиглахад хялбар болгодог.

Жишээ:

```id="9j29di"
const name = "Alice";
const greeting = `Hello, ${name}!`;

console.log(greeting);
```

Энд backtick (`) ашигласан байна. `${name}`нь string interpolation-ийн жишээ бөгөөд`name` хувьсагчийн утгыг string дотор шууд оруулж байна.

String interpolation нь хувьсагч болон илэрхийллийг string дотор шууд ашиглах боломжийг олгодог. Энэ нь өмнөх `+` оператор ашигласан аргатай харьцуулахад илүү ойлгомжтой.

Жишээ (хуучин арга):

```id="1wqdns"
const name = "Alice";
const age = 25;
const message = "My name is " + name + " and I am " + age + " years old.";
console.log(message);
```

Template literals ашигласан жишээ:

```id="hbeo6t"
const name = "Alice";
const age = 25;
const message = `My name is ${name} and I am ${age} years old.`;
console.log(message);
```

Энд код илүү цэвэр, уншихад хялбар болсон байна.

Template literals-ийн бас нэг давуу тал нь олон мөртэй string дэмждэг явдал юм. Энгийн string-д `\n` ашиглах шаардлагатай байдаг бол энд шууд бичиж болно:

```id="6w73gx"
let poem = `Roses are red,
Violets are blue,
JavaScript is fun,
And so are you.`;

console.log(poem);
```

Мөн JavaScript илэрхийлэл (expression)-ийг string дотор ашиглаж болно:

```id="apnh3y"
const song = "Bohemian Rhapsody";
const score = 9.5;
const highestScore = 10;
const output = `One of my favorite songs is "${song}". I rated it ${
  (score / highestScore) * 100
}%.`;
console.log(output);
```

Энд `(score / highestScore) * 100` илэрхийллийг string дотор шууд тооцоолж байна.

Дүгнэж хэлбэл:

- Template literals нь backtick (`) ашигладаг
- String interpolation (`${}`) нь хувьсагч болон илэрхийллийг string дотор оруулдаг
- Олон мөртэй string бичихэд хялбар
- Кодыг илүү цэвэр, ойлгомжтой болгодог

Template literals нь ялангуяа олон хувьсагчтай, эсвэл төвөгтэй string-тэй ажиллах үед маш хэрэгтэй.
