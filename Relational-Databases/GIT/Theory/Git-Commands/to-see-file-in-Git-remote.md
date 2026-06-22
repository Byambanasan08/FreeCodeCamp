Тийм, хэдэн янзын команд байгаа. Чи яг **юу харахыг** хүсэж байгаагаас шалтгаалан өөр өөр хариулт байна. Хамгийн ашигтай хувилбаруудыг алхамчлая.

## 1. Бүх commit-ын түүх + файлын өөрчлөлтүүдтэй

```bash
git log --stat
```

Энэ нь хамгийн өргөн хэрэглэгддэг. Гарах үр дүн:

```
commit a3f5b2c... (HEAD -> main, origin/main)
Author: Bat <bat@example.com>
Date:   Mon Apr 21 10:30:00 2026

    Add user authentication

 src/auth/login.ts   | 45 +++++++++++++
 src/auth/types.ts   | 12 ++++
 package.json        |  3 +-
 3 files changed, 58 insertions(+), 2 deletions(-)
```

Commit бүрд **ямар файл өөрчлөгдсөн, хэдэн мөр нэмэгдэж/устсан** -ыг харна.

---

## 2. Зөвхөн файлын нэрсийг харах (товч)

```bash
git log --name-only
```

Эсвэл бүр илүү цэвэрхэн:

```bash
git log --name-only --pretty=format:"%h %s"
```

Үр дүн:

```
a3f5b2c Add user authentication
src/auth/login.ts
src/auth/types.ts
package.json

7d2e1f8 Fix navbar bug
src/components/Navbar.tsx
```

---

## 3. Тодорхой нэг commit-ын өөрчлөлтийг харах

Commit hash-аар:

```bash
git show a3f5b2c
```

Эсвэл зөвхөн файлын нэрс:

```bash
git show --name-only a3f5b2c
```

---

## 4. Remote дээр байгаа бүх файлыг (одоогийн төлөв) харах

Хэрэв чи "remote дээр **одоо ямар файл бий вэ**" гэж асууж байгаа бол (commit-ын түүх биш):

```bash
git ls-tree -r HEAD --name-only
```

Энэ нь одоогийн branch-д байгаа **бүх tracked файлуудыг** жагсаалтаар гаргана. Remote-той synced бол remote-ын төлөв ч мөн адил.

Зөвхөн remote branch харах бол:

```bash
git fetch
git ls-tree -r origin/main --name-only
```

---

## 5. Хоёр commit хооронд ямар файл өөрчлөгдсөнийг харах

```bash
git diff --name-only <commit1> <commit2>
```

Жишээ нь нэг өдрийн өмнөхөөс одоог хүртэл:

```bash
git diff --name-only HEAD~5 HEAD
```

(`HEAD~5` нь "5 commit-ын өмнө")

---

## 6. Local болон remote-ын зөрүүг харах

Чиний local дээр байгаа ч remote-руу push хийгдээгүй commit-уудыг харах:

```bash
git log origin/main..HEAD --name-only
```

Эсрэгээр, remote-д байгаа ч local-д байхгүй commit-уудыг:

```bash
git fetch
git log HEAD..origin/main --name-only
```

---

## 7. Хамгийн visual арга — GitHub/GitLab дээр

Хэрэв remote чинь GitHub бол browser-аас шууд харж болно:

- **Бүх commit:** `https://github.com/<username>/<repo>/commits/main`
- **Commit бүр** дээр дарвал ямар файлд ямар өөрчлөлт орсон харагдана.
- **Файлын түүх:** GitHub дээр файл руу ороод "History" товчийг дарна.

Browser-аар харах нь жижиг өөрчлөлтүүдийг хурдан skim хийхэд тохиромжтой.

---

## Practical хүснэгт

| Хэрэгцээ                             | Команд                                  |
| ------------------------------------ | --------------------------------------- |
| Бүх commit + файлын өөрчлөлтийн товч | `git log --stat`                        |
| Бүх commit + зөвхөн файлын нэрс      | `git log --name-only`                   |
| Тодорхой commit-ын өөрчлөлт          | `git show <hash>`                       |
| Repo-д одоо ямар файл байна          | `git ls-tree -r HEAD --name-only`       |
| Хоёр commit-ын зөрүү                 | `git diff --name-only A B`              |
| Local-д бий, remote-д алга           | `git log origin/main..HEAD --name-only` |
| Remote-д бий, local-д алга           | `git log HEAD..origin/main --name-only` |

---

## Зөвлөгөөнүүд

**Pretty format** хэрэглэхэд илүү уншигдахуйц болно:

```bash
git log --oneline --stat
```

Энэ нь commit бүрийг нэг мөрөөр хураангуйлаад файлын өөрчлөлтийг харуулна.

**Сүүлийн N commit-ыг л харах:**

```bash
git log --stat -5
```

**Тодорхой файлын commit түүхийг харах:**

```bash
git log --follow src/auth/login.ts
```

**Тодорхой author-ийн commit:**

```bash
git log --author="Bat" --name-only
```

---

## Богино хариулт

Хамгийн түгээмэл нь: `git log --stat` (commit бүрд ямар файл өөрчлөгдсөн харах) эсвэл `git log --name-only` (зөвхөн файлын нэрс).

Хэрэв "remote дээр одоо ямар файл бий вэ" гэж асууж байгаа бол: `git ls-tree -r HEAD --name-only`.

Аль нь чиний хэрэгцээнд тохирох нь чиний зорилгоос шалтгаална. "Түүхэн бүх commit-ын файлыг харах" уу, "одоогийн репозиторид байгаа файлыг харах" уу — хоёр өөр асуулт.

# remember

Энэ бол нийтлэг асуудал. Тайлбар:

**`.gitignore` зөвхөн tracked биш файлуудад л нөлөөлдөг.**

`next-env.d.ts` файл `.gitignore`-д байгаа ч **аль хэдийн commit хийгдсэн тул** git үүнийг үргэлжлүүлэн track хийж байна. `.gitignore` нь аль хэдийн tracked файлыг "мартдаггүй".

Засах арга:

```bash
git rm --cached next-env.d.ts
git commit -m "chore: untrack next-env.d.ts"
```

- `--cached` flag нь **local файлыг устгахгүй**, зөвхөн git-ийн tracking-с хасна
- Үүний дараа `.gitignore` ажиллаж, цаашид тэр файлыг track хийхгүй
