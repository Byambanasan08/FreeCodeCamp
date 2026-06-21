# Shopping Cart дизайн хийхэд баримтлах шилдэг практикууд юу вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино. Жишээнүүдийн preview-г харахын тулд **interactive editor**-ийг идэвхжүүлэх шаардлагатай.

Интернет дээр **мянга мянган e-commerce вэбсайт** байдаг бөгөөд **shopping cart** нь e-commerce туршлагын маш чухал хэсэг юм. Сайн дизайн нь shopping cart ашиглах туршлагыг **илүү таатай болгож**, мөн **борлуулалтыг нэмэгдүүлэх** боломжтой. Харин муу дизайн нь **орхигдсон cart** болон **алдагдсан борлуулалт** руу хүргэж болно.

Энэ хичээлд бид **shopping cart дизайн хийхэд баримтлах зарим шилдэг практикуудыг** авч үзнэ. Эхний анхаарах зүйл бол **shopping cart-ийг хэрэглэгчдэд үргэлж харагдахуйц байлгах** явдал юм. Ихэнх shopping cart дизайнд cart нь **хуудасны баруун дээд буланд** байрладаг. Хэрэглэгчид cart icon-ийн хажууд **cart дотор байгаа барааны тоог** харж чаддаг байх ёстой бөгөөд мөн cart дээр дарж **худалдан авах гэж буй бараануудын дэлгэрэнгүй мэдээллийг** харах боломжтой байх шаардлагатай.

---HTML---
<link rel="stylesheet" href="styles.css" />

<div class="shopping-cart">
  <button id="cart-btn" aria-label="Shopping cart">
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="24"
      height="24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
      class="feather feather-shopping-cart"
      viewBox="0 0 24 24"
      aria-hidden="true"
      focusable="false"
    >
      <circle cx="9" cy="21" r="1"></circle>
      <circle cx="20" cy="21" r="1"></circle>
      <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
    </svg>
    <span id="item-count">2</span>
  </button>
</div>

---CSS---
.shopping-cart {
  position: fixed;
  top: 20px;
  right: 20px;
  font-family: sans-serif;
}

#cart-btn {
  background: none;
  border: none;
  cursor: default;
  position: relative;
  display: flex;
  align-items: center;
  padding: 4px;
  color: #333;
  font-size: 24px;
}

#item-count {
  background: red;
  color: white;
  border-radius: 50%;
  padding: 2px 6px;
  font-size: 13px;
  position: absolute;
  top: -6px;
  right: -6px;
  min-width: 18px;
  height: 18px;
  line-height: 14px;
  text-align: center;
  font-weight: 700;
  user-select: none;
  box-sizing: border-box;
}

#cart-details {
  background: white;
  border: 1px solid #ccc;
  max-height: 300px;
  overflow-y: auto;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
  margin-top: 10px;
  padding: 10px;
  position: relative;
  z-index: 1000;
}

#cart-items {
  list-style: none;
  padding: 0;
  margin: 0;
}

#cart-items li {
  padding: 5px 0;
  border-bottom: 1px solid #eee;
}

Өөр нэг анхаарах зүйл бол хэрэглэгчдэд **cart доторх барааны тоо хэмжээг өөрчлөх тодорхой боломж** олгох явдал юм. Үүнийг cart дахь **бараа бүрийн хажууд quantity input field** байрлуулах замаар хэрэгжүүлж болно. Хэрэглэгчид input field дээрх **тоог өөрчилснөөр барааны тоо хэмжээг амархан шинэчлэх** боломжтой.

Мөн cart дахь бараа бүрийн хажууд **“Remove” товч** байрлуулах хэрэгтэй. Энэ нь хэрэглэгчдэд **cart-оос барааг амархан устгах** боломж олгодог. Хэрэглэгчдэд cart-оос бараа устгахыг **хэцүү болгох ёсгүй**, учир нь энэ нь **бухимдал үүсгэж**, улмаар **орхигдсон cart**-д хүргэж болзошгүй.
--HTML--
<link rel="stylesheet" href="styles.css" />

