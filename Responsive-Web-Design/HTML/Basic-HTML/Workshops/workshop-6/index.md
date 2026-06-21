## Алхам 1

Энэ workshop-д та `iframe` элемент ашиглан видео харуулах болно. Суурь HTML бүтэц бэлдсэн байгаа.

`iframe Video Display` гэсэн тексттэй **h1 элемент** үүсгэ.

## Step 2
Now, create an iframe element. Don't put anything in it yet.

## Алхам 3

`iframe` элемент нь `img`-ийн адил replaced элемент тул өөрийн харагдах өндөр болон өргөнийг тодорхойлохын тулд `width` болон `height` атрибутуудыг авч чадна.

`iframe` элементийн **width**-ийг **560**, **height**-ийг **315** гэж тохируул.

## Step 4
The iframe element also takes an src attribute with a value that indicates the URL or the path of the resource to display.

Add an src attribute of https://www.youtube.com/embed/I0_951_MPE0 to your iframe element.

At this point, you should see the video displaying on the page, but there are some more attributes you need to add.

## **Алхам 5**

`allow` атрибут нь iframe ямар боломжуудыг ашиглаж болохыг браузерт зөвшөөрдөг “permission list” юм.

Доорх нь `allow` атрибуттай iframe-ийн жишээ:

```html
<iframe
  allow="accelerometer autoplay clipboard-write encrypted-media gyroscope picture-in-picture web-share"
></iframe>
```

`allow` атрибут нэмж, утгыг нь дараах байдлаар тохируул:

```
accelerometer autoplay clipboard-write
```

* **accelerometer** — төхөөрөмжийн хазайлт, эргэлт зэрэг хөдөлгөөнийг мэдрэх боломж олгоно.
* **autoplay** — видеог автоматаар тоглож эхлэхийг зөвшөөрнө.
* **clipboard-write** — iframe-д хэрэглэгчийн clipboard руу өгөгдөл бичих боломж олгоно.

## **Алхам 6**

`allow` атрибутын одоо байгаа утгад дараах гурвыг нэмж оруул:

```
encrypted-media gyroscope web-share
```

Эдгээр нь:

* **encrypted-media** — видеог хамгаалахад ашиглагддаг encrypted media extensions-ийг ашиглахыг зөвшөөрнө
* **gyroscope** — төхөөрөмжийн хөдөлгөөн болон чиглэлийн мэдрэгчдэд хандалт олгоно
* **web-share** — iframe-ийн контентыг төхөөрөмжийн native share цонхоор дамжуулан хуваалцах боломж олгоно

## **Алхам 7**

Одоо нэмэх атрибут бол **referrerpolicy**. Энэ нь таны хуудас өөр хуудастай холбогдох үед ямар түвшний мэдээлэл дамжуулахыг тодорхойлдог.

`referrerpolicy` атрибутыг нэмээд утгыг нь:

```
strict-origin-when-cross-origin
```

гэж тохируул.

Энэ тохиргоо нь:

* Нэг домэйн дотор бол бүрэн хаягийг,
* Өөр домэйн руу бол зөвхөн домэйн нэрийг,
* Аюулгүй бус (insecure) сайтууд руу бол ямар ч мэдээлэл дамдуулахгүй.

## **Алхам 8**

Сүүлийн нэмэх атрибут бол **allowfullscreen**. Нэр нь илэрхийлж буйгаар энэ атрибут нь видеог бүрэн дэлгэцийн төлөвт үзэх боломжийг олгодог.

Үүгээр workshop дууслаа!
