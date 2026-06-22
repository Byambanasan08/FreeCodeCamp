# SQL болон PostgreSQL-ийн тойм (SQL and PostgreSQL Review)

### Харилцаа хамааралт өгөгдлийн сангийн удиртгал (Introduction to Relational Databases)

- **Харилцаа хамааралт өгөгдлийн сангууд (Relational Databases):** Өгөгдлийг мөр болон баганаас бүрдэх харилцан хамааралтай хүснэгтүүдэд зохион байгуулдаг. Мөр бүр нь бичлэгийг төлөөлөх бөгөөд багана бүр нь өгөгдлийн атрибутыг (attribute) төлөөлдөг.
- **Харилцаа хамааралт өгөгдлийн сангийн давуу талууд (Advantages of Relational Databases):** Өргөтгөх боломжтой (Scalable), олон салбарт (жишээ нь: эрүүл мэнд, бизнес, тоглоом) өргөнөөр ашиглагдах боломжтой, мөн найдвартай өгөгдлийг хадгалахад зориулагдсан бүтэцтэй.
- **Нийтлэг хэрэглээний тохиолдлууд (Common Use Cases):** Вэб хөгжүүлэлт, бараа материалын систем, цахим худалдаа, эрүүл мэнд болон аж ахуйн нэгжийн програмууд.

### Үндсэн ойлголтууд (Key Concepts)

- **Схем (Schema):** Харилцаа хамааралт өгөгдлийн сан нь түүний бүтэц болох хүснэгтүүд, баганууд, өгөгдлийн төрлүүд, хязгаарлалтууд (constraints) болон харилцаа холбоог тодорхойлсон схем шаарддаг.
- **Анхдагч түлхүүрүүд (Primary Keys):** Хүснэгт дэх мөр бүрийн цор ганц таних тэмдэг юм. Эдгээр нь өгөгдлийн бүрэн бүтэн байдлыг хангахад чухал ач холбогдолтой бөгөөд гадаад түлхүүрээр дамжуулан хүснэгт хоорондын бичлэгийг холбоход ашиглагддаг.
- **Гадаад түлхүүрүүд (Foreign Keys):** Өөр хүснэгтийн анхдагч түлхүүрийг иш татсан, хүснэгтүүд хоорондын холбоотой өгөгдлийг холбоход ашиглагддаг түлхүүр.
- **Харилцаа холбоо (Relationships):** Хүснэгтүүдийг анхдагч болон гадаад түлхүүрээр холбосноор та нормалчлагдсан өгөгдлийг бүтэцжүүлж, утга учиртай асуулга (queries) гүйцэтгэх боломжтой.
- **Обьект-Хамаарлын Диаграм (Entity Relationship Diagrams - ERDs):** Өгөгдлийн сангийн схем дэх обьектууд (хүснэгтүүд) бие биетэйгээ хэрхэн холбогдож байгааг нүдээр харах боломж олгодог.
- **Өгөгдлийн бүрэн бүтэн байдал (Data Integrity):** Түлхүүрүүд болон өгөгдлийн төрлүүдийг ашиглан хэрэгжүүлдэг. Хадгалагдсан өгөгдлийн тууштай болон үнэн зөв байдлыг хангадаг.

### SQL-ийн үндэс (SQL Basics)

- **Асуулга (Queries):** Өгөгдлийн сангаас тодорхой өгөгдлийг гаргаж авах хүсэлтүүд.

```sql
SELECT * FROM dogs WHERE age < 3;

```

- **WHERE нөхцөл (WHERE clause):** Нөхцөл дээр үндэслэн үр дүнг шүүнэ. <, =, > гэх мэт харьцуулах операторуудыг ашиглана.
- **ORDER BY ашиглан сонгох (Select with ORDER BY):** Баганад үндэслэн үр дүнг гаргаж авах болон эрэмбэлэх.

```sql
SELECT columns FROM table_name ORDER BY column_name;

```

### Хүснэгтийн үйлдлүүд (Table Operations)

- **CREATE TABLE мэдэгдэл (CREATE TABLE Statement):** Энэхүү мэдэгдлийг өгөгдлийн санд шинэ хүснэгт үүсгэхэд ашигладаг.

```sql
CREATE TABLE first_table();

```

- **ALTER TABLE ADD COLUMN мэдэгдэл (ALTER TABLE ADD COLUMN Statement):** Энэхүү мэдэгдлийг байгаа хүснэгтэд багана нэмэхэд ашигладаг.

