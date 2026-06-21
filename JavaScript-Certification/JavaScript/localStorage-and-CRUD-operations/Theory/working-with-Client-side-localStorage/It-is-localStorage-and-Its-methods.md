localStorage гэж юу вэ, мөн нийтлэг method-ууд (methods) нь юу вэ?

Web Storage API нь browser-д key-value хосуудыг хадгалах механизмыг (mechanism) олгодог бөгөөд ингэснээр developer-ууд page дахин ачаалагдах (reload) болон session-уудын хооронд ашиглагдах мэдээллийг хадгалах боломжтой болдог.

Web Storage API-ийн хоёр үндсэн бүрэлдэхүүн (components) нь localStorage болон sessionStorage юм.

localStorage нь Web Storage API-ийн нэг хэсэг бөгөөд browser-ийн цонх хаагдсан эсвэл page refresh хийгдсэн ч өгөгдлийг хадгалж үлдэх боломжийг олгодог. Энэ өгөгдөл нь application эсвэл хэрэглэгч тодорхой устгах хүртэл хадгалагдсаар байна.

sessionStorage нь мөн Web Storage API-ийн өөр нэг хэсэг бөгөөд page session-ийн хугацаанд өгөгдлийг хадгалдаг. Энэ нь browser tab эсвэл цонх нээлттэй байх хугацаанд өгөгдөл ашиглагдах боломжтой гэсэн үг. Харин localStorage-оос ялгаатай нь sessionStorage дахь өгөгдөл tab эсвэл цонх хаагдахад устгагддаг. Та дараагийн хичээл дээр sessionStorage-ийн талаар илүү дэлгэрэнгүй сурах болно.

localStorage-ийн нийтлэг хэрэглээнүүд (use cases) нь хэрэглэгчийн тохиргоо (user settings), жишээлбэл theme эсвэл хэлний сонголтыг хадгалах, browser session-уудын хооронд form-ийн өгөгдлийг санах, мөн web app-ийн гүйцэтгэлийг (performance) сайжруулахын тулд жижиг хэмжээний мэдээллийг cache хийх зэрэг орно.

Caching гэдэг нь байнга ханддаг өгөгдлийг түр хадгалах сан (temporary storage), өөрөөр хэлбэл cache-д хадгалснаар дараагийн хүсэлтүүдийг илүү хурдан гүйцэтгэх боломжийг олгодог. Ингэснээр тухайн өгөгдлийг дахин тооцоолох (recompute) эсвэл database эсвэл гадаад server зэрэг удаан эх үүсвэрээс (data source) дахин авах шаардлагагүй болдог.

localStorage-ийн нийтлэг method-ууд нь setItem, getItem, removeItem болон clear юм.

Дараах нь setItem() method-ыг ашиглан localStorage-д key-value хос хадгалах жишээ юм.

```js id="q8f6l2"
localStorage.setItem('username', 'JaneDoe');
```

Хэрэв бид тухайн key-ийн утгыг localStorage-оос авахыг хүсвэл getItem() method-ыг ашиглана.

```js id="s9k1d4"
let username = localStorage.getItem('username');
console.log(username); // JaneDoe
```

localStorage-оос тодорхой key-ээр элемент устгахын тулд removeItem() method-ыг ашиглаж болно.

```js id="j4m2v7"
localStorage.removeItem('username');
```

localStorage дахь бүх өгөгдлийг устгахын тулд clear() method-ыг ашиглаж болно.

```js id="w3n8c1"
localStorage.clear();
```

Одоо localStorage ашиглан хэрэглэгчийн сонгосон theme-ийг хадгалах жишээг харцгаая.

// Store the user's theme preference

```js id="z1p9xk"
localStorage.setItem('theme', 'dark');
```

// Retrieve the stored theme preference

```js id="b7q2lm"
const userTheme = localStorage.getItem('theme');
console.log(userTheme); // 'dark'
```

// Remove the theme preference

```js id="n5r8vd"
localStorage.removeItem('theme');
```

// Clear all localStorage data

```js id="c2t6yh"
localStorage.clear();
```

Энэ жишээнд:

```
Бид эхлээд хэрэглэгчийн theme сонголтыг (dark) хадгалж байна.

Дараа нь тухайн theme-ийг авч console-д хэвлэж байна.

Эцэст нь тодорхой нэг элемент устгах эсвэл бүх хадгалсан өгөгдлийг цэвэрлэх (clear) аргуудыг харуулж байна.
```

localStorage нь session-уудын хооронд хадгалагдах шаардлагатай жижиг хэмжээний өгөгдлийг хадгалахад маш хэрэгтэй боловч passwords зэрэг нууц мэдээллийг хадгалахад ашиглах ёсгүйг анхаарах хэрэгтэй, учир нь энэ нь аюулгүй байдлын (security) эрсдэл үүсгэж болзошгүй.
