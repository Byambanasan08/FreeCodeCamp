JavaScript-д Number төрөл гэж юу вэ, мөн ямар төрлийн тоонууд байдаг вэ?

Number төрөл нь JavaScript болон бусад програмчлалын хэлүүдэд хамгийн их ашиглагддаг өгөгдлийн төрлүүдийн нэг юм. JavaScript-д Number нь бүх төрлийн тоон утгыг илэрхийлдэг.

Бусад зарим хэлүүд бүхэл тоо (integer) болон бутархай тоог (floating-point) тусдаа төрөлд хуваадаг бол JavaScript нэг л Number төрөл ашигладаг. Өөрөөр хэлбэл бүхэл тоо, бутархай тоо, мөн тусгай утгууд бүгд Number төрөлд багтдаг.

Жишээ:

```id="n8k2qp"
const wholeNumber = 50;
const decimalNumber = 4.5;
const negativeNumber = -7;

console.log(typeof wholeNumber); // number
console.log(typeof decimalNumber); // number
console.log(typeof negativeNumber); // number
```

Эдгээр бүгд `number` төрөл байна.

JavaScript-д байдаг тоонуудын төрлүүд:

Бүхэл тоо (Integers)

Бүхэл тоо нь аравтын бутархайгүй тоо юм. Эерэг, сөрөг, 0 байж болно.

```id="c4k7hz"
const positiveInteger = 100;
const negativeInteger = -25;
const zero = 0;
```

Бутархай тоо (Floating-point numbers)

Аравтын бутархайтай тоонуудыг float гэж нэрлэдэг.

```id="v5m1xt"
const floatingPointNumber = 4.5;
const anotherFloat = 89.56;
const oneMoreFloat = 16.462;
```

Infinity

JavaScript-д хязгааргүй их утгыг `Infinity` гэж илэрхийлдэг. Ихэвчлэн 0-ээр хуваах үед гарч ирдэг.

```id="k3d9wr"
const infiniteNumber = 1 / 0;
console.log(infiniteNumber); // Infinity
```

NaN (Not a Number)

Зарим математик үйлдэл зөв тоон үр дүн гаргахгүй үед `NaN` үүсдэг.

```id="g6q8lm"
const notANumber = 'hello world' / 2;
console.log(notANumber); // NaN
```

Сонирхолтой нь `NaN`-ийн төрөл мөн `number` байдаг:

```id="t2x7bv"
console.log(typeof notANumber); // number
```

Өөр суурийн тоонууд

JavaScript нь зөвхөн 10-тын систем биш, өөр суурийн тоонуудыг дэмждэг:

* Binary (2-тын систем) → 0, 1
* Octal (8-тын систем) → 0–7
* Hexadecimal (16-тын систем) → 0–9 болон a–f

Hexadecimal нь CSS-ийн өнгөний кодод ашиглагддаг.

Дүгнэж хэлбэл:

* JavaScript-д бүх тоо Number төрөлд багтдаг
* Бүхэл, бутархай, Infinity, NaN бүгд Number
* Нэг төрлөөр бүх төрлийн тоотой ажиллах боломжтой

Number төрөл нь энгийн мэт боловч олон төрлийн утга, онцлогийг агуулдаг чухал өгөгдлийн төрөл юм.