```sql
ALTER TABLE table_name ADD COLUMN column_name DATATYPE;

```

- **ALTER TABLE DROP COLUMN мэдэгдэл (ALTER TABLE DROP COLUMN Statement):** Энэхүү мэдэгдлийг байгаа хүснэгтээс багана хасахад ашигладаг.

```sql
ALTER TABLE table_name DROP COLUMN column_name;

```

- **ALTER TABLE RENAME COLUMN мэдэгдэл (ALTER TABLE RENAME COLUMN Statement):** Энэхүү мэдэгдлийг хүснэгт дэх баганы нэрийг өөрчлөхөд ашигладаг.

```sql
ALTER TABLE table_name RENAME COLUMN column_name TO new_name;

```

- **DROP TABLE мэдэгдэл (DROP TABLE Statement):** Энэхүү мэдэгдлийг өгөгдлийн сангаас хүснэгтийг бүхэлд нь устгахад ашигладаг.

```sql
DROP TABLE table_name;

```

- **ALTER DATABASE RENAME мэдэгдэл (ALTER DATABASE RENAME Statement):** Энэхүү мэдэгдлийг өгөгдлийн сангийн нэрийг өөрчлөхөд ашигладаг.

```sql
ALTER DATABASE database_name RENAME TO new_database_name;

```

- **DROP DATABASE мэдэгдэл (DROP DATABASE Statement):** Энэхүү мэдэгдлийг өгөгдлийн санг бүхэлд нь устгахад ашигладаг.

```sql
DROP DATABASE database_name;

```

### Хязгаарлалт ба Өгөгдлийн бүрэн бүтэн байдал (Constraints & Data Integrity)

- **Хязгаарлалттайгаар ALTER TABLE ADD COLUMN (ALTER TABLE ADD COLUMN with Constraint):** Энэхүү мэдэгдлийг байгаа хүснэгтэд хязгаарлалт бүхий багана нэмэхэд ашигладаг.

```sql
ALTER TABLE table_name ADD COLUMN column_name DATATYPE CONSTRAINT;

```

- **NOT NULL хязгаарлалт (NOT NULL Constraint):** Энэхүү хязгаарлалт нь багана хоосон (NULL) утгатай байж болохгүйг баталгаажуулдаг.

```sql
column_name VARCHAR(50) NOT NULL

```

- **ALTER TABLE ADD PRIMARY KEY мэдэгдэл (ALTER TABLE ADD PRIMARY KEY Statement):** Энэхүү мэдэгдлийг хүснэгтэд анхдагч түлхүүрийн хязгаарлалт нэмэхэд ашигладаг.

```sql
ALTER TABLE table_name ADD PRIMARY KEY(column_name);

```

- **ALTER TABLE DROP CONSTRAINT мэдэгдэл (ALTER TABLE DROP CONSTRAINT Statement):** Энэхүү мэдэгдлийг хүснэгтээс хязгаарлалтыг хасахад ашигладаг.

```sql
ALTER TABLE table_name DROP CONSTRAINT constraint_name;

```

- **Гадаад түлхүүртэй ALTER TABLE ADD COLUMN (ALTER TABLE ADD COLUMN with Foreign Key):** Энэхүү мэдэгдлийг өөр хүснэгтийг иш татсан гадаад түлхүүр багана нэмэхэд ашигладаг.

```sql
ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);

```

- **ALTER TABLE ADD UNIQUE мэдэгдэл (ALTER TABLE ADD UNIQUE Statement):** Энэхүү мэдэгдлийг баганад UNIQUE (давтагдашгүй) хязгаарлалт нэмэхэд ашигладаг.

```sql
ALTER TABLE table_name ADD UNIQUE(column_name);

```

- **ALTER TABLE ALTER COLUMN SET NOT NULL мэдэгдэл (ALTER TABLE ALTER COLUMN SET NOT NULL Statement):** Энэхүү мэдэгдлийг байгаа баганад NOT NULL хязгаарлалт тогтооход ашигладаг.

```sql
ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;

```

- **NULL утгатай INSERT мэдэгдэл (INSERT Statement with NULL Values):** Энэхүү мэдэгдэл нь хүснэгтэд NULL утгыг хэрхэн оруулахыг харуулдаг.

