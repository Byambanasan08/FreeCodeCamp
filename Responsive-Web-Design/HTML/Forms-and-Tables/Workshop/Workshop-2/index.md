## Step 1Passed
In this workshop, you will practice working with HTML tables by building a final exam table for a group of students.

In previous lessons, you learned how to work with the table element to represent tabular data.

Inside your body element, nest a table element.

## Step 2Passed
To add a caption to a table, you can use the table caption element.

Here is an example using the caption element:

Example Code
<table>
  <caption>Football Scores</caption>
</table>
Inside your table element, nest a caption element with the text Calculus Final Exam Grades.

## Алхам 3 — Давсан

Хүснэгтийн эхний хэсэгт оюутны **нэр**, **овог**, **шалгалтын эцсийн дүн** зэрэг багануудын шошгыг (column labels) илэрхийлэх **header контентыг** бүлэглэх хэрэгтэй.

**Table head элемент (thead)** нь хүснэгтийн толгой хэсгийн контентыг бүлэглэхэд ашиглагддаг.

Thead элементийг ашигласан жишээг доор үзүүлэв:

Жишээ код

```html
<table>
  <thead>
    <!-- header content goes here -->
  </thead>
</table>
```

**Caption элементийн доор** нэг **table head (thead) элемент** нэмнэ үү.

## Алхам 4 — Давсан

**Table head элемент (thead)** нь **table row элемент (tr)**-ээс бүрдэх бөгөөд уг tr элементийн дотор **table header cell элементүүд (th)** байрладаг.

Доорх нь спортын хүснэгтэд tr болон th элементүүдийг ашигласан жишээ юм:

Жишээ код

```html
<table>
  <caption>Football Scores</caption>
  <thead>
    <tr>
      <th>Team</th>
      <th>Wins</th>
      <th>Losses</th>
    </tr>
  </thead>
</table>
```

**Thead элементийн дотор** нэг **tr элемент** нэмнэ үү.

**Tr элементийн дотор** **гурван th элемент** нэмнэ.

* Эхний **th элемент** нь `Last Name` гэсэн тексттэй байна.
* Хоёр дахь **th элемент** нь `First Name` гэсэн тексттэй байна.
* Гурав дахь **th элемент** нь `Grade` гэсэн тексттэй байна.

## Step 5Passed
Now that you have completed the head section, it is time to add the table body, tbody. The table body will represent all of the student names and their grades.

Add a table body element to your table.

## Алхам 6 — Давсан

Хүснэгтэд оюутны өгөгдлийг нэмэхийн тулд **table row (tr)** болон **table data (td)** элементүүдийг ашиглах хэрэгтэй.

**Table data элемент (td)** нь хүснэгтийн нэг нүд (cell) үүсгэхэд ашиглагддаг.

Доорх нь спортын тамирчдын хүснэгтэд td элементийг ашигласан жишээ юм:

Жишээ код

```html
<tr>
  <td>1</td>
  <td>John Doe</td>
  <td>USA</td>
</tr>
```

**Table body элемент (tbody)-ийн дотор** гурван **table data элемент (td)** агуулсан нэг **table row элемент (tr)** нэмнэ үү.

* Эхний **td элемент** нь `Davis` гэсэн **овог**-той байна.
* Хоёр дахь **td элемент** нь `Alex` гэсэн **нэр**-тэй байна.
* Гурав дахь **td элемент** нь `54` гэсэн **дүн**-тэй байна.


## Алхам 7 — Давсан

Одоо хүснэгтэд **өөр хоёр оюутан** нэмэх цаг боллоо.

Өмнөх алхамтай **ижил загварыг** даган, хоёр дахь оюутанд зориулсан **table row (tr)** нэмнэ үү. **Table data (td)** элементүүдэд дараах өгөгдлийг ашиглана:

* **Last Name:** Doe
* **First Name:** Samantha
* **Grade:** 92

Дараа нь гурав дахь оюутанд зориулсан **table row (tr)**-ийг нэмээд, **table data (td)** элементүүдэд дараах өгөгдлийг ашиглана:

* **Last Name:** Rodriguez
* **First Name:** Marcus
* **Grade:** 88

## Step 8Passed
Now it is time to add two more students to the table.

Following the same pattern as the previous steps, add a fourth student table row. Use the following data for the table data elements:

Last Name: Thompson
First Name: Jane
Grade: 77
For the fifth student table row, use the following data for the table data elements:

Last Name: Williams
First Name: Natalie
Grade: 83

## Алхам 9 — Давсан

Хүснэгтэд нэмэх хамгийн сүүлийн хэсэг нь **table foot элемент (tfoot)** юм. Table foot элемент нь хүснэгтэд байгаа бүх оюутнуудын **дундаж дүнг** харуулахад ашиглагдана.

Хүснэгтэд нэг **tfoot элемент** нэмнэ үү.

**Tfoot элементийн дотор** нэг **tr элемент** нэмнэ.

**Tr элементийн дотор** хоёр **td элемент** нэмнэ.

* Эхний **td элемент** нь `Average Grade` гэсэн тексттэй байна.
* Хоёр дахь **td элемент** нь `78.8` гэсэн тексттэй байна.


## Алхам 10 — Давсан

Таны хүснэгт бараг дууссан боловч нэмэх нэг сүүлийн зүйл байна.

**Average Grade**-д ашигласан **td элемент** нь зөвхөн нэг багана биш, **хоёр багана дамнан** байрлавал илүү тохиромжтой.

Үүнийг хийхийн тулд **td элемент** дээр **colspan атрибут** ашиглаж болно.

**Colspan атрибут** нь тухайн нүд хэдэн багана дамнахыг заадаг.

Доорх нь спортын хүснэгтэд colspan атрибут ашигласан жишээ юм:

Жишээ код

```html
<tr>
  <td colspan="3">Total Points</td>
</tr>
```

**Нээж буй td таг дотор** `colspan` атрибут нэмээд, утгыг нь **"2"** гэж тохируулна уу.

Ингэснээр таны хүснэгт **бүрэн дууслаа**.

