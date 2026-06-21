How Does try...catch...finally Work?

try...catch...finally хэрхэн ажилладаг вэ?

---

Өмнөх хичээлд та програмдаа exception (алдаа) хэрхэн шидэхийг сурсан. Энэ хичээлд бид эдгээр алдаануудыг try…catch…finally block ашиглан хэрхэн зөв (gracefully) зохицуулахыг авч үзнэ.

try block нь алдаа үүсэж болзошгүй кодыг ороож (wrap хийхэд) ашиглагддаг. Энэ нь амжилтгүй болж магадгүй үйлдлийг туршиж үзэх “аюулгүй орчин” шиг ажилладаг.

catch block нь try block дотор гарсан алдааг барьж авч, зохицуулдаг. Та catch дотор Error object-ийг ашиглан яг ямар алдаа гарсныг шалгаж болно.

finally block нь try болон catch block-уудын дараа, алдаа гарсан эсэхээс үл хамааран үргэлж ажилладаг. Энэ нь ихэвчлэн цэвэрлэгээний (cleanup) ажилд ашиглагддаг, жишээ нь файл хаах эсвэл нөөц (resource) чөлөөлөх зэрэг.

Дараах нь try…catch block ашигласан жишээ юм:

```js id="d9k3qp"
function processInput(input) {
  if (typeof input !== "string") {
    throw new TypeError("Input must be a string.");
  }

  return input.toUpperCase();
}

try {
  console.log("Starting to process input...");
  const result = processInput(9);
  console.log("Processed result:", result);
} catch (error) {
  console.error("Error occurred:", error.message);
} 
```

Энэ жишээнд processInput нэртэй function байгаа бөгөөд эхлээд input-ийн төрөл string биш эсэхийг шалгана. Хэрэв тийм бол алдаа шиднэ. Үгүй бол input дээр toUpperCase method ашиглан үр дүнг буцаана.

Бид function-ийг try block дотор дуудсан. Function дотор алдаа шидэгдэж байгаа тул тэр алдаа catch block дотор баригдаж, console дээр алдааны мессеж хэвлэгдэнэ.

catch block-д дамжуулагдсан error нь Error object бөгөөд тухайн алдааны талаарх мэдээллийг агуулдаг. Энэ жишээнд бид message property-ийг ашиглаж, хэрэглэгчид ойлгомжтой мэдээллийг харуулж байна.

Бид console.error ашиглаж байгаа, учир нь энэ нь алдааг log хийхэд зориулагдсан. Олон орчин үеийн browser-д console.error()-ийн үр дүн console дээр улаан өнгөөр харагддаг.

finally statement нь exception үүссэн эсэхээс үл хамааран үргэлж ажиллана.

```js id="k7v2ms"
try {
  // Code that might throw an error
} catch (error) {
  // Code to handle the error
} finally {
  // Code that runs regardless of whether an error occurred or not
}
```

finally statement-ийн сайн хэрэглээний жишээ бол файлтай ажиллах үед юм. JavaScript-д та файл нээж, try block дотор файлд өгөгдөл бичиж болно. Хэрэв ямар нэг алдаа гарвал catch ашиглан түүнийг барина. Дараа нь finally statement ашиглан файлыг хаана.
