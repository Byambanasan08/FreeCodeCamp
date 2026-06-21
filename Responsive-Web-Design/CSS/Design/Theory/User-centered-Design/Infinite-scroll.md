# Infinite Scroll дизайн хийхэд баримтлах шилдэг практикууд юу вэ?

**Тэмдэглэл:** Зарим интерактив жишээнүүдэд таны хараахан сураагүй байж болох CSS болон JavaScript код ашигласан байж болно. Бүх кодыг бүрэн ойлгох гэж оролдох шаардлагагүй. Эдгээр жишээнүүдийн зорилго нь эдгээр дизайн ойлголтууд хэрхэн ажилладгийг илүү сайн ойлгоход тань туслах **урьдчилсан харагдац (preview)** үзүүлэхэд оршино. Жишээнүүдийн preview-г харахын тулд **interactive editor**-ийг идэвхжүүлэх шаардлагатай.

**Infinite scrolling** гэдэг нь хэрэглэгч хуудасны доош **scroll** хийх үед **шинэ контент автоматаар ачаалагддаг** дизайн загвар юм. Энэ нь ихэвчлэн **Twitter** зэрэг **сошиал медиа сайтууд** дээр ашиглагддаг. Жишээлбэл, хэрэв та нэвтэрсэн байгаад **илүү олон tweet харахыг хүсвэл**, доош scroll хийхэд **шинэ tweet-үүд автоматаар ачаалагдана**. Энэ нь **infinite scrolling**-ийн жишээ юм.
--HTML--
<link rel="stylesheet" href="styles.css">

<div class="infinite-scroll">
  <div class="post">Post 1</div>
  <div class="post">Post 2</div>
  <div class="post">Post 3</div>
  <div class="post">Post 4</div>
  <div class="post">Post 5</div>
  <div class="post">Post 6</div>
  <div class="post">Post 7</div>
  <div class="post">Post 8</div>
  <div class="post">Post 9</div>
  <div class="post">Post 10</div>
  <!-- More posts will load here as the user scrolls down -->
</div>

<script src="index.js"></script>

