# Unit Testing гэж юу вэ?

Та аппликейшнуудаа (applications) зохион бүтээх (design) үед ихэвчлэн нэг тодорхой үүрэг гүйцэтгэдэг жижиг функцуудын (functions) цувралтай ажилладаг. Үүнийг "single responsibility principle" гэж нэрлэдэг. Ийм жижиг функцуудтай үед тэдгээрийг тестлэх нь бүх зүйл хүлээгдэж буй байдлаар (as expected) ажиллаж байгаа эсэхийг баталгаажуулах хамгийн зөв арга юм. Энэ хичээлд бид түгээмэл Jest testing framework ашиглан unit test хэрхэн бичихийг харна.

Энэ жишээнд бид шинэ форматтай string буцаах үүрэгтэй функц үүсгэнэ:

export function getFormattedWord(str) {
if (!str) return '';
return str.charAt(0).toUpperCase() + str.slice(1);
}

Энэхүү getFormattedWord функц нь str нэртэй параметртэй бөгөөд эхлээд str хоосон эсэхийг шалгана. Хэрэв хоосон бол хоосон string буцаана. Үгүй бол эхний үсгийг томоор (capitalized) болгосон шинэ string буцаана. Бид энэ функцийг export хийж байгаа нь test файлд ашиглахын тулд юм.

Тусдаа getFormattedWord.test.js файлд бид функц яг хийх ёстой зүйлээ хийж байгаа эсэхийг шалгах тестүүдийг бичиж болно.

getFormattedWord.test.js файлын эхэнд бид эхлээд функцийг дараах байдлаар import хийх хэрэгтэй:

import { getFormattedWord } from "./getFormattedWord.js";

Дараа нь npm i jest командыг ашиглан Jest package-ийг суулгана. Ингээд жижиг үсгээр бичигдсэн hello үгийг зөв форматлаж Hello болгож байгаа эсэхийг шалгах тест бичнэ:

test('capitalizes the first letter of a word', () => {
expect(getFormattedWord('hello')).toBe('Hello');
});

expect функц нь утгыг шалгахад ашиглагддаг. Энэ нь matcher-тай хамт хэрэглэгддэг бөгөөд matcher нь тухайн утга хүлээгдэж буй байдлаар ажиллаж байгаа эсэхийг шалгах функц юм. Энэ тохиолдолд matcher нь toBe(). Jest нь truthiness, string, number болон бусад утгуудыг шалгахад зориулсан олон төрлийн matcher-тэй.

Тестүүдээ ажиллуулах нэг арга бол package.json файлдаа npm script нэмэх юм. Jest framework-ийн жишээ script:

"scripts": {
"test": "jest"
},

Дараа нь terminal дээр npm run test гэж ажиллуулж тестүүдээ гүйцэтгэнэ. Хэрэв тестүүд амжилттай бол terminal дээр дараахтай төстэй зүйл харагдана:

PASS ./getFormattedWord.test.js
✓ capitalizes the first letter of a word (1 ms)

Test Suites: 1 passed, 1 total
Tests: 1 passed, 1 total
Snapshots: 0 total
Time: 0.103 s, estimated 1 s
Ran all test suites.

Алдаатай тест ямар харагддагийг харахын тулд бид зориудаар (intentionally) функцийг эвдэж дараах байдлаар өөрчилж болно:

export function getFormattedWord(str) {
if (!str) return '';
return "This is incorrect";
}

Одоо npm run test командыг ажиллуулахад алдааны мэдэгдэл гарна, учир нь тест өөр үр дүн хүлээж байсан:

FAIL ./getFormattedWord.test.js
✕ capitalizes the first letter of a word (1 ms)

● capitalizes the first letter of a word

expect(received).toBe(expected) // Object.is equality

Expected: "Hello"
Received: "This is incorrect"

```
2 |
3 | test('capitalizes the first letter of a word', () => {
4 |   expect(getFormattedWord('hello')).toBe('Hello');
                                        ^
5 | });
6 |

at Object.toBe (getFormattedWord.test.js:4:37)
```

Test Suites: 1 failed, 1 total
Tests: 1 failed, 1 total
Snapshots: 0 total
Time: 0.121 s, estimated 1 s
Ran all test suites.

Одоо бид функцээ анхны байдалд нь буцааж өөрчилнө:

export function getFormattedWord(str) {
if (!str) return '';
return str.charAt(0).toUpperCase() + str.slice(1);
}

getFormattedWord-д аргумент өгөөгүй тохиолдлыг шалгах өөр нэг тест нэмнэ:

test("returns an empty string when no argument is provided", () => {
expect(getFormattedWord()).toBe("");
});

Илүү бат бөх (robust) болгохын тулд өөр олон тестүүд нэмэх боломжтой боловч эдгээр эхний тестүүд нь unit testing-ийн сайн эхлэл юм.

JavaScript аппликейшн тестлэхэд түгээмэл ашиглагддаг testing framework-үүдэд Jest, Mocha, болон Vitest орно.

Unit testing нь чухал, учир нь энэ нь таны програм дахь алдаануудыг (bugs) илрүүлэхэд тусалж, бүх зүйл хүлээгдэж буй байдлаар ажиллаж байгааг баталгаажуулдаг. Мөн энэ нь таны аппликейшний баримтжуулалтын (documentation) нэг хэлбэр болж чадна, учир нь тестүүд нь таны кодын хүлээгдэж буй зан төлөвийг (expected behavior) илэрхийлдэг.
