Git-г анх харахад жаахан будилаантай санагддаг. Гэхдээ нэг удаа **суурь ойлголтыг зөв суулгачихвал** дараагийн бүх зүйл маш логик болж ирдэг.

---

# 🧠 Git гэж юу вэ?

**Git** бол:
👉 Кодын өөрчлөлтийг хадгалж, хянаж, буцааж сэргээж болдог систем
👉 Өөрөөр хэлбэл “Version Control System (VCS)”

### Энгийнээр ойлговол:

Чи Word файл дээр ажиллаж байна гэж бодъё:

- version1.docx
- version2.docx
- final.docx
- final_final.docx
- final_REAL.docx 😅

👉 Git энэ бүхнийг **автоматаар удирддаг**

---

## 🔁 Git-ийн үндсэн санаа

Git бол:

> “Чи кодоо өөрчилсөн бүх мөчийг snapshot (зураг) шиг хадгалдаг систем”

Жишээ:

- Эхний код → commit 1
- Өөрчлөлт хийв → commit 2
- Алдаа гаргав → commit 3

👉 Дараа нь commit 1 рүү буцаж болно

---

## 📦 Гол ойлголтууд

### 1. Repository (Repo)

👉 Чиний төслийн бүх түүх хадгалагддаг “folder”

---

### 2. Commit

👉 Кодын нэг хадгалсан “version”

Жишээ:

```
Added login feature
Fixed bug in navbar
```

---

### 3. Branch

👉 Кодын өөр хувилбар дээр зэрэг ажиллах боломж

Жишээ:

- main → үндсэн код
- feature-login → login хөгжүүлэлт

👉 Main-г эвдэхгүйгээр шинэ зүйл хийж болно

---

### 4. Merge

👉 Branch-уудыг нэгтгэх

---

### 5. Pull / Push

- **push** → локал (компьютер) → сервер рүү явуулах
- **pull** → сервер → локал руу татах

---

# 🌐 GitHub ба GitLab гэж юу вэ?

Git өөрөө бол **local tool** (компьютер дээр ажиллана)

Харин:

## 👉 GitHub / GitLab = Git-ийн “cloud storage + collaboration platform”

---

## 📊 Гол ялгаа

|                   | Git             | GitHub / GitLab    |
| ----------------- | --------------- | ------------------ |
| Юу вэ?            | Tool            | Platform           |
| Хаана ажиллах вэ? | Local           | Online             |
| Үүрэг             | Version control | Хуваалцах, хамтрах |

---

## 🧩 GitHub / GitLab юу хийдэг вэ?

### 1. Remote repository хадгална

👉 Кодоо интернет дээр хадгална

---

### 2. Хамтран ажиллах боломж

- олон хүн зэрэг код бичих
- conflict шийдэх

---

### 3. Pull Request / Merge Request

👉 Кодоо merge хийхээс өмнө шалгуулна

- GitHub → Pull Request
- GitLab → Merge Request

---

### 4. CI/CD (automation)

👉 Код push хийхэд:

- build хийх
- test хийх
- deploy хийх

---

## 🔗 Жишээ ойлголт

Чи ганцаараа ажиллаж байна:

- Git → хангалттай

Чи багтай ажиллаж байна:

- Git + GitHub/GitLab → заавал хэрэгтэй

---

# 🧠 Маш чухал ялгаа

👉 Git ≠ GitHub

- Git → систем
- GitHub → үйлчилгээ

Жишээ:

👉 Photoshop (tool)
👉 Google Drive (storage)

---

# 🔥 Чамд яг хэрэгтэй mental model

Git-г ингэж ойлго:

> “Time machine + backup system + collaboration system”

---

# ⚡ Дараагийн алхам (чамд яг тохирно)

Чи одоо дараах 3-г ойлговол Git 70% ойлголоо гэсэн үг:

1. `git init` → repo үүсгэх
2. `git add` → өөрчлөлт бэлдэх
3. `git commit` → version хадгалах