--CSS--
.infinite-scroll {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.post {
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

--JS--
// Simulate loading more content as the user scrolls
window.addEventListener('scroll', () => {
  if (window.innerHeight + window.scrollY >= document.body.offsetHeight) {
    loadMorePosts();
  }
});

function loadMorePosts() {
  const container = document.querySelector('.infinite-scroll');
  for (let i = 0; i < 3; i++) {
    const post = document.createElement('div');
    post.className = 'post';
    post.textContent = `Post ${container.children.length + 1}`;
    container.appendChild(post);
  }
}

**Infinite scrolling** нь мөн **pagination**-ийн оронд ашиглагддаг. **Pagination** гэдэг нь контентыг **олон хуудсанд хуваан харуулах** дизайн загвар юм. Энэ нь их хэмжээний контент харуулах шаардлагатай үед ихэвчлэн ашиглагддаг. **Pagination**-ийн жишээ бол та Google дээр ямар нэг зүйл хайхад хайлтын үр дүн **олон хуудсанд** харагддаг явдал юм. **Pagination** ашиглаж байгаа үед дараагийн хуудсанд шилжихийн тулд **товч дээр дарах** шаардлагатай байдаг. Харин **infinite scrolling** ашиглаж байгаа үед та **зүгээр л доош scroll хийхэд** илүү их контент **автоматаар ачаалагдана**.

---HTML---
<link rel="stylesheet" href="styles.css">

<div class="pagination">
  <div class="post">Post 1</div>
  <div class="post">Post 2</div>
  <div class="post">Post 3</div>
  <!-- More posts will be on the next pages -->
</div>
<div class="pagination-controls">
  <button class="prev" disabled>Previous</button>
  <button class="next">Next</button>
</div>
<script src="index.js"></script>

---CSS---
.pagination {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.post {
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.pagination-controls {
  margin-top: 12px;
}

.pagination-controls button {
  padding: 8px 16px;
  margin-right: 8px;
}

----JS----
let currentPage = 1;
const postsPerPage = 3;
const totalPosts = 9; 
const totalPages = Math.ceil(totalPosts / postsPerPage);
const container = document.querySelector('.pagination');
const prevButton = document.querySelector('.prev');
const nextButton = document.querySelector('.next'); 

function renderPosts() {
  container.innerHTML = '';
  const start = (currentPage - 1) * postsPerPage;
  const end = start + postsPerPage;
  for (let i = start; i < end && i < totalPosts; i++) {
    const post = document.createElement('div');
    post.className = 'post';
    post.textContent = `Post ${i + 1}`;
    container.appendChild(post);
  }
  prevButton.disabled = currentPage === 1;
  nextButton.disabled = currentPage === totalPages;
}

prevButton.addEventListener('click', () => {
  if (currentPage > 1) {
    currentPage--;
    renderPosts();
  }
});

nextButton.addEventListener('click', () => {
  if (currentPage < totalPages) {
    currentPage++;
    renderPosts();
  }
});

renderPosts();

Та дизайндаа **infinite scrolling** ашиглахдаа анхаарах хэд хэдэн шилдэг практик байдаг. Эхний анхаарах зүйл бол хэрэглэгч дарахад **дараагийн контентыг ачаалах "Load More" товч** нэмэх явдал юм. Энэ нь хэрэглэгч **хэзээ илүү их контент харахыг хүсэж байгаагаа өөрөө хянах** боломж олгох сайн арга юм.
---HTML---
<link rel="stylesheet" href="styles.css">

<div class="infinite-scroll">
  <div class="post">Post 1</div>
  <div class="post">Post 2</div>
  <div class="post">Post 3</div>
  <!-- More posts will load when the user clicks "Load More" -->
</div>
<button class="load-more">Load More</button>
<script src="index.js"></script>

---CSS---
.infinite-scroll {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.post {
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.load-more {
  margin-top: 12px;
  padding: 8px 16px;
}

---JS----
const loadMoreButton = document.querySelector('.load-more');
const container = document.querySelector('.infinite-scroll');   
loadMoreButton.addEventListener('click', () => {
  loadMorePosts();
});

function loadMorePosts() {
  for (let i = 0; i < 3; i++) {
    const post = document.createElement('div');
    post.className = 'post';
    post.textContent = `Post ${container.children.length + 1}`;
    container.appendChild(post);
  }
}

Өөр нэг анхаарах зүйл бол **“Back” товч** нэмэх явдал юм. Энэ нь хэрэглэгчдэд **бүхэлд нь дахин дээш scroll хийх шаардлагагүйгээр** өмнөх хуудас руу буцах боломж олгодог. Ингэснээр **илүү сайн хэрэглэгчийн туршлага** бий болж, хэрэглэгчид өөрсдийн **үзэх туршлагаа илүү хянах** боломжтой болдог.

Заримдаа **“Back to the top”** товчтой дизайн байдаг бөгөөд энэ нь хэрэглэгчийг **үр дүнгийн хуудасны дээд хэсэг рүү буцаадаг**. Мөн өөр нэг анхаарах зүйл бол **loading indicator** ашиглах явдал юм. Илүү их контент **ачаалагдаж байгааг хэрэглэгчид тодорхой харах** ёстой; эс тэгвээс тэд **хуудас эвдэрсэн** гэж бодож магадгүй.
---HTML----
<link rel="stylesheet" href="styles.css">

<div class="infinite-scroll">
  <div class="post">Post 1</div>
  <div class="post">Post 2</div>
  <div class="post">Post 3</div>
  <div class="post">Post 4</div>
  <div class="post">Post 5</div>
  <div class="post">Post 6</div>
  <div class="post">Post 7</div>
  <div class="post">Post 8</div>
  <div class="post">Post 9</div>
  <div class="post">Post 10</div>
  <!-- More posts will load here as the user scrolls down -->
</div>

<div class="loading-indicator" style="display: none;">Loading...</div>

<button id="back-to-top" class="back-to-top">↑ Back to Top</button>

<script src="index.js"></script>
----CSS---
.infinite-scroll {
  display: flex;
  flex-direction: column;
  gap: 12px;
}

.post {
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.loading-indicator {
  margin-top: 12px;
  font-weight: bold;
}

.back-to-top {
  position: fixed;
  bottom: 30px;
  right: 30px;
  display: none;
  padding: 10px 15px;
  background-color: #007BFF;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  font-size: 14px;
  box-shadow: 0 2px 6px rgba(0, 0, 0, 0.2);
}

.back-to-top:hover {
  background-color: #0056b3;
}
----JS----
const container = document.querySelector('.infinite-scroll');
const loadingIndicator = document.querySelector('.loading-indicator');
const backToTopBtn = document.getElementById('back-to-top');

window.addEventListener('scroll', () => {
  if (window.scrollY > 400) {
    backToTopBtn.style.display = 'block';
  } else {
    backToTopBtn.style.display = 'none';
  }

  if (window.innerHeight + window.scrollY >= document.body.offsetHeight) {
    loadMorePosts();
  }
});

backToTopBtn.addEventListener('click', () => {
  window.scrollTo({ top: 0, behavior: 'smooth' });
});

function loadMorePosts() {
  loadingIndicator.style.display = 'block';
  setTimeout(() => {
    for (let i = 0; i < 3; i++) {
      const post = document.createElement('div');
      post.className = 'post';
      post.textContent = `Post ${container.children.length + 1}`;
      container.appendChild(post);
    }
    loadingIndicator.style.display = 'none';
  }, 1000);
}

Анхаарах сүүлийн зүйлсийн нэг бол **footer**-ийг хэрэглэгчдэд **үргэлж хүрэх боломжтой** байлгах явдал юм. Хэрэв footer-д **чухал мэдээлэл** байгаа бол хэрэглэгч **ямар ч үед түүнд хандах боломжтой** байх ёстой.

Дүгнэж хэлбэл, **infinite scrolling** нь таны вэбсайт дээр контентыг харуулах **маш сайн арга** юм. Гэхдээ infinite scroll дизайн хийхдээ **шилдэг практикуудыг** анхаарах хэрэгтэй бөгөөд ингэснээр та **хамгийн сайн хэрэглэгчийн туршлагыг** бий болгож чадна.
