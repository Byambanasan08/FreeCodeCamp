Cookies ашиглан, ихэвчлэн HTTP headers-аар удирдагддаг arbitrary data-г хэрхэн хадгалах вэ?

Өмнөх хичээлүүд дээр сурсанчлан, cookies нь вэбсайтууд хэрэглэгчийн төхөөрөмж дээр хадгалах боломжтой энгийн өгөгдөл юм.

Гэхдээ та cookies-д илүү төвөгтэй өгөгдлийн бүтэц (complex data structures) хадгалах боломжтой. Нэг нийтлэг арга нь object эсвэл array хадгалахын тулд JSON ашиглах юм. Дараах нь жишээ:

```js id="g2k8vz"
const userData = {
  name: "John Doe",
  age: 30,
  role: "admin"
};

document.cookie = "userInfo=" + JSON.stringify(userData) + "; path=/";
```

Энэ жишээнд бид хэрэглэгчийн өгөгдөл бүхий object үүсгэж, түүнийг JSON string болгон хувиргаад cookie-д хадгалж байна. Хэрэв бид энэ өгөгдлийг буцаан авахыг хүсвэл JSON.parse() ашиглан JSON string-ийг object болгон задлаж (parse) болно.

Одоо та манай сэдэв дэх "HTTP headers" хэсгийн талаар бодож байж магадгүй. Ихэвчлэн cookies-ийг сервер HTTP headers ашиглан тохируулдаг.

Жишээлбэл, сервер дараах header-ийг илгээж болно:

Set-Cookie: username=John Doe; expires=Thu, 31 Dec 2024 6:00:00 IST; path=/

Энэ header нь browser-д cookie тохируулахыг заадаг.

Мөн бид cookies-ийг JavaScript ашиглан browser дээр шууд тохируулж болно. Энэ нь сервер рүү шууд илгээх шаардлагагүй өгөгдлийг хадгалахад хэрэгтэй.

Cookies нь ойролцоогоор 4KB хэмжээний хязгаартай гэдгийг анхаарна уу, мөн тэдгээрт хэт их өгөгдөл хадгалах нь таны web app-ийг удаашруулж болзошгүй.

Cookies-д их хэмжээний өгөгдөл хадгалах нь network traffic-ийг нэмэгдүүлдэг, учир нь cookies нь HTTP request бүртэй хамт илгээгддэг.