```sql
INSERT INTO table_name(column_a) VALUES(NULL);
-- эсвэл
INSERT INTO table_name(column_b) VALUES('value'); -- хэрэв column_a нь null утга зөвшөөрч байвал

```

- **Нийлмэл анхдагч түлхүүр (Composite Primary Key):** Энэхүү хязгаарлалт нь олон баганаас бүрдэх анхдагч түлхүүрийг тодорхойлдог.

```sql
CREATE TABLE course_enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id));

```

### Өгөгдлийн манипуляци (Data Manipulation - CRUD)

INSERT мэдэгдэл (INSERT Statement): Энэхүү мэдэгдлийг хүснэгтэд нэг мөр оруулахад ашигладаг.

```sql
INSERT INTO table_name(column_1, column_2) VALUES(value1, value2);

```

Багануудыг орхисон INSERT мэдэгдэл (INSERT Statement with Omitted Columns):
Энэхүү мэдэгдэл нь баганын нэрсийг тодорхой дурдалгүйгээр, хүснэгтийн үндсэн баганын дараалалд найдаж утгуудыг хэрхэн оруулахыг харуулдаг.

```sql
INSERT INTO dogs VALUES ('Gino', 3);

```

Олон мөртэй INSERT мэдэгдэл (INSERT Statement with Multiple Rows): Энэхүү мэдэгдлийг нэг үйлдлээр хүснэгтэд олон мөр оруулахад ашигладаг.

```sql
INSERT INTO dogs (name, age) VALUES ('Gino', 3),('Nora', 2);

```

UPDATE мэдэгдэл (UPDATE Statement): Энэхүү мэдэгдлийг нөхцөл дээр үндэслэн хүснэгт дэх байгаа өгөгдлийг шинэчлэхэд ашигладаг.

```sql
UPDATE table_name SET column_name=new_value WHERE condition;

```

DELETE мэдэгдэл (DELETE Statement): Энэхүү мэдэгдлийг нөхцөл дээр үндэслэн хүснэгтээс мөрүүдийг устгахад ашигладаг.

```sql
DELETE FROM table_name WHERE condition;

```

### Өгөгдлийн төрлүүд (Data Types)

**NUMERIC** өгөгдлийн төрөл (NUMERIC Data Type): Энэхүү өгөгдлийн төрлийг заасан нарийвчлал (precision) болон масштаб (scale) бүхий нарийн аравтын бутархай тоог хадгалахад ашигладаг.

```sql
price NUMERIC(10, 2)

```

**TEXT** өгөгдлийн төрөл (TEXT Data Type): Энэхүү өгөгдлийн төрлийг тодорхой уртын хязгааргүй, хувьсах уртын тэмдэгт мөрийг хадгалахад ашигладаг.

```sql
column_name TEXT

```

**INTEGER** өгөгдлийн төрөл (INTEGER Data Type): Энэхүү өгөгдлийн төрлийг аравтын бутархайгүй бүхэл тоог хадгалахад ашигладаг.

```sql
units_sold INTEGER

```

**SMALLINT** болон **BIGINT** өгөгдлийн төрлүүд (SMALLINT and BIGINT Data Types): Эдгээр нь INTEGER төрлийн харгалзан жижиг болон том хүрээний хувилбарууд юм.
**SERIAL** өгөгдлийн төрөл (SERIAL Data Type): Энэхүү өгөгдлийн төрлийг PostgreSQL-д автоматаар нэмэгддэг (auto-incrementing) бүхэл тоон багана үүсгэхэд ашигладаг.

```sql
id SERIAL

```

**AUTO_INCREMENT** атрибут (AUTO_INCREMENT Attribute): Энэхүү атрибутыг MySQL-д автоматаар нэмэгддэг бүхэл тоон багана үүсгэхэд ашигладаг.

```sql
id INT AUTO_INCREMENT

```

**VARCHAR** өгөгдлийн төрөл (VARCHAR Data Type): Энэхүү өгөгдлийн төрлийг заасан хамгийн их урттай, хувьсах уртын тэмдэгт мөрийг хадгалахад ашигладаг.

```sql
name VARCHAR(50)

```

**DATE** өгөгдлийн төрөл (DATE Data Type): Энэхүү өгөгдлийн төрлийг огнооны утгыг (жил, сар, өдөр) хадгалахад ашигладаг.

```sql
event_date DATE

```

