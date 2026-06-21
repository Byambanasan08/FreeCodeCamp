# Mocking, Faking, болон Stubbing-ийн ялгаа юу вэ?

Mocking гэдэг нь бодит өгөгдлийг (real data) орлуулахын тулд бодит компонентуудын зан төлөвийг (behavior) дуурайлган (simulate) хуурамч өгөгдөл (false data) ашиглах процессыг хэлнэ. Ингэснээр тестер болон хөгжүүлэгчид аппликейшний тодорхой компонентуудыг гадны хамаарал (external dependencies)-д найдахгүйгээр тестлэх боломжтой болдог.

Mocking-ийн түгээмэл хэрэглээний нэг нь API дуудлагатай (API calls) ажиллах үед байдаг. Таны аппликейшнд дараах fetch дуудлага байна гэж төсөөлье:

export const postService = {
async getPosts() {
const response = await fetch("https://api.example.com/posts");
return response.json();
},
};

Хэрэв та postService функцийг тестлэх хэрэгтэй бол өгөгдлийг байнга API-аас татахын оронд API-ийн хариуг mock хийж болно. API-аас өгөгдөл татах нь хугацаа шаарддаг бөгөөд сүлжээний (network) боломж, серверийн хариу зэрэг гадны хүчин зүйлсээс хамаардаг. API хариуг mock хийх нь эдгээр гадны хүчин зүйлсийг арилгаж, тестерүүдэд урьдчилан тодорхойлогдсон (predictable), хянагдсан (controlled) өгөгдлийн багцтай ажиллах боломж олгодог.

Доорх нь mock API хариуны жишээ:

[
{
"id": 1,
"title": "Understanding Async/Await in JavaScript",
"content": "Async/Await makes asynchronous code look and behave like synchronous code...",
"author": "Jane Doe",
"created_at": "2025-04-10T14:32:00Z"
},
{
"id": 2,
"title": "10 Tips for Writing Clean Code",
"content": "Clean code is not just about code formatting. It involves naming, architecture...",
"author": "John Smith",
"created_at": "2025-04-08T09:21:00Z"
},
{
"id": 3,
"title": "Exploring React 19 Features",
"content": "React 19 comes with exciting features like new hooks and better performance...",
"author": "Alex Lee",
"created_at": "2025-04-07T18:47:00Z"
}
]

Одоо mocking юу болохыг ойлгосон тул үүнийг stubbing-тэй харьцуулъя. Stubs гэдэг нь аппликейшний хүлээгдэж буй зан төлөвт (expected behavior) зориулан урьдчилан тодорхойлсон хариу (pre-defined responses) эсвэл dummy өгөгдөл буцаадаг объектууд юм. Жишээлбэл, та тест дээрээ бодит database холболт (database connection)-д найдахгүйгээр database-ийн зан төлөвийг stub хийж болно.

Доорх нь Jest дээрх stub-ийн жишээ:

import { postService } from "./postService";
import { db } from "./db";

jest.mock("./db", () => ({
db: {
fetchPosts: jest.fn(),
},
}));

test("should return stubbed posts", async () => {
const fakePosts = [
{ id: 1, title: "Stubbed Post", content: "This is a stubbed post." },
];

db.fetchPosts.mockResolvedValue(fakePosts);

const posts = await postService.getPosts();

expect(posts).toEqual(fakePosts);
});

db.fetchPosts.mockResolvedValue(fakePosts); нь энэ жишээн дэх stub юм.

Сүүлийнх нь fakes-ийн тухай. Fakes гэдэг нь бодит компонентуудын энгийн (simplified) хувилбар бөгөөд бодит зүйлсийн төвөгтэй байдал (complexity) болон side effect-уудгүй байдаг. Жишээлбэл, та бодит database-тай харьцахын оронд өгөгдлийг санах ойд (memory) хадгалж fake database үүсгэж болно. Ингэснээр database үйлдлүүдийг санах ойд дуурайлган гүйцэтгэх боломжтой бөгөөд бодит database-тай ажиллахаас хамаагүй хурдан байдаг. Өөр нэг түгээмэл жишээ нь file system-тэй ажиллах үед fakes ашиглах явдал юм. Та тест хийх үед бодит file system-ийн оронд fake file system үүсгэж болно.

Та илүү төвөгтэй програм хангамжийн аппликейшнууд (software applications) хөгжүүлэх явцдаа тест хийхдээ mocks, stubs, эсвэл fakes-ийг тохирох үед нь ашиглах талаар бодолцох хэрэгтэй.
