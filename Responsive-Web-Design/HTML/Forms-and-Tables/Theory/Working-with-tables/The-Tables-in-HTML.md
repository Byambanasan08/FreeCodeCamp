HTML хүснэгтийг (table) юунд ашигладаг вэ, мөн юунд ашиглах ёсгүй вэ?

HTML хүснэгтийг өнөө үед өмнөх шигээ өргөн ашиглахаа больсон ч **frontend developer** хүний хувьд тэдгээрийг мэддэг байх шаардлагатай. Хүснэгт нь 1990-ээд онд браузер дээр өгөгдөл харуулах хөгжүүлэгчдийн ашиглаж байсан хамгийн эртний аргуудын нэг юм.

Доорх нь АНУ-ын Хөдөлмөрийн Статистикийн Товчоо (U.S. Bureau of Labor Statistics)-ны өгөгдлөөс хүснэгт үүсгэсэн кодын жишээ юм:

```html
<table id="quickfacts">
  <thead>
    <tr>
      <th colspan="2">Quick Facts: Software Developers, Quality Assurance Analysts, and Testers</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>2023 Median Pay</th>
      <td>
        $130,160 per year
        <br>$62.58 per hour
      </td>
    </tr>
    <tr>
      <th>Typical Entry-Level Education</th>
      <td>Bachelor's degree</td>
    </tr>
    <tr>
      <th>Work Experience in a Related Occupation</th>
      <td>None</td>
    </tr>
    <tr>
      <th>On-the-job Training</th>
      <td>None</td>
    </tr>
    <tr>
      <th>Number of Jobs, 2022</th>
      <td>1,795,300</td>
    </tr>
    <tr>
      <th>Job Outlook, 2022-32</th>
      <td>25% (Much faster than average)</td>
    </tr>
    <tr>
      <th>Employment Change, 2022-32</th>
      <td>451,200</td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <th>If this table had a footer it would be here.</th>
    </tr>
  </tfoot>
</table>
```

Энд харж байгаачлан үндсэн **table элемент** байна бөгөөд `quickfacts` гэсэн **id**-тай. Түүний дотор:

* **thead** — хүснэгтийн толгой хэсэг
* **tbody** — хүснэгтийн үндсэн өгөгдөл
* **tfoot** — хүснэгтийн доод (footer) хэсэг

байрлаж байна.

Хүснэгтийн толгой, их бие, доод хэсэг тус бүр нь **tr (table row)** элементүүдийг агуулж чадна. Харин **tr элемент** бүрийн дотор:

* тухайн мөрийн өгөгдлийг тайлбарлах **th (table header)**
* бодит өгөгдлийг хадгалах **td (table data)**

байж болно.

Эдгээр нь олон HTML элемент мэт санагдаж магадгүй ч үнэндээ **энгийн шаталсан бүтэцтэй**.

Доорх нь дээрх бүх элементүүдийг багтаасан хамгийн энгийн хүснэгтийн жишээ юм:

```html
<table>
  <thead>
    <tr>
      <th>The title of this table</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>First Row</th>
      <td>
        First Data Cell
      </td>
    </tr>
    <tr>
      <th>Second Row</th>
      <td>
        Second Data Cell
      </td>
    </tr>
  </tbody>
  <tfoot>
    <tr>
      <th>The footer of this table, which might contain date of publication, author credits, or other meta information.</th>
    </tr>
  </tfoot>
</table>
```

Эндээс харахад **өгөгдөл нь үргэлж tr дотор** байрлаж, тухайн tr-ийн дотор:

* нэг **th** (гарчиг)
* нэг эсвэл хэд хэдэн **td** (өгөгдөл)

агуулагддаг.

Зарим вэбсайтууд хүснэгт үүсгэхдээ **table элемент** ашиглахын оронд **div** элементүүдээр хиймэл хүснэгт зохиодог.

Div элемент ашиглан хүснэгт маягийн харагдац үүсгэх боломжтой ч **tabular data** (мөр, багана бүхий өгөгдөл)-г харуулахад **table элемент ашиглах нь илүү зөв** сонголт юм.

Олон жилийн өмнө хөгжүүлэгчид хүснэгтийг өгөгдөл бус элементүүдийг байрлуулах (layout) зорилгоор ашигладаг байсан. Энэ нь хэзээ ч сайн туршлага (best practice) гэж тооцогдож байгаагүй ч, хуучин кодын сангуудаас ийм жишээ тааралдах боломжтой.

Өнөө үед layout хийхэд **CSS Flexbox** болон **CSS Grid** ашигладаг. freeCodeCamp эдгээрийг дараагийн хичээлүүдэд дэлгэрэнгүй тайлбарлах болно.

Одоогоор та HTML хүснэгтийг **анх зориулагдсан үндсэн зорилгоор нь**, өөрөөр хэлбэл **мөр, багана бүхий өгөгдөл харуулахад л** ашиглаарай.