---

Одоо яг **Git-ийн зүрх** дээр ирлээ 🔥
Энэ 3-г ойлгочихвол чи Git-г үнэхээр ашиглаж эхэлнэ.

---

# 🧠 Том зураг (эхлээд ойлго)

Git дотор **3 үе шат** байдаг:

```
Working Directory → Staging Area → Repository
```

👉 Чиний файл явж явж **commit** болж хадгалагддаг

---

# 1️⃣ `git init` → Repo үүсгэх

## 📌 Юу хийдэг вэ?

👉 Тухайн folder-ийг “Git project” болгодог

---

## 🧠 Энгийнээр:

> “Энэ folder-оос эхлээд бүх өөрчлөлтийг tracking хийе”

---

## 💻 Жишээ:

```bash
git init
```

👉 Дотроо `.git` гэдэг hidden folder үүснэ

---

## ⚡ Чухал ойлголт

👉 Энэ `.git` = бүх түүх хадгалагддаг газар

---

# 2️⃣ `git add` → Өөрчлөлт бэлдэх (Stage хийх)

## 📌 Юу хийдэг вэ?

👉 Commit хийх гэж байгаа файлуудаа **сонгож бэлдэнэ**

---

## 🧠 Энгийнээр:

> “Эдгээр өөрчлөлтүүдийг дараагийн save-д оруулъя”

---

## 💻 Жишээ:

```bash
git add index.js
```

эсвэл:

```bash
git add .
```

👉 `.` = бүх файлыг нэмнэ

---

## ⚠️ Яагаад add гэж тусдаа command байдаг вэ?

👉 Учир нь:

- Чи бүх өөрчлөлтийг commit хийх албагүй
- Заримыг нь түр хүлээлгэж болно

---

## 🎯 Жишээ:

- login.js → бэлэн ✔
- navbar.js → дуусаагүй ❌

```bash
git add login.js
```

👉 Зөвхөн login commit болно

---

# 3️⃣ `git commit` → Version хадгалах

## 📌 Юу хийдэг вэ?

👉 Stage хийсэн файлуудыг **final version** болгож хадгална

---

## 🧠 Энгийнээр:

> “Энэ бол нэг snapshot (хадгалсан төлөв)”

---

## 💻 Жишээ:

```bash
git commit -m "Added login feature"
```

---

## 📦 Үр дүн:

👉 Git дотор:

- commit ID
- message
- тухайн үеийн бүх код

хадгалагдана

---

# 🔁 Бүх flow-г нэгтгээд

## 💻 Жишээ workflow:

```bash
git init
```

```bash
git add .
```

```bash
git commit -m "First commit"
```

---

## 🧠 Дотор нь юу болж байна вэ?

1. `init` → Git асаалаа
2. `add` → ямар файлууд орохыг хэллээ
3. `commit` → snapshot хадгаллаа

---

# 🔥 Маш чухал analogy

👉 Git-г camera гэж бод

- `git add` → ямар зүйл frame-д орохыг сонгох 📸
- `git commit` → зураг авах 🧠
- `git init` → camera асаах

---

# ⚠️ Шинэ хүмүүсийн common алдаа

## ❌ Шууд commit хийх гэж оролдох

```bash
git commit -m "..."
```

👉 add хийгээгүй бол:
→ юу ч commit болохгүй

---

# 🧠 Чамд яг хэрэгтэй ойлголт

👉 Git = автоматаар хадгалдаг system биш
👉 Чи өөрөө control хийдэг system

---

# ⚡ Мини challenge (маш жижиг)

Компьютер дээрээ:

1. Folder үүсгэ
2. Дотор нь file.txt үүсгэ
3. Доорхыг хий:

```bash
git init
git add .
git commit -m "first commit"
```

---

Хэрвээ хүсвэл дараагийн алхам дээр:

👉 `git status`, `git log`, `git diff`
👉 эсвэл GitHub руу холбох (push)

гэж яг real developer workflow руу оръё 🔥
