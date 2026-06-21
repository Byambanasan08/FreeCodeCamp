# Progressive Disclosure гэж юу вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино. Жишээнүүдийн preview-г харахын тулд **interactive editor**-ийг идэвхжүүлэх шаардлагатай.

**Progressive disclosure** гэдэг нь хэрэглэгчийн **одоогийн үйл ажиллагаанд хамааралтай мэдээллийг л харуулж**, бусад мэдээллийг **нууж байхаар** ашигладаг дизайн загвар юм. Үүнийг **танин мэдэх ачааллыг (cognitive load)** бууруулах, мөн **хэрэглэгчийн туршлагыг илүү ойлгомжтой, интуитив** болгохын тулд ашигладаг.
---HTML---
<link rel="stylesheet" href="styles.css">

<div class="progressive-disclosure">
  <button id="show-details-btn" aria-expanded="false" aria-controls="extra-content">
    Show More Details
  </button>
  <div id="extra-content" class="hidden" tabindex="-1">
    <p>
      Here are additional details that are revealed only when you want to see them.
      This keeps the interface clean and reduces cognitive load.
    </p>
  </div>
</div>
<script src="index.js"></script>
---CSS---
.progressive-disclosure {
  font-family: sans-serif;
  max-width: 400px;
  margin: 20px auto;
}

#show-details-btn {
  background-color: #007bff;
  border: none;
  color: white;
  padding: 10px 16px;
  font-size: 1rem;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.2s ease;
}

#show-details-btn:hover,
#show-details-btn:focus {
  background-color: #0056b3;
  outline: none;
}

.hidden {
  display: none;
}

#extra-content {
  margin-top: 15px;
  padding: 10px;
  background-color: #f7f9fcff;
  border: 1px solid #ddd;
  border-radius: 5px;
}
---JS---
const btn = document.getElementById('show-details-btn');
const content = document.getElementById('extra-content');

btn.addEventListener('click', () => {
  const isHidden = content.classList.toggle('hidden');
  btn.setAttribute('aria-expanded', !isHidden);
  if (!isHidden) {
    content.focus();
  }
});

Жишээлбэл, та **Google-ийн хайлтын хуудас** ашиглах үед ихэнх хайлтууд **энгийн** байдаг. Тиймээс **маш цөөн сонголттой энгийн хэрэглэгчийн интерфэйс** ашиглах нь тохиромжтой. Харин **илүү нарийвчилсан хайлт** хийх шаардлагатай цөөн тохиолдолд Google **advanced search** сонголтыг санал болгодог бөгөөд энэ нь **нэмэлт сонголтуудыг харуулдаг**.

Та Google-ийн **advanced search** сонголтыг **Google homepage-ийн settings menu**-ээс олж болно. Эсвэл **google.com/advanced_search** хаягаар орж болно.

Progressive disclosure-ийн өөр нэг жишээ бол **e-commerce вэбсайт дахь бүтээгдэхүүний “More details” товч** юм. Жишээлбэл, та **Amazon** зэрэг сайт руу ороход янз бүрийн ангилалд байрласан **бүтээгдэхүүний зурагнуудын жагсаалтыг** харна. Энэ нь хэрэглэгчдэд **хэт их мэдээлэлд дарагдахгүйгээр** амархан худалдан авалт хийх боломж олгодог.

Хэрэв хэрэглэгч тодорхой бүтээгдэхүүнийг сонирхвол **бүтээгдэхүүний зураг дээр дарж**, тухайн бүтээгдэхүүний **илүү дэлгэрэнгүй мэдээллийг** харж болно. Бүх мэдээллийг **анхнаасаа бүгдийг нь харуулах** нь хэрэглэгчийг **дарамталж** магадгүй. Тиймээс **progressive disclosure** ашигласнаар хэрэглэгч **бэлэн болсон үедээ илүү их мэдээллийг харах** боломжтой болдог.
----HTML----
<link rel="stylesheet" href="styles.css" />

