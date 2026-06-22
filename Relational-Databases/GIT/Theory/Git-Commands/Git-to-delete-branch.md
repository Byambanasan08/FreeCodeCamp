Маш зөв асуулт 👍 Git дээр local болон remote branch устгахдаа ялгаатай command ашигладаг.

---

## 🧹 1. Local branch устгах

### ✔️ Энгийн устгал (safe delete)

```bash
git branch -d branch_name
```

👉 Энэ нь:

- merge хийгдсэн branch-ийг л устгана
- merge хийгдээгүй бол **алдаа өгнө (аюулгүй)**

---

### ⚠️ Хүчээр устгах (force delete)

```bash
git branch -D branch_name
```

👉 Энэ нь:

- merge болоогүй байсан ч устгана
- ⚠️ commit-ууд алдагдаж магадгүй

---

## 🌐 2. Remote branch устгах

```bash
git push origin --delete branch_name
```

👉 Энэ нь:

- remote (`origin`) дээрх branch-ийг устгана

---

## 🔄 3. Local дээр remote branch-ийн үлдэгдэл цэвэрлэх

Remote устгасны дараа заримдаа local дээр “ghost” үлддэг:

```bash
git fetch -p
```

эсвэл

```bash
git remote prune origin
```

👉 Энэ нь:

- устсан remote branch-уудыг local-с цэвэрлэнэ

---

## 💡 Жишээ

```bash
git branch -d feat/rebase          # local устгах
git push origin --delete feat/rebase   # remote устгах
git fetch -p                       # цэвэрлэх
```

---

## ⚠️ Анхаарах зүйл

❗ Чи одоо байгаа branch-аа устгаж болохгүй
(жишээ: `feat/rebase` дээр байж байгаад тэрийг устгах)

👉 Тийм үед:

```bash
git checkout main
git branch -d feat/rebase
```

---

## 🧠 Товч дүгнэлт

| Төрөл         | Command                         |
| ------------- | ------------------------------- |
| Local (safe)  | `git branch -d name`            |
| Local (force) | `git branch -D name`            |
| Remote        | `git push origin --delete name` |
| Clean         | `git fetch -p`                  |

---
