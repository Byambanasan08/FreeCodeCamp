# Bash болон SQL-ийн Түүвэр Тэмдэглэл (Bash and SQL Review)

## Өгөгдлийн Сангийн Нормальчлал (Database Normalization)

Энэ нь өгөгдлийн илүүдэл (data redundancy)-ийг бууруулах, өгөгдлийн бүрэн бүтэн байдал (integrity)-ыг сайжруулахын тулд реляци өгөгдлийн санг зохион байгуулах үйл явц юм.

Үүний давуу талуудад дараах зүйлс орно:

- Өгөгдлийн давхардлыг хамгийн бага болгосноор хадгалах зайг хэмнэж, зөрчилтэй байдлыг бууруулна.
- Үндсэн түлхүүр (primary key) болон гадаад түлхүүр (foreign key)-ийг ашиглан өгөгдлийн бүрэн бүтэн байдлыг хангана.
- Өгөгдлийн санг ойлгох болон арчлахад илүү хялбар болгоно.

### Нормаль Хэлбэрүүд (Normal Forms)

- **1NF (Нэгдүгээр Нормаль Хэлбэр)**
- Нүд бүр зөвхөн нэг (automic) утга агуулна.
- Бичилт (record) бүр цор ганц байна (үндсэн түлхүүрээр хангагдана).
- Мөр/багануудын дараалал нь хамааралгүй байна.
- _Жишээ:_ Оюутны хүснэгт (`students`) дэх олон утасны дугаарыг тусдаа оюутны утасны хүснэгт (`student_phones`) рүү шилжүүлэх.

- **2NF (Хоёрдугаар Нормаль Хэлбэр)**
- 1NF-ийн шаардлагуудыг хангасан байна.
- Хэсэгчилсэн хамааралгүй (no partial dependencies) байх: түлхүүрийн бус атрибут бүр нь нийлмэл үндсэн түлхүүрээс (composite primary key) бүхэлд нь хамаарах ёстой.
- _Жишээ:_ Атрибутууд нь түлхүүрийн зөвхөн нэг хэсгээс хамаарахаас сэргийлж, захиалгын хүснэгтийг `order_header` болон `order_items` болгон хуваах.

- **3NF (Гуравдугаар Нормаль Хэлбэр)**
- 2NF-ийн шаардлагуудыг хангасан байна.
- Дамжих хамааралгүй (no transitive dependencies) байх: түлхүүрийн бус атрибутууд нь өөр нэг түлхүүрийн бус атрибутаас хамаарах ёсгүй.
- _Жишээ:_ Хотын шуудангийн код (`city_postal_code`)-ыг захиалга бүрт хадгалахын оронд хотуудын хүснэгт (`cities`) рүү шилжүүлэх.

- **BCNF (Boyce-Codd Normal Form)**
- 3NF-ийн шаардлагуудыг хангасан байна.
- Тодорхойлогч бүр (функциональ хамаарлын зүүн гар тал) нь супер түлхүүр (superkey) байх ёстой.

_Зөвлөмж:_ Бүрэн бүтэн байдал болон гүйцэтгэлийн сайн тэнцвэрийг хангахын тулд ихэнх зохиомжид 3NF-ийг зорилгоо болгоорой.

---

## SQL-ийн Үндсэн Ойлголтууд (Key SQL Concepts)

- SQL гэдэг нь Structured Query Language (Бүтэцчилсэн Хүсэлтийн Хэл) гэсэн үг бөгөөд relational өгөгдлийн сантай харилцах хэл юм.
- Үндсэн тушаалууд → `SELECT`, `INSERT`, `UPDATE`, `DELETE`, `CREATE TABLE`, `ALTER TABLE` г.м.
- Холболтууд (Joins) → Олон хүснэгтийн өгөгдлийг нэгтгэнэ (`INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`).

---

## Bash дээр SQL Тушаалуудыг Ажиллуулах (Running SQL Commands in Bash)

Та PostgreSQL-д зориулсан `psql` тушаалын мөрийн клиент эсвэл бусад өгөгдлийн сангийн ижил төстэй хэрэгслүүдийг ашиглан SQL тушаалуудыг шууд тушаалын мөрнөөс (command line) ажиллуулах боломжтой.

Жишээлбэл, PostgreSQL дээр SQL файлыг ажиллуулах:

```bash
psql -U username -d database_name -c "SELECT * FROM students;"

```

Мөн MySQL тушаалуудыг шууд гүйцэтгэж болно:

```bash
mysql -u username -p database_name -e "SELECT * FROM students;"

```

### Файлаас SQL-ийг ажиллуулах (Run SQL from a File)

_Энэ бол коммент_ PostgreSQL

```bash
psql -U username -d database_name -f script.sql

```

_Энэ бол коммент_ MySQL

```bash
mysql -u username -p database_name < script.sql

```

### Bash Скрипт дотор SQL-ийг суулгах (Embed SQL in a Bash Script)

```bash
#!/bin/bash
DB_USER="school_admin"
DB_NAME="school"

# Энэ бол коммент -> Оюутны өгөгдөл оруулах

psql -U "$DB_USER" -d "$DB_NAME" -c \
"INSERT INTO students (name, age, major) VALUES ('Alice', 20, 'CS');"

```

### SQL дотор Хувьсагч ашиглах (Use of Variables in SQL)

```bash
#!/bin/bash
DB_USER="school_admin"
DB_NAME="school"
STUDENT_NAME="Bob"
AGE=21

psql -U "$DB_USER" -d "$DB_NAME" -c \
"INSERT INTO students (name, age) VALUES ('$STUDENT_NAME', $AGE);"

```

_Зөвлөмж:_ SQL тарилгаас сэргийлэхийн тулд хувьсагчдыг ариутгаж (sanitize) шалгаарай.

