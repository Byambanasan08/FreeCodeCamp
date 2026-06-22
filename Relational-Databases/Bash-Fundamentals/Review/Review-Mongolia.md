# Bash Командуудын Тойм

# 1. Terminal, Shell, болон Command Line-ийн Үндэс

```
Command line: Хэрэглэгч командуудыг бичдэг текст интерфэйс.
Terminal: Command line-д хандах боломж олгодог application.
Terminal emulator: Terminal-д нэмэлт боломжууд нэмдэг.
Shell: Terminal-д оруулсан командуудыг тайлбарлаж (interpret) гүйцэтгэдэг (жишээ нь Bash).
PowerShell / Command Prompt / Microsoft Terminal: Windows дээр command line-д хандах сонголтууд.
Terminal (macOS): macOS дээрх built-in сонголт, мөн iTerm эсвэл Ghostty зэрэг third-party хувилбаруудтай.
Terminal (Linux): Distribution-оос хамааран өөр өөр, мөн kitty зэрэг олон third-party emulator-ууд байдаг.
Нэр томьёо: "terminal," "shell," болон "command line" нь ихэвчлэн харилцан орлуулж хэрэглэгддэг ч тус бүрдээ тодорхой утгатай.
```

# 2. Command Line Shortcut-ууд

```
Up/Down arrows: Command history дотор өмнөх/дараагийн командууд руу шилжих.
Tab: Командуудыг автоматаар гүйцээх (autocomplete).
Control+L (Linux/macOS) эсвэл cls бичих (Windows): Terminal-ийн дэлгэцийг цэвэрлэх.
Control+C: Ажиллаж буй командыг таслах (interrupt) (PowerShell дээр текст сонгогдсон үед хуулбарлахад мөн ашиглагдана).
Control+Z (зөвхөн Linux/macOS): Task-ийг background руу түр зогсоох; fg ашиглан буцааж үргэлжлүүлнэ.
!!: Хамгийн сүүлд ажиллуулсан командыг шууд дахин ажиллуулах.
```

# 3. Bash Үндэс

```
Bash (Bourne Again Shell): Unix-like shell-уудын дунд өргөн хэрэглэгддэг.
Гол командууд:
    pwd: Одоогийн directory-г харуулах.
    cd: Directory солих.
        .. нь parent directory-г (нэг түвшин дээш) илэрхийлнэ.
        . нь одоогийн directory-г илэрхийлнэ.
    ls: Файл болон folder-уудыг жагсаах.
        -a: Бүх файлуудыг, hidden file-уудыг оролцуулан харуулах.
        -l: Файлуудын дэлгэрэнгүй мэдээллийг харуулах.
    less: Файлын агуулгыг нэг хуудсаар харж, navigation хийх боломжтой (backward scroll болон хайлт орно).
    more: Файлын агуулгыг нэг дэлгэцээр харуулдаг, backward scroll хязгаарлагдмал, navigation энгийн.
    cat: Файлын бүх агуулгыг нэг дор харуулдаг, scroll болон navigation байхгүй, жижиг файлуудад тохиромжтой.
    mkdir: Шинэ directory үүсгэх.
    rmdir: Хоосон directory устгах.
    touch: Шинэ файл үүсгэх.
    mv: Файл зөөх эсвэл нэр өөрчлөх.
        Rename: mv oldname.txt newname.txt
        Move: mv filename.txt /path/to/target/
    cp: Файл хуулбарлах.
        -r: Directory болон түүний бүх агуулгыг recursive байдлаар хуулбарлах.
    rm: Файл устгах.
        -r: Directory болон түүний бүх агуулгыг recursive байдлаар устгах.
    echo: Текст мөр эсвэл хувьсагчийн утгыг харуулах.
        > ашиглан файл дахь агуулгыг overwrite хийх. (жишээ нь, echo "text" > file.txt)
        >> ашиглан файлд шинэ текст нэмэх (append) бөгөөд өмнөх агуулгыг устгахгүй (жишээ нь, echo "text" >> file.txt).
    exit: Terminal session-оос гарах.
    clear: Terminal-ийн дэлгэцийг цэвэрлэх.
    find: Файл болон directory хайх.
        -name: Нэрийн pattern-ээр файл хайх (жишээ нь, find . -name "*.txt").
    man командыг командын дараа ашиглан (жишээ нь, man ls) дэлгэрэнгүй manual/help хуудсыг харах боломжтой.
```

# 4. Command Options болон Flags

```
Options эсвэл flags: Командын үйлдлийг өөрчилдөг бөгөөд ихэвчлэн зураасаар (-) эхэлдэг:
    Long form (хоёр зураас):
        Жишээ: --help, --version
        Value нь тэнцүүгийн тэмдэг (=)-ээр холбогддог, жишээ нь --width=50.
    Short form (нэг зураас):
        Жишээ: -a, -l
        Value нь зайгаар тусгаарлагддаг, жишээ нь -w 50.
        Олон short option-уудыг нийлүүлж (chain) ашиглаж болно, жишээ нь ls -alh.
--help: Та ямар ч командыг энэ flag-тэй ашиглаж тухайн командын боломжит option-уудыг ойлгож болно.
```