**TIME** өгөгдлийн төрөл (TIME Data Type): Энэхүү өгөгдлийн төрлийг цагийн утгыг (цаг, минут, секунд) хадгалахад ашигладаг.

```sql
start_time TIME

```

**TIMESTAMP** өгөгдлийн төрөл (TIMESTAMP Data Type): Энэхүү өгөгдлийн төрлийг огноо болон цагийн утгыг, сонголтоор цагийн бүсийн мэдээллийн хамт хадгалахад ашигладаг.

```sql
event_timestamp TIMESTAMP
event_timestamp TIMESTAMP WITH TIME ZONE

```

**BOOLEAN** өгөгдлийн төрөл (BOOLEAN Data Type): Энэхүү өгөгдлийн төрлийг үнэн/худал (true/false) утгыг хадгалахад ашигладаг.

```sql
is_active BOOLEAN

```

### Өгөгдлийн сангийн харилцаа холбоо (Database Relationships)

    Харилцааны төрлүүд (Types of Relationships): Эдгээр нь харилцаа хамааралт өгөгдлийн санд хүснэгтүүд бие биетэйгээ холбогдож болох өөр өөр аргууд юм.
    Нэг-нь-нэгт (One-to-one)
    Нэг-нь-олонтод (One-to-many)
    Олон-нь-нэгт (Many-to-one)
    Олон-нь-олонтод (Many-to-many)
    Өөрийгөө иш татсан (Self-referencing/recursive)

Нэг-нь-нэгт харилцаа (One-to-One Relationship): Энэ төрлийн харилцаа нь нэг хүснэгтийн бичлэг бүр нөгөө хүснэгтийн яг нэг бичлэгтэй тохирч байгааг илэрхийлнэ.
Нэг ажилтанд яг нэг тээврийн хэрэгсэл оноогдсон.
Хүснэгтүүд: employees, vehicles
Нэг-нь-олонтод харилцаа (One-to-Many Relationship): Энэ төрлийн харилцаа нь нэг хүснэгтийн нэг бичлэг нөгөө хүснэгтийн олон бичлэгтэй холбогдож болохыг илэрхийлнэ.
Нэг хэрэглэгч олон захиалгатай байж болно.
Хүснэгтүүд: customers → orders
Уулзвар хүснэгтээр дамжсан олон-нь-олонтод харилцаа (Many-to-Many Relationship via Junction Table): Энэ төрлийн харилцаа нь холбогдох хоёр хүснэгтийн гадаад түлхүүрүүдийг агуулсан уулзвар хүснэгтийг ашиглан хэрэгждэг.

```sql
CREATE TABLE books_authors (
    author_id INT REFERENCES authors(id),
    book_id INT REFERENCES books(id));

```

Өөрийгөө иш татсан харилцаа холбоо (Self-Referencing Relationships): Энэ төрлийн харилцаа нь хүснэгт өөрийгөө иш татах үед тохиолдож, шаталсан бүтцийг бий болгодог.
Ажилтан бүр өөр нэг ажилтанд тайлагнаж болох ажилчдын хүснэгт.

### Ахисан түвшний SQL (Нэгтгэлүүд) (Advanced SQL (Joins))

INNER JOIN мэдэгдэл: Энэхүү нэгтгэл нь зөвхөн хоёр хүснэгтэд хоёуланд нь тохирох утгатай мөрүүдийг буцаадаг.

```sql
SELECT * FROM products INNER JOIN sales ON products.product_id = sales.product_id;

```

FULL OUTER JOIN мэдэгдэл: Энэхүү нэгтгэл нь хоёр хүснэгтийн бүх мөрүүдийг, үүнд аль нэг хүснэгтэд тохирох утгагүй мөрүүдийг ч мөн буцаадаг.

```sql
SELECT * FROM products FULL OUTER JOIN sales ON products.product_id = sales.product_id;

```

LEFT OUTER JOIN мэдэгдэл: Энэхүү нэгтгэл нь зүүн талын хүснэгтийн бүх мөрүүдийг болон баруун талын хүснэгтээс тохирох мөрүүдийг буцаадаг.

```sql
SELECT * FROM products LEFT JOIN sales ON products.product_id = sales.product_id;

```

RIGHT OUTER JOIN мэдэгдэл: Энэхүү нэгтгэл нь баруун талын хүснэгтийн бүх мөрүүдийг болон зүүн талын хүснэгтээс тохирох мөрүүдийг буцаадаг.

