**iframe элементийн тусламжтайгаар видеог вэб хуудсандаа хэрхэн оруулах вэ?**

Өмнөх хичээлд та `iframe` элементтэй анх танилцсан. Энэ хичээлд `iframe`-ийг илүү дэлгэрэнгүй ашиглаж сурна. `iframe` нь *inline frame* гэсэн үгийн товчлол бөгөөд HTML хуудсан дотор өөр HTML контентыг шууд оруулах зориулалттай inline элемент юм. Энэ контент нь видео, газрын зураг, өөр HTML бүтэц, эсвэл бүхэл веб хуудас байж болно.

Доор YouTube дээрх алдартай freeCodeCamp сургалтыг оруулсан жишээ байна. Өөр видео үзэхийг хүсвэл интерактив редакторыг идэвхжүүлээд `src` утгыг өөр видео линкээр солино.

```html
<iframe
  width="400"
  height="400"
  src="https://www.youtube.com/embed/PkZNo7MFNFg?si=-UBVIUNM3csdeiWF"
  title="Learn JavaScript - Full Course for Beginners (YouTube video)"
  allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
  referrerpolicy="strict-origin-when-cross-origin"
  allowfullscreen
></iframe>
```

* **src** атрибут нь оруулахыг хүссэн хуудасны URL-ийг заана.
* **width** нь iframe-ийн өргөнийг, **height** нь өндөрийг тодорхойлно.
* **allowfullscreen** нь видеог бүтэн дэлгэцээр үзэх боломж олгоно.
* **title** атрибут нь accessibility-д чухал тул заавал өгөх нь сайн.

Харин **allow** атрибут нь iframe ямар боломжуудтай байхыг заадаг. Үүнийг *allowlist* гэж нэрлэдэг. Жишээ нь дээрх iframe-д `clipboard-write` нэмэгдсэн тул оруулсан хуудас таны clipboard руу мэдээлэл бичих боломжтой гэсэн үг. Allowlist дахь зүйлсийг таслалаар, зайгаар, эсвэл хоёуланг нь ашиглан тусгаарлаж болно.

Видео заавал YouTube эсвэл Vimeo-оос ирэх шаардлагагүй, хаанаас ч байж болно.

iframe ашиглан та видеоос гадна:

* газрын зураг,
* өөр веб хуудас,
* эсвэл HTML контентыг шууд оруулж болно.

Доорх нь газрын зураг оруулсан жишээ:

```html
<h1>A Map from Openstreetmap.org Embedded with the iframe Element</h1>

<iframe
  width="425"
  height="350"
  src="https://www.openstreetmap.org/export/embed.html?bbox=3.006134033203125%2C6.150112578753815%2C3.6357879638671875%2C6.749850810550778&amp;layer=mapnik"
  title="Map of Lagos area, Nigeria"
  style="border: 1px solid black"
>
</iframe>
<br />
<small>
  <a href="https://www.openstreetmap.org/#map=11/6.4501/3.3210">
    View Larger Map
  </a>
</small>
```

Хэрвээ та `iframe` дотор **HTML-ийг шууд** оруулахыг хүсвэл `src` биш, **srcdoc** атрибут ашиглах ёстой.
