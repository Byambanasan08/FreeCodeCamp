Rest Parameters гэж юу вэ, тэдгээр нь arguments объектоос юугаараа ялгаатай вэ?

Өмнөх хичээл дээр та функц руу дамжуулсан аргументуудын утгыг агуулдаг, массив төст (array-like) объект болох `arguments`-тай хэрхэн ажиллах талаар сурсан.

```javascript
function logArgs() {
  for (const arg of arguments) {
    console.log(arg);
  }
}
logArgs(1, 2, 3);
// Үр дүн: 1, 2, 3
```

Хэдийгээр энэ нь функцийн хувьсах аргументуудтай ажиллах хүчинтэй арга боловч орчин үеийн JavaScript аппликейшнүүд үүний оронд **rest parameter** синтакс ашиглах болсон.

Дээрх жишээг `arguments` объектын оронд **rest parameter** ашиглан шинэчилбэл:

```javascript
function logArgs(...args) {
  for (const arg of args) {
    console.log(arg);
  }
}
logArgs(1, 2, 3);
// Үр дүн: 1, 2, 3
```



Энэхүү шинэчилсэн жишээ нь `arguments` объектыг шууд заахаа больсон байна. Үүний оронд функц тодорхойлох хэсгийн хамгийн сүүлчийн параметр өмнөө гурван цэгтэй (`...`) болжээ. Энэ нь тухайн "үлдэгдэл" аргументуудыг **Array (Массив)** объект дотор байрлуулахад хүргэдэг. Та энэхүү rest параметрийг хүссэнээрээ нэрлэж болно. Гэхдээ энэ нь функц тодорхойлолтын хамгийн сүүлчийн параметр байх ёстойг анхаараарай:

```javascript
function exampleFunction(a, b, ...restOfArgs) {
  // зарим код энд байна
}
function anotherFunction(x, y, ...theArgs) {
  // зарим код энд байна
}
```

Rest parameter синтакс ашиглахад хэд хэдэн хязгаарлалт байдаг:

1.  **Зөвхөн нэг rest parameter:** Функц тодорхойлолт нь зөвхөн нэг л rest параметртэй байж болно. Тиймээс дараах жишээг хүчингүйд тооцно:
    ```javascript
    // Ажиллахгүй
    function badFunction(...args, ...moreArgs) { }
    ```
2.  **Сүүлчийн таслал:** Rest параметрийн дараа таслал (trailing comma) тавихыг зөвшөөрөхгүй: `function exampleFunction(a, b, ...restOfArgs, )`.
3.  **Default утга:** Rest параметрт анхдагч утга (default value) оноож болохгүй. Үгүй бол `SyntaxError` алдаа заана.
    ```javascript
    // Алдаа заана
    function badFunction(...args = [1, 2]){ }
    ```

#### arguments объект болон rest parameters-ийн ялгаа юу вэ?

* **Жинхэнэ массив:** Хамгийн гол ялгаа нь `arguments` объект нь жинхэнэ массив биш учраас `includes`, `pop`, `push` зэрэг аргуудыг дэмждэггүй. Харин **rest parameter** нь **Array**-ийн бодит жишээ (instance) юм. Тиймээс та түүнийг заавал массив руу хөрвүүлэх шаардлагагүйгээр массивын бүх бэлэн аргуудыг шууд ашиглаж болно.



```javascript
function hasCat(...args) {
  // args нь жинхэнэ массив тул includes-ийг шууд ашиглаж болно
  return args.includes("cat");
}

console.log(hasCat("dog", "chicken", "cat")); // true
console.log(hasCat("dog", "chicken", "horse")); // false
```

---

**`...args` гэж бичээд л шууд `includes` ашиглаж байгаа нь өмнөх `[...arguments]` гэж хөрвүүлдэг байснаас хамаагүй амархан харагдаж байна уу? Мөн яагаад rest parameter заавал "хамгийн сүүлд" байх ёстой гэж та бодож байна?**