```sql
SELECT * FROM products RIGHT JOIN sales ON products.product_id = sales.product_id;

```

SELF JOIN мэдэгдэл: Энэхүү нэгтгэл нь нэг хүснэгт доторх мөрүүдийг хооронд нь харьцуулахын тулд хүснэгтийг өөртэй нь нэгтгэхэд ашиглагддаг.

```sql
SELECT A.column_name, B.column_name FROM table_name A JOIN table_name B ON A.related_column = B.related_column;

```

CROSS JOIN мэдэгдэл: Энэхүү нэгтгэл нь хоёр хүснэгтийн Декартын үржвэрийг (Cartesian product) буцаадаг бөгөөд эхний хүснэгтийн мөр бүрийг хоёр дахь хүснэгтийн мөр бүртэй нэгтгэдэг.

```sql
SELECT * FROM table1 CROSS JOIN table2;

```

### PostgreSQL-ийн тусгай командууд (PostgreSQL Specific Commands)

_psql_ нэвтрэх команд: Энэхүү команд нь тодорхой хэрэглэгчийн нэр болон өгөгдлийн санг ашиглан PostgreSQL-д нэвтрэхэд ашиглагддаг.

```bash
psql --username=freecodecamp --dbname=postgres

```

\l команд: Энэхүү команд нь PostgreSQL-ийн орчин дахь бүх өгөгдлийн сангуудыг жагсаан харуулдаг.

```bash
\l

```

CREATE DATABASE болон \c командууд: Эдгээр командууд нь шинэ өгөгдлийн сан үүсгэх болон түүнтэй холбогдоход ашиглагддаг.

```sql
CREATE DATABASE database_name;

```

```bash
\c database_name

```

\d команд: Энэхүү команд нь одоогийн өгөгдлийн сан дахь бүх хүснэгтүүдийг жагсаадаг.

```bash
\d

```

\d table_name команд: Энэхүү команд нь тухайн хүснэгтийн схем/бүтцийг харуулдаг.

```bash
\d table_name

```

\q команд: Энэхүү команд нь PostgreSQL клиентийн програмаас гарахад ашиглагддаг.

```bash
\q

```

### Харилцаа хамааралт ба Харилцаа хамааралт бус (Relational vs Non-Relational)

Харилцаа хамааралт бус (NoSQL) өгөгдлийн сангууд: Бүтэцгүй эсвэл хагас бүтэцтэй өгөгдлийг хадгалдаг. Хатуу схем шаарддаггүй бөгөөд хувьсан өөрчлөгдөж буй өгөгдлийн загварт илүү уян хатан байдаг.
Харилцаа хамааралт болон Харилцаа хамааралт бус сангуудын хооронд сонголт хийх: Энэ нь таны өгөгдлийн шинж чанар болон програмын шаардлагаас хамаарна.
Харилцаа хамааралт ба Харилцаа хамааралт бус: Бүтэцлэгдсэн өгөгдөл болон тууштай байдлын (consistency) хувьд харилцаа хамааралт санг; уян хатан байдал болон хурдан өөрчлөгдөж буй өгөгдлийн хувьд NoSQL-ийг сонгоорой.

### Түгээмэл RDBMS системүүд (Popular RDBMS Systems)

MySQL: Нээлттэй эх сурвалжтай, найдвартай, вэб хөгжүүлэлтэд өргөн ашиглагддаг, томоохон хамт олон (community) дэмждэг.
PostgreSQL: Нээлттэй эх сурвалжтай, ахисан түвшний, өргөтгөх боломжтой. Хэрэглэгчийн тодорхойлсон өгөгдлийн төрөл болон серверийн талын програмчлалыг дэмждэг.
SQLite: Хөнгөн жинтэй, файл дээр суурилсан, сервер шаарддаггүй. Жижиг програмуудад тохиромжтой.
Microsoft SQL Server: Өмчийн (proprietary), аж ахуйн нэгжийн түвшний өгөгдлийн сан.
Oracle Database: Том хэмжээний гүйцэтгэл болон өргөтгөх чадвараараа алдартай арилжааны RDBMS.

### Шилдэг туршлагууд (Best Practices)

Нэрлэх стандарт (Naming Convention): Хүснэгт болон баганын нэрэнд snake_case (ж.нь, delivery_orders) ашиглаж хэвшээрэй.
