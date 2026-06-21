**Pseudo-classes гэж юу вэ, мөн хэрхэн ажилладаг вэ?**

**Pseudo-classes** нь элементийн **тодорхой төлөв (state)** эсвэл **байрлал (position)** дээр үндэслэн тухайн элементийг сонгох боломж олгодог тусгай **CSS keyword**-ууд юм. Элементийн төлөв эсвэл байрлал дараах байдалтай байж болно:

* Элемент **идэвхтэй (active)** үед
* Хулгана элемент дээр **hover** хийх үед
* Элемент нь **parent-ийн эхний child** байх үед
* Элемент нь **parent-ийн сүүлийн child** байх үед
* **Link өмнө нь зочилсон (visited)** үед
* Элемент **disabled** төлөвтэй үед

Pseudo-class ашиглахын тулд selector дээр **(:) тэмдэг** ашиглан pseudo-class-ийн нэрийг бичнэ:

```
selector:pseudo-class {
  /* CSS properties */
}
```

Одоо өмнө дурдсан төлөв болон байрлал бүрийг илэрхийлэхдээ pseudo-class-ийг хэрхэн ашиглаж болохыг харцгаая.

1. :active pseudo-class** нь элементийн **active төлөвийг** сонгох боломж олгодог. Жишээлбэл **button дээр дарах үед** энэ төлөв идэвхжинэ.

<link rel="stylesheet" href="styles.css" />
<button>Example Button</button>
---css---
button:active {
  background: greenyellow;
}

2. :hover pseudo-class** нь элементийн **hover төлөвийг** тодорхойлдог. Жишээлбэл, **button** эсвэл **link** дээр хулганаа аваачих үед энэ төлөв идэвхжинэ.

<link rel="stylesheet" href="styles.css" />
<a href="#">Hover over me!</a>  

--css--

a:hover {
  text-decoration: none;
  color: white;
  background: crimson;
}

3. :first-child pseudo-class** нь **parent элементийн эхний child** болсон элементийг сонгодог. Доорх нь **div контейнер доторх эхний paragraph элементийг** сонгож байгаа жишээ юм.
<link rel="stylesheet" href="styles.css" />
<div class="container">
  <p>first child</p>
  <p>second child</p>
  <p>third child</p>
  <p>last child</p>
</div>

---css---
.container p:first-child {
  background: lightcoral;
  padding: 0.4rem;
}

Тэр **div** доторх **эхний paragraph элемент** нь **lightcoral background өнгө** болон бүх дөрвөн талдаа **0.4rem padding** авах болно.

4. :last-child pseudo-class** нь **parent элементийнхээ сүүлийн child болсон элементийг** сонгодог. Доорх нь **container div элемент доторх сүүлийн paragraph элементийг** сонгож байгаа жишээ юм.

<link rel="stylesheet" href="styles.css" />
<div class="container">
  <p>first child</p>
  <p>second child</p>
  <p>third child</p>
  <p>last child</p>
</div>

--css---
.container p:last-child {
  background: lightcoral;
  padding: 0.4rem;
}

5. The :visited pseudo-class lets you style a link the user has already visited:

6. **:disabled pseudo-class** нь **disabled төлөвтэй интерактив элементийг** стильдэх боломжийг олгодог.
<link rel="stylesheet" href="styles.css" />
<button disabled>Disabled Button</button>

--css---

button:disabled {
  background-color: lightgray;  
}

Таны харж байгаачлан **pseudo-class**-ууд нь элементүүдийг **хэрэглэгчийн харилцан үйлчлэл дээр үндэслэн** стильдэх боломжийг олгодог. Жишээлбэл **hover хийх**, эсвэл **link зочилсон байх** зэрэг төлөвүүд дээр үндэслэн стиль өөрчлөгдөж болно. Ингэснээр таны вэбсайт **илүү интерактив мэдрэмжтэй** болдог.

Өмнө дурдсан pseudo-class-уудаас гадна дараах төрлүүд бас байдаг:

* **:focus**
* **:first-of-type**
* **:last-of-type**
* **:nth-of-type**
* **:modal**
* **:enabled**
* **:checked**
* **:required**, болон бусад.

