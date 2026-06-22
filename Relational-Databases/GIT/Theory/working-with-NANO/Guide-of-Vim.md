# Vim Quick Guide

## 1. Vim нээх

Хоосон editor:

```bash id="7u42mf"
vim
```

Файл нээх:

```bash id="b0a9cw"
vim test.txt
```

---

# 2. Vim-ийн хамгийн чухал ойлголт — MODE

Vim mode-оор ажилладаг.

| Mode               | Юу хийдэг         |
| ------------------ | ----------------- |
| Normal mode        | command өгнө      |
| Insert mode        | текст бичнэ       |
| Command mode (`:`) | save/quit гэх мэт |

---

# 3. Text бичих

Vim нээгдэнгүүт шууд typing хийж болдоггүй.

Insert mode руу орно:

```text
i
```

Доор:

```text
-- INSERT --
```

гарна.

Одоо текстээ бичиж болно.

---

# 4. Insert mode-оос гарах

```text
Esc
```

эсвэл:

```text
Ctrl + [
```

---

# 5. Save / Quit

## Save

```vim id="g6y6i7"
:w
```

## Save + Quit

```vim id="0f6d5n"
:wq
```

эсвэл:

```vim id="n2pk40"
ZZ
```

(`Shift+z` хоёр удаа)

## Quit

```vim id="d0y39o"
:q
```

## Force Quit (save хийхгүй)

```vim id="53lx1i"
:q!
```

---

# 6. Cursor хөдөлгөх

Arrow keys ашиглаж болно.

Vim style:

```text
h ←
j ↓
k ↑
l →
```

---

# 7. Delete

## Нэг character устгах

```text
x
```

## Нэг мөр устгах

```text
dd
```

## Undo

```text
u
```

## Redo

```text
Ctrl + r
```

---

# 8. Copy / Paste

## Нэг мөр copy

```text
yy
```

## Paste

```text
p
```

---

# 9. Search хийх

```vim id="nrxs3u"
/hello
```

Дараа нь:

- `n` → дараагийн match
- `Shift+n` → өмнөх match

---

# 10. Line руу үсрэх

## 20-р мөр рүү

```vim id="buvnkl"
:20
```

---

# 11. File explorer

Directory дотор:

```vim id="5g0b0m"
:Ex
```

---

# 12. Multiple file

```bash id="cuhj3d"
vim a.txt b.txt
```

Switch хийх:

```vim id="w0b55f"
:n
```

өмнөх файл:

```vim id="l6zhjp"
:prev
```

---

# 13. Useful shortcuts

| Command | Meaning                 |
| ------- | ----------------------- |
| `i`     | insert mode             |
| `a`     | cursor-ийн дараа insert |
| `o`     | шинэ мөр                |
| `Esc`   | normal mode             |
| `u`     | undo                    |
| `dd`    | line delete             |
| `yy`    | line copy               |
| `p`     | paste                   |
| `/text` | search                  |
| `:w`    | save                    |
| `:q`    | quit                    |
| `:wq`   | save + quit             |
| `:q!`   | force quit              |

---

# 14. Beginner workflow

Хамгийн common flow:

```text
vim test.txt
i
(typing...)
Esc
:wq
```

---

# 15. Vim-ээс айх хэрэггүй 😄

Эхэндээ:

- “keyboard ажиллахгүй байна”
- “гарах арга олдохгүй байна”
- “typing хийж болохгүй байна”

гэдэг feeling бүгдэд нь төрдөг 😄

Гол нь:

```text
i → бичих
Esc → command mode
:wq → save quit
:q! → force quit
```

энэ 4-ийг сурчихвал Vim ашиглаж эхэлнэ.