<div class="shopping-cart">
  <h2>Your Cart</h2>
  <ul class="cart-items">
    <li class="cart-item">
      <span class="item-name">T-Shirt</span>
      <input type="number" min="1" value="2" class="quantity-input" aria-label="Quantity for T-Shirt" />
      <button class="remove-btn">Remove</button>
    </li>
    <li class="cart-item">
      <span class="item-name">Hat</span>
      <input type="number" min="1" value="1" class="quantity-input" aria-label="Quantity for Hat" />
      <button class="remove-btn">Remove</button>
    </li>
  </ul>
</div>
--CSS--
.shopping-cart {
  max-width: 400px;
  margin: 20px auto;
  font-family: sans-serif;
  border: 1px solid #ccc;
  padding: 15px;
  background: white;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
  border-radius: 6px;
}

.shopping-cart h2 {
  margin-top: 0;
  font-weight: 600;
  font-size: 1.4rem;
  border-bottom: 1px solid #ddd;
  padding-bottom: 8px;
}

.cart-items {
  list-style: none;
  padding: 0;
  margin: 0;
}

.cart-item {
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding: 10px 0;
  border-bottom: 1px solid #eee;
}

.item-name {
  flex: 1;
  font-size: 1rem;
}

.quantity-input {
  width: 50px;
  padding: 4px 6px;
  font-size: 1rem;
  margin: 0 10px;
  border: 1px solid #ccc;
  border-radius: 4px;
  text-align: center;
}

.remove-btn {
  background: #e74c3c;
  border: none;
  color: white;
  padding: 6px 12px;
  border-radius: 4px;
  font-size: 0.9rem;
  cursor: pointer;
  transition: background-color 0.2s ease;
}

.remove-btn:hover,
.remove-btn:focus {
  background: #c0392b;
  outline: none;
}

Өөр нэг анхаарах зүйл бол **shopping cart icon** өөрөө юм. Icon нь бүх хэрэглэгчдэд **амархан танигдахуйц** байх ёстой. Хамгийн түгээмэл icon бол **бариул болон дугуйтай shopping cart** дүрс юм. Мөн **shopping bag** эсвэл **basket** дүрс ашиглаж болно. Гэхдээ **хэт хийсвэр эсвэл ойлгоход хэцүү icon** сонгох ёсгүй.

Хэрэглэгч **cart дахь нийт дүнг** шалгахыг хүсвэл бүх барааны **нийт үнэ**-ийг амархан олох боломжтой байх ёстой. Энэ мэдээлэл **хуудас дээр тод харагдахуйц** байрласан байх хэрэгтэй бөгөөд ингэснээр хэрэглэгчид **үүнийг хайж цаг үрэх шаардлагагүй** болно.
---HTML---
<link rel="stylesheet" href="styles.css" />

<div class="shopping-cart">
  <button id="cart-btn" aria-label="Shopping cart">
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="28"
      height="28"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
      class="feather feather-shopping-cart"
      viewBox="0 0 24 24"
      aria-hidden="true"
      focusable="false"
    >
      <circle cx="9" cy="21" r="1"></circle>
      <circle cx="20" cy="21" r="1"></circle>
      <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
    </svg>
    <span id="item-count">3</span>
  </button>
  <div id="cart-details">
    <ul id="cart-items">
      <li>T-Shirt x2 - $40.00</li>
      <li>Hat x1 - $15.00</li>
    </ul>
    <div id="cart-total">
      Total: <strong>$55.00</strong>
    </div>
  </div>
</div>
---CSS---
.shopping-cart {
  position: fixed;
  top: 20px;
  right: 20px;
  font-family: sans-serif;
  width: 280px;
  background: white;
  border: 1px solid #ccc;
  padding: 10px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
  border-radius: 6px;
}

#cart-btn {
  background: none;
  border: none;
  cursor: default;
  position: relative;
  display: flex;
  align-items: center;
  padding: 4px;
  color: #333;
  font-size: 28px;
}

#item-count {
  background: red;
  color: white;
  border-radius: 50%;
  padding: 2px 7px;
  font-size: 14px;
  position: absolute;
  top: -6px;
  right: -6px;
  min-width: 18px;
  height: 18px;
  line-height: 14px;
  text-align: center;
  font-weight: 700;
  user-select: none;
  box-sizing: border-box;
}