<div class="product-list">
  <div class="product" tabindex="0" aria-expanded="false" aria-controls="details-1">
    <img src="https://placehold.co/150x150" alt="Example Product Image" />

    <button class="details-btn" aria-label="Show more details for Product 1">More details</button>
    <div id="details-1" class="product-details hidden" tabindex="-1">
      <p><strong>Product 1:</strong> This is a great product with awesome features that you'll love.</p>
      <ul>
        <li>Feature A</li>
        <li>Feature B</li>
        <li>Feature C</li>
      </ul>
    </div>
  </div>

  <div class="product" tabindex="0" aria-expanded="false" aria-controls="details-2">
    <img src="https://placehold.co/150x150" alt="Example Product Image" />

    <button class="details-btn" aria-label="Show more details for Product 2">More details</button>
    <div id="details-2" class="product-details hidden" tabindex="-1">
      <p><strong>Product 2:</strong> Another fantastic item with lots of benefits for your daily use.</p>
      <ul>
        <li>Benefit X</li>
        <li>Benefit Y</li>
        <li>Benefit Z</li>
      </ul>
    </div>
  </div>
</div>
<script src="index.js"></script>
----CSS---
.product-list {
  font-family: sans-serif;
  display: flex;
  gap: 20px;
  max-width: 800px;
  margin: 20px auto;
  flex-wrap: wrap;
}

.product {
  border: 1px solid #ccc;
  border-radius: 8px;
  padding: 10px;
  width: 180px;
  box-shadow: 0 2px 6px rgba(0,0,0,0.1);
  position: relative;
}

.product img {
  width: 100%;
  border-radius: 6px;
  cursor: pointer;
  display: block;
  margin-bottom: 8px;
}

.details-btn {
  background-color: #007bff;
  border: none;
  color: white;
  padding: 6px 12px;
  font-size: 0.9rem;
  border-radius: 5px;
  cursor: pointer;
  width: 100%;
  transition: background-color 0.3s ease;
}

.details-btn:hover,
.details-btn:focus {
  background-color: #0056b3;
  outline: none;
}

.product-details {
  margin-top: 10px;
  background-color: #f7f9fc;
  border: 1px solid #ddd;
  border-radius: 6px;
  padding: 8px;
  font-size: 0.9rem;
}

.hidden {
  display: none;
}
---JS---
document.querySelectorAll('.details-btn').forEach(button => {
  button.addEventListener('click', () => {
    const product = button.closest('.product');
    const details = product.querySelector('.product-details');
    const isHidden = details.classList.toggle('hidden');
    product.setAttribute('aria-expanded', !isHidden);
    if (!isHidden) {
      details.focus();
      button.textContent = 'Hide details';
    } else {
      button.textContent = 'More details';
    }
  });
});

Тэгвэл **progressive disclosure** техникийг ашиглан дизайн хийхдээ ямар **шилдэг практикуудыг** баримтлах хэрэгтэй вэ? Эхний анхаарах зүйл бол **чухал мэдээллийг үргэлж харагдахуйц байлгах** явдал юм. Хэрэглэгчид **нэмэлт эсвэл илүү дэвшилтэт функцуудын ард нуугдсан** учраас **гол мэдээллийг олоход хэцүү байдалд орох ёсгүй**.

<link rel="stylesheet" href="styles.css" />

<div class="info-section">
  <h2>Order Summary</h2>
  <p><strong>Items in Cart:</strong> 3</p>
  <p><strong>Total Price:</strong> $75.00</p>
  <div class="advanced-options">
    <button id="toggle-advanced-btn" aria-expanded="false" aria-controls="advanced-details">
      Show Advanced Options
    </button>
    <div id="advanced-details" class="hidden" tabindex="-1">
      <p>Apply coupon codes, gift wrapping, or select shipping preferences here.</p>
      <form>
        <label for="coupon">Coupon Code:</label><br />
        <input type="text" id="coupon" name="coupon" /><br /><br />
        <label>
          <input type="checkbox" name="gift-wrap" /> Gift wrap this order
        </label><br /><br />
        <label for="shipping">Shipping method:</label><br />
        <select id="shipping" name="shipping">
          <option value="standard">Standard (Free)</option>
          <option value="express">Express ($10.00)</option>
        </select>
      </form>
    </div>
  </div>
</div>

<script src="index.js"></script>
---CSS---
.info-section {
  font-family: sans-serif;
  max-width: 400px;
  margin: 30px auto;
  border: 1px solid #ccc;
  padding: 20px;
  border-radius: 8px;
  background-color: #fff;
}

