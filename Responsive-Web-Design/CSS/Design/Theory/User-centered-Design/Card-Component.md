# Cards дизайн хийхэд баримтлах шилдэг практикууд юу вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино. Жишээнүүдийн preview-г харахын тулд **interactive editor**-ийг идэвхжүүлэх шаардлагатай.

**Card component** нь **e-commerce**, **social media**, болон **мэдээний сайтууд** дээр маш түгээмэл ашиглагддаг. Эдгээрийг мэдээллийг **зохион байгуулалттай байдлаар харуулах** зорилгоор ашигладаг. Card дизайн хийх үед хэрэглэгчид таны харуулах гэж буй мэдээллийг **амархан ойлгох** боломжтой байлгахын тулд шилдэг практикуудыг ойлгох нь чухал.

Card дизайн хийхэд анхаарах хамгийн эхний зүйл бол **энгийн байдал (simplicity)** юм. Card нь **хэт олон мэдээлэлтэй**, эсвэл **харагдах байдлаараа хэт ачаалалтай (visually cluttered)** байх ёсгүй. Жишээлбэл, card дизайн хэт ачаалалтай байвал хэрэглэгч **нэг дор хэт их мэдээллийг боловсруулах** шаардлагатай болдог.

Доорх нь **хэт ачаалалтай card дизайн**-ийн жишээ юм.

-HTML
<link rel="stylesheet" href="styles.css">

<div class="card">
  <img src="https://placehold.co/150x150" alt="Example Product Image">
  <h2><strong><em>Product Name: Ultimate Edition</em></strong></h2>
  <p>
    This is a great product that you will love! It has many features and benefits that will make your life easier and more enjoyable. Whether you're at home or on the go, this product is perfect for all situations. Don’t miss out on this incredible offer, buy now and experience the difference!
  </p>
  <button>Buy Now</button>
  <button>Learn More</button>
  <button>Add to Wishlist</button>
  <p><strong>Only 3 left in stock!</strong></p>
  <p><em>Rated 4.8 stars by 2,391 customers</em></p>
</div>

-CSS
.card {
  border: 1px solid #ccc;
  padding: 16px;
  width: 300px;
}

.card img {
  max-width: 100%;
  height: auto;
}

.card h2 {
  font-size: 1.5em;
  margin: 8px 0;
}
.card p {
  font-size: 1em;
  margin: 8px 0;
}

.card button {
  background-color: #007BFF;
  color: white;
  padding: 10px 16px;
  border: none;
  cursor: pointer;
}

Card дээрх мэдээллийг **цөөн байлгаж**, мөн элементүүдийн хооронд **сайн зай (spacing)** үлдээх нь хэрэглэгч мэдээллийг **илүү амархан боловсруулах** боломжийг олгодог. Мөн ингэснээр нэг хуудсан дээр **олон card** зэрэг байрлуулах боломж бүрдэнэ.

Доорх нь **энгийн card дизайн**-ийн жишээ юм.
-HTML
<link rel="stylesheet" href="styles.css">

<div class="card">
  <img src="https://placehold.co/150x150" alt="Example Product Image">
  <h2>Product Name</h2>
  <button>Buy Now</button>
</div>
-CSS
.card {
  border: 1px solid #ccc;
  padding: 16px;
  width: 200px;
  text-align: center;
}

.card img {
  max-width: 100%;
  height: auto;
}

.card h2 {
  font-size: 1.5em;
  margin: 8px 0;
}

.card button {
  background-color: #007BFF;
  color: white;
  padding: 10px 16px;
  border: none;
  cursor: pointer;
}

Өөр нэг анхаарах зүйл бол хэрэглэгч **card дээр хаана дарж болох** тухай юм. Зарим card дизайнд **ганц товч (button)** байдаг бөгөөд энэ нь хэрэглэгч **хаана дарах ёстойг тодорхой** харуулдаг. Харин зарим card дизайнд **бүх card өөрөө дарагдах боломжтой** байдаг. Хэрэглэгч card-ийн аль ч хэсэг дээр **hover** хийх үед card **өнгө өөрчлөгдөх** эсвэл **сүүдэр (shadow) эффект** үүсч, тухайн card дарагдах боломжтойг илэрхийлдэг.

Ямар дизайн сонгосон ч гэсэн энэ нь таны сайтын **бүх хэсэгт тогтвортой (consistent)** байх ёстой бөгөөд хэрэглэгчид **ойлгоход хялбар** байх шаардлагатай.

-HTML
<link rel="stylesheet" href="styles.css">

<div class="card">
  <a href="#">
    <img src="https://placehold.co/150x150" alt="Example Product Image">
    <h2>Product Name</h2>
    <button>Buy Now</button>
  </a>
</div>

-cSS
.card {
  border: 1px solid #ccc;
  padding: 16px;
  width: 300px;
  cursor: pointer;
}

.card:hover {
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.card a {
  text-decoration: none;
  color: inherit;
}

.card img {
  max-width: 100%;
  height: auto;
}

.card h2 {
  font-size: 1.5em;
  margin: 8px 0;
}

.card button {
  background-color: #007BFF;
  color: white;
  padding: 10px 16px;
  border: none;
  cursor: pointer;
}

Өөр нэг анхаарах зүйл бол card дээр **медиа (media)** ашиглах явдал юм. **Өндөр чанартай медиа** сонгох нь хэрэглэгчийн туршлагыг мэдэгдэхүйц сайжруулж чадна. Хэрэв та, жишээлбэл, **бүтээгдэхүүний card** дээр зураг эсвэл видео ашиглаж байгаа бол чанар өндөр байх тусам хэрэглэгч тухайн бүтээгдэхүүнд **илүү сонирхолтой** болно. Харин медиа чанар муу байвал хэрэглэгч таны бүтээгдэхүүн, үйлчилгээний **чанарт итгэхгүй** байж магадгүй.

Анхаарах сүүлийн зүйлсийн нэг бол **өнгөний hierarchy** ашиглах явдал юм. Card дээрх **хамгийн чухал мэдээлэл хамгийн тод харагдах** ёстой. Та **call-to-action button** зэрэг чухал элементүүдэд **тод өнгө**, харин card дээрх **бага ач холбогдолтой элементүүдэд илүү зөөлөн өнгө** ашиглаж болно.
-HTML
<link rel="stylesheet" href="styles.css">

<div class="card">
  <img src="https://placehold.co/150x150" alt="Example Product Image">
  <h2>Product Name</h2>
  <button>Buy Now</button>
</div>

-CSS
.card {
  border: 1px solid #ccc;
  padding: 16px;
  width: 300px;
  text-align: center;
}

.card img {
  max-width: 100%;
  height: auto;
}

.card h2 {
  font-size: 1.5em;
  margin: 8px 0;
}

.card button {
  background-color: #28a745; 
  color: white;
  padding: 10px 16px;
  border: none;
  cursor: pointer;
}

Та вэб аппликейшн дээр үргэлжлүүлэн ажиллахдаа **card дизайнтай холбоотой шилдэг практикуудыг** үргэлж санаж явах хэрэгтэй. Ингэснээр та хэрэглэгчдэд **илүү сайн хэрэглэгчийн туршлага (user experience)** бий болгож чадна.

