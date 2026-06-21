## ### Алхам 1

Энэ workshop-д та технологийн бага хурлын хуваарийг (schedule) бүтээх явцдаа **хүртээмжтэй (accessible) table элементүүдийг** хэрхэн хийхийг суралцана.

Эхлээд `Tech Conference 2025 Schedule` гэсэн тексттэй **`h1` элемент** нэмээрэй.
## Step 2
Now it is time to start building out the table.

Start by adding a table element below your h1 element. Inside of the table element, add a caption element with the text Schedule by Track and Time.

## Step 3
The next step is to add the table head.

Start by adding a thead element below the caption element. Inside the thead, add a tr element.
## Step 4
Inside of your tr element, add four th elements. The first th element should have the text of Time, the second should have the text of Track A, the third should have the text of Track B, and the fourth should have the text of Track C.

## Алхам 5

`scope` атрибут нь тухайн гарчгийн нүд (`th`) нь **мөрийн**, **баганын**, эсвэл **мөр/баганын бүлгийн** гарчиг эсэхийг тодорхойлоход ашиглагддаг. Жишээ нь:

**Жишээ код**

```html
<th scope="col">Example Header</th>
```

Энэ нь screen reader-үүдэд гарчгийн нүд болон өгөгдлийн нүднүүдийн хоорондын хамаарлыг зөв ойлгоход тусалдаг.

**Бүх `th` элементүүдэд** `scope` атрибут нэмээд, утгыг нь `col` гэж тохируулаарай.
## Step 6
For the next few steps, you will build out the body of the table.

Start by adding a tbody element below the thead element. Then inside the tbody, add a tr element.

## Step 7
Inside your tr element, add a th element with the text of 9:00 AM. Then below that th element, add three td elements with the text of Keynote: Tech Future, Intro to Web Dev, and UX for All.

## Step 8
Another value for the scope attribute is row, which indicates that a header cell is a header for its entire row.

Inside of your th element, add a scope attribute with a value of row.

## Step 9
Now it is time to add another row to the table.

Start by adding another tr element. Inside that tr element, add a th element with a scope attribute set to "row" and the text content of 10:00 AM.

Then, add three td elements with the following text content:

Accessibility Deep Dive
CSS for Beginners
Inclusive Design Principles

## Step 10
Next, add a third row to the table. Start by adding another tr element. Inside that tr element, add a th element with a scope attribute set to "row" and the text content of 11:00 AM. Then below that th element, add a td element
 with the text content of Break.
 
## Алхам 11

Одоогоор `Break` гэсэн текст агуулсан `td` элемент нь зөвхөн **нэг баганыг** л хамарч байна. Харин үүнийг **гурван баганыг бүхэлд нь хамардаг** байвал илүү тохиромжтой.

Өмнөх workshop болон хичээлүүдээс санаж байгаачлан, хүснэгтийн нэг нүдийг олон багана дамнуулж харуулахын тулд `colspan` атрибутыг ашиглаж болдог.

**Жишээ код**

```html
<tr>
  <td colspan="3">Total Points</td>
</tr>
```

`td` элементэд `colspan` атрибут нэмээд, утгыг нь **3** гэж тохируулаарай.
## Step 12
Now it is time to add another row to the table.

Start by adding another tr element. Inside that tr element, add a th element with a scope attribute set to "row" and the text content of 11:30 AM.

Then, add three td elements with the following text content:

AR/VR in Education
JavaScript Fundamentals
Design Systems at Scale

## Step 13
Next, add a fifth row to the table. Start by adding another tr element. Inside that tr element, add a th element with a scope attribute set to "row" and the text content of 12:30 PM. Then below that th element, add a td element with the text content of Lunch Break. Your td element should also have a colspan attribute set to 3 so that it spans all three tracks.

## Step 14
The last step is to add one more row to the table.

Start by adding another tr element. Inside that tr element, add a th element with a scope attribute set to "row" and the text content of 2:00 PM.

Then, add three td elements with the following text content:

Voice UI Workshop
Git & GitHub Essentials
Color & Contrast in UI
With those last set of changes, your table is now complete!