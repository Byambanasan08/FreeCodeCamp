# Git Commit Editor Setup Guide

## 1. Одоогийн Git editor-оо шалгах

```bash id="7iq64d"
git config --global core.editor
```

---

# 2. VS Code-ийг default Git editor болгох

```bash id="dzq4p6"
git config --global core.editor "code --wait"
```

### Юу болдог вэ?

`git commit` хийхэд:

- тусдаа terminal editor нээгдэхгүй
- Visual Studio Code дотор commit message tab хэлбэрээр нээгдэнэ

---

# 3. Commit хийх workflow

```bash id="bgj0ko"
git add .
git commit
```

Тэгээд VS Code дотор:

```text id="6g8lkg"
COMMIT_EDITMSG
```

гэдэг tab нээгдэнэ.

Жишээ:

```text id="3qvg6d"
fix: navbar responsive issue
```

Дараа нь:

1. Save (`Ctrl + S`)
2. Tab close (`Ctrl + W`)

→ commit автоматаар хийгдэнэ.

---

# 4. VS Code дотор Vim style ашиглах

Хэрвээ Vim keyboard style хүсвэл:

Extensions → search:

```text id="s8bylx"
Vim
```

Install:

```text id="rw3xjl"
VSCodeVim
```

Одоо VS Code editor дотор:

- `i`
- `Esc`
- `dd`
- `yy`
- `:w`

гэх мэт Vim command ажиллана.

---

# 5. Terminal Vim editor болгох

```bash id="33i3r2"
git config --global core.editor "vim"
```

Тэгвэл:

```bash id="o71w8m"
git commit
```

хийхэд terminal дээр Vim нээгдэнэ.

---

# 6. External editor тохиргоо устгах

```bash id="k3oq33"
git config --global --unset core.editor
```

---

# 7. Дахин VS Code болгох

```bash id="9hdnll"
git config --global core.editor "code --wait"
```

---

# 8. Common problems

## `code: command not found`

VS Code PATH-д ороогүй байна.

VS Code дотор:

```text id="ayccvl"
Ctrl + Shift + P
```

Search:

```text id="n6zbux"
Shell Command: Install 'code' command in PATH
```

---

# 9. Recommended setup

Ихэнх developer-ууд:

- Editor → Visual Studio Code
- Vim motions → VSCodeVim extension

гэдэг setup ашигладаг.

Ингэвэл:

- GUI editor-ийн давуу талтай
- Vim keyboard speed-тэй
- terminal Vim-д гацахгүй 😄

---

# 10. Most useful commands

## VS Code editor setup

```bash id="d27nbe"
git config --global core.editor "code --wait"
```

## Vim editor setup

```bash id="4a9e7u"
git config --global core.editor "vim"
```

## Check current editor

```bash id="8x0bxy"
git config --global core.editor
```

## Remove config

```bash id="s0a9az"
git config --global --unset core.editor
```