#cart-details {
  margin-top: 10px;
}

#cart-items {
  list-style: none;
  padding: 0;
  margin: 0 0 10px 0;
  font-size: 1rem;
}

#cart-items li {
  padding: 5px 0;
  border-bottom: 1px solid #eee;
}

#cart-total {
  font-size: 1.2rem;
  font-weight: 700;
  text-align: right;
  color: #111;
}

Эцэст нь, хэрэглэгчид **checkout руу үргэлжлүүлэх тодорхой call-to-action товч** байх ёстой. Энэ товч нь **хуудас дээр тод харагдахуйц** байрласан байх хэрэгтэй бөгөөд ингэснээр хэрэглэгчид **түүнийг хайх шаардлагагүй** болно.

Нэг хуудсан дээр **хэт олон товч** байрлуулах ёсгүй, учир нь энэ нь **төөрөгдөл үүсгэж** болзошгүй. **Call-to-action товч** нь тухайн хуудсан дээрх **хамгийн тод харагдах товч** байх ёстой бөгөөд ингэснээр хэрэглэгчид **дараагийн алхам юу болохыг** шууд ойлгоно. Товчийг бусдаас ялгаруулахын тулд **брэндийн үндсэн өнгийг** ашиглах хэрэгтэй.
---HTML---
<link rel="stylesheet" href="styles.css" />

<div class="shopping-cart">
  <button id="cart-btn" aria-label="Shopping cart">
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="28"
      height="28"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
      class="feather feather-shopping-cart"
      viewBox="0 0 24 24"
      aria-hidden="true"
      focusable="false"
    >
      <circle cx="9" cy="21" r="1"></circle>
      <circle cx="20" cy="21" r="1"></circle>
      <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
    </svg>
    <span id="item-count">3</span>
  </button>
  <div id="cart-details">
    <ul id="cart-items">
      <li>T-Shirt x2 - $40.00</li>
      <li>Hat x1 - $15.00</li>
    </ul>
    <div id="cart-total">
      Total: <strong>$55.00</strong>
    </div>
    <button id="checkout-btn">Proceed to Checkout</button>
  </div>
</div>
---CSS---
:root {
  --primary-color: #007bff; 
}

.shopping-cart {
  position: fixed;
  top: 20px;
  right: 20px;
  font-family: sans-serif;
  width: 280px;
  background: white;
  border: 1px solid #ccc;
  padding: 10px;
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
  border-radius: 6px;
}

#cart-btn {
  background: none;
  border: none;
  cursor: default;
  position: relative;
  display: flex;
  align-items: center;
  padding: 4px;
  color: #333;
  font-size: 28px;
}

#item-count {
  background: red;
  color: white;
  border-radius: 50%;
  padding: 2px 7px;
  font-size: 14px;
  position: absolute;
  top: -6px;
  right: -6px;
  min-width: 18px;
  height: 18px;
  line-height: 14px;
  text-align: center;
  font-weight: 700;
  user-select: none;
  box-sizing: border-box;
}

#cart-details {
  margin-top: 10px;
}

#cart-items {
  list-style: none;
  padding: 0;
  margin: 0 0 10px 0;
  font-size: 1rem;
}

#cart-items li {
  padding: 5px 0;
  border-bottom: 1px solid #eee;
}

#cart-total {
  font-size: 1.2rem;
  font-weight: 700;
  text-align: right;
  color: #111;
  margin-bottom: 15px;
}

#checkout-btn {
  width: 100%;
  background-color: var(--primary-color);
  color: white;
  border: none;
  padding: 12px 0;
  font-size: 1.1rem;
  font-weight: 700;
  border-radius: 6px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

#checkout-btn:hover,
#checkout-btn:focus {
  background-color: #0056b3;
  outline: none;
}

Эдгээр нь **shopping cart дизайн хийхэд баримтлах зарим шилдэг практикууд** юм. Эдгээр удирдамжийг дагаснаар та **ашиглахад хялбар shopping cart** бүтээж, мөн **e-commerce вэбсайтынхаа борлуулалтыг нэмэгдүүлэхэд** тусалж чадна.