h2 {
  margin-top: 0;
}

.advanced-options {
  margin-top: 20px;
}

#toggle-advanced-btn {
  background-color: #007bff;
  color: white;
  border: none;
  padding: 10px 16px;
  font-size: 1rem;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.25s ease;
}

#toggle-advanced-btn:hover,
#toggle-advanced-btn:focus {
  background-color: #0056b3;
  outline: none;
}

.hidden {
  display: none;
}

#advanced-details {
  margin-top: 15px;
  padding: 15px;
  border: 1px solid #ddd;
  border-radius: 6px;
  background-color: #f7f9fc;
}
---JS---
const toggleBtn = document.getElementById('toggle-advanced-btn');
const advancedDetails = document.getElementById('advanced-details');

toggleBtn.addEventListener('click', () => {
  const isHidden = advancedDetails.classList.toggle('hidden');
  toggleBtn.setAttribute('aria-expanded', !isHidden);
  if (!isHidden) {
    advancedDetails.focus();
  }
});

Өөр нэг анхаарах зүйл бол хэрэглэгчдэд **нэмэлт функц эсвэл мэдээлэлд хандах нэг л нэвтрэх цэг** (single access point) олгох явдал юм. Энэ нь хуудсан дээр **үргэлж харагдах товч** эсвэл **холбоос (link)** байж болно. **Олон нэвтрэх цэг нэмэх** нь хэрэглэгчдийг **төөрөгдүүлж**, улмаар **муу хэрэглэгчийн туршлага** бий болгоход хүргэж болзошгүй.

<link rel="stylesheet" href="styles.css" />
<script src="index.js" defer></script>

<div class="product-preview">
  <img src="https://placehold.co/150x150" alt="Example Product Image" />

  <h3>Sample Product</h3>
  <p class="price">$49.99</p>
  <button class="info-toggle" aria-expanded="false" aria-controls="product-info">
    More Info
  </button>
  <div id="product-info" class="product-info hidden" tabindex="-1">
    <p>This product is made from high-quality materials and comes with a 2-year warranty. Perfect for everyday use.</p>
    <ul>
      <li>Durable and lightweight</li>
      <li>Available in multiple colors</li>
      <li>Free shipping included</li>
    </ul>
  </div>
</div>
---CSS---
body {
  font-family: sans-serif;
  padding: 30px;
  display: flex;
  justify-content: center;
}

.product-preview {
  max-width: 300px;
  border: 1px solid #ccc;
  padding: 16px;
  border-radius: 8px;
  background: #fff;
  text-align: center;
}

.product-preview img {
  width: 100%;
  border-radius: 4px;
  margin-bottom: 10px;
}

.price {
  font-weight: bold;
  color: #333;
  margin: 10px 0;
}

.info-toggle {
  background-color: #007bff;
  color: white;
  border: none;
  padding: 10px 16px;
  font-size: 1rem;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.2s ease;
}

.info-toggle:hover,
.info-toggle:focus {
  background-color: #0056b3;
  outline: none;
}

.product-info {
  margin-top: 15px;
  text-align: left;
  background-color: #f9f9f9;
  border: 1px solid #ddd;
  padding: 12px;
  border-radius: 6px;
}

.hidden {
  display: none;
}

---JS---
const toggleBtn = document.querySelector('.info-toggle');
const infoPanel = document.getElementById('product-info');

toggleBtn.addEventListener('click', () => {
  const isHidden = infoPanel.classList.toggle('hidden');
  toggleBtn.setAttribute('aria-expanded', !isHidden);
  toggleBtn.textContent = isHidden ? 'More Info' : 'Hide Info';

  if (!isHidden) {
    infoPanel.focus();
  }
});

Та аппликейшнуудаа дизайн хийхдээ ерөнхий хэрэглэгчийн туршлагыг бодолцож, мөн хэрэглэгчид шаардлагатай мэдээллээ илүү амархан олохын тулд progressive disclosure-ийг хэрхэн ашиглаж болохыг анхаарч үзэх хэрэгтэй. Үүнийг зөв хэрэгжүүлбэл, нийт хэрэглэгчийн туршлагад маш их эерэг нөлөө үзүүлж чадна
