How Does the Throw Statement Work?

Throw statement хэрхэн ажилладаг вэ?

---

JavaScript дахь throw statement нь хэрэглэгч өөрөө тодорхойлсон exception (алдаа)-ийг үүсгэхэд ашиглагддаг. Програмчлалд exception гэдэг нь гэнэтийн үйл явдал тохиолдож, програмын хэвийн урсгалыг тасалдуулахыг хэлдэг.

Программистуудын хувьд эдгээр exception-уудыг зөв зохицуулах нь чухал, ингэснээр алдаа гарсан үед програм гэнэт унах (crash болох)-оос сэргийлнэ. throw statement-ийн үндсэн синтакс дараах байдалтай:

```js id="h3n8tp"
throw expression;
```

Энд expression нь таны шидэх гэж буй exception-ийг илэрхийлэх объект эсвэл утга юм. Жишээ нь Error, TypeError, эсвэл RangeError зэрэг built-in exception class-ууд байж болно. Дараах нь throw statement ашиглан TypeError үүсгэх жишээ юм:

```js id="z7m2kv"
function validateNumber(input) {
  if (typeof input !== "number") {
    throw new TypeError("Expected a number, but received " + typeof input);
  }
  return input * 2;
}
```

Энэ жишээнд input-ийн төрөл number биш эсэхийг шалгаж байна. Хэрэв биш бол custom message-тэй TypeError шидэж байна. Харин эсрэг тохиолдолд function нь input-ийг 2-оор үржүүлсэн үр дүнг буцаана.

Хэрэв та илүү ерөнхий алдааны мессеж шидэхийг хүсвэл Error constructor-ийг дараах байдлаар ашиглаж болно:

```js id="p4v9cx"
function divide(numerator, denominator) {
  if (denominator === 0) {
    throw new Error("Cannot divide by zero");
  }
  return numerator / denominator;
}
```

Энэ нь denominator 0 эсэхийг шалгадаг function-ийн жишээ юм. Хэрэв 0 байвал Cannot divide by zero гэсэн custom алдааны мессежийг шиднэ.

Дараагийн хичээлд бид try/catch block-ийн хүрээнд алдааны мессежийг хэрхэн шидэж, exception-уудыг зөв (gracefully) зохицуулах талаар үзэх болно.