### SQL Хүсэлтийн Үр Дүнг Bash дээр Хүлээн Авч Ашиглах (Retrieving and Using SQL Query Results in Bash)

Та `psql`-ээр дамжуулан SQL хүсэлтүүдийг ажиллуулахдаа буцаж ирсэн утгуудыг Bash скриптдээ барьж авч, боловсруулах боломжтой.

#### Ганц утга барьж авах (Capturing a Single Value)

```bash
#!/bin/bash
DB_USER="school_admin"
DB_NAME="school"

# Энэ бол коммент -> Нийт оюутны тоог авах

STUDENT_COUNT=$(psql -U "$DB_USER" -d "$DB_NAME" -t -A -c \
"SELECT COUNT(*) FROM students;")

echo "Total students: $STUDENT_COUNT"

```

Үр дүн → `42`

#### Олон Багана Хүлээн Авч Хадгалах (Retrieving Multiple Columns)

```bash
#!/bin/bash
DB_USER="school_admin"
DB_NAME="school"

# Энэ бол коммент -> Эхний 3 оюутны нэр болон насыг авах

RESULTS=$(psql -U "$DB_USER" -d "$DB_NAME" -t -A -F"," -c \
"SELECT name, age FROM students LIMIT 3;")

echo "Top 3 students:"
echo "$RESULTS"

```

Үр дүн

```text
Alice,20
Bob,21
Charlie,22

```

#### Хүсэлтийн Үр Дүнг Давталтаар Гүйцэтгэх (Looping Through Query Results)

```bash
#!/bin/bash
DB_USER="school_admin"
DB_NAME="school"

# Энэ бол коммент -> Оюутны нэр болон мэргэжлийг авах

psql -U "$DB_USER" -d "$DB_NAME" -t -A -F"," -c \
"SELECT name, major FROM students;" | while IFS="," read -r name major
do
echo "Student: $name | Major: $major"
done

```

Үр дүнгийн хэлбэр

```text
Student: Alice | Major: CS
Student: Bob | Major: Math
Student: Carol | Major: Physics

```

---

## SQL Тарилга (SQL Injection)

Энэ нь халдагчид өгөгдлийн санг удирдахын тулд оролтын талбаруудад хортой SQL код оруулдаг вэб аюулгүй байдлын эмзэг байдал юм.

Энэ нь дараах эрсдэлтэй үйлдлүүдэд хүргэж болзошгүй:

- Нэвтрэх шалгалтыг тойрч гарах (Bypassing authentication).
- Нууц өгөгдлийг хулгайлах (Stealing sensitive data).
- Бичилтүүдийг өөрчлөх эсвэл устгах (Modifying or deleting records).

SQL тарилгын халдлагын жишээ:

```sql
SELECT * FROM users WHERE username = ' " " OR "1"="1" -- ' AND password = 'anything';

```

Энэхүү хүсэлт нь бүх хэрэглэгчдийг буцаах болно, учир нь `OR "1"="1"` нөхцөл нь үргэлж үнэн (true) байх бөгөөд халдагчдад нэвтрэх шалгалтыг тойрч гарах боломжийг олгоно.

### SQL Тарилгаас Сэргийлэх (Preventing SQL Injection)

1. **Бэлдсэн Тушаал (Prepared Statements) ашиглах:** Эдгээр нь SQL кодыг өгөгдлөөс тусгаарлаж, тарилга хийхээс сэргийлдэг. Жишээ (Node.js-ийн `pg` сан дээр):

```javascript
client.query("SELECT * FROM users WHERE username = $1 AND password = $2", [
  username,
  password,
]);
```

2. **Оролтын Баталгаажуулалт (Input Validation):** Хэрэглэгчийн бүх оролтыг хүлээгдэж буй форматад нийцэж байгаа эсэхийг шалгаж, ариутгаж байх.
3. **Хамгийн Бага Эрх олгох (Least Privilege):** Програмд зөвхөн шаардлагатай хамгийн бага эрх бүхий өгөгдлийн сангийн бүртгэлийг ашиглах.

_Тэмдэглэл:_ Програмын бүртгэлд хэзээ ч админ (admin) эрх бүү олгоорой.

---

## N+1 Асуудал (N+1 Problem)

N+1 асуудал нь програм нэг зүйлийн жагсаалтыг (N) авахын тулд нэг хүсэлт хийж, дараа нь холбоотой өгөгдлийг авахын тулд элемент бүрийн хувьд нэмэлт хүсэлт хийснээр нийт N+1 хүсэлт үүсэх үед тохиолддог.

### Яагаад энэ нь муу вэ?

- Хүсэлт бүр нь сүлжээний болон боловсруулалтын нэмэлт зардал (overhead) үүсгэдэг.
- Олон тооны жижиг хүсэлтүүд нь оновчтой болгосон ганц хүсэлтээс хамаагүй удаан байдаг.

### N+1 Загварын Жишээ (Example of N+1 Pattern)

```sql
-- 1: Захиалгын жагсаалтыг авах
SELECT * FROM orders LIMIT 50;

-- N: Захиалга бүрийн хувьд үйлчлүүлэгчийг авах
SELECT * FROM customers WHERE customer_id = ...;

```

**Шийдэл:** Холболт (`JOIN`) эсвэл бусад олонлогт суурилсан үйлдлүүдийг ашиглах.

```sql
SELECT
orders.order_id,
orders.product,
orders.quantity,
customers.customer_id,
customers.name,
customers.email,
customers.address
FROM orders
JOIN customers
ON orders.customer_id = customers.customer_id
WHERE orders.order_id IN (SELECT order_id FROM orders LIMIT 50);

```

Холбоотой өгөгдлүүдийг үргэлж нэг хүсэлтэд нэгтгэх боломжийг хайж байгаарай.
