# Git-ийг хэрхэн суулгаж, тохируулах вэ?

Та version control болон GitHub зэрэг сайтуудыг бүрэн ашиглаж эхлэхийн өмнө, Git-ийг суулгаж, ашиглахад бэлэн болгох хэрэгтэй.

Таны компьютерт Git аль хэдийн суусан эсэхийг шалгахын тулд terminal дээр дараах командыг ажиллуулж болно:

git --version

Хэрвээ version дугаар харагдвал Git суусан байна гэсэн үг. Хэрвээ харагдахгүй бол та суулгах шаардлагатай.

Linux системүүдийн хувьд, Git нь ихэнх distro-ууд дээр урьдчилан суусан байдаг. Хэрвээ таны системд Git суусан байхгүй бол sudo apt-get install git эсвэл sudo pacman -S git зэрэг package manager командуудыг ашиглан суулгаж болно.

Mac хэрэглэгчдийн хувьд, Homebrew ашиглан brew install git командаар суулгаж болно, эсвэл Git-ийн вэбсайтаас executable installer татаж авч болно.

Windows-ийн хувьд, Git-ийн вэбсайтаас executable installer татаж авч болно. Эсвэл хэрвээ та Chocolatey тохируулсан бол PowerShell дээр choco install git.install командыг ажиллуулж болно. Мөн Windows дээр Unix-тэй төстэй shell орчин ашиглахын тулд GitBash-ийг татаж авахыг хүсэж магадгүй.

Суулгалт амжилттай болсон эсэхийг шалгахын тулд terminal дээр дахин git --version командыг ажиллуулна.

Git суулгасны дараа, та configuration дээр хэд хэдэн өөрчлөлт хийх хэрэгтэй болно. Эдгээр өөрчлөлтүүдийг ихэвчлэн нэг удаа хийхэд хангалттай бөгөөд upgrade хийх бүрт дахин хийх шаардлагагүй.

git config командыг ашиглан Git таны систем дээр хэрхэн ажиллахыг тодорхойлох configuration хувьсагчдыг (variables) тохируулдаг. Одоогийн тохиргоонууд болон тэдгээр нь хаана хадгалагдаж байгааг харахын тулд дараах командыг ажиллуулж болно:

git config --list --show-origin

Хэрвээ та Git-ийг анх удаа суулгасан бол одоогоор зөвхөн system-level configuration-ууд харагдах ёстой. Харин өмнө нь суулгасан бол user name болон email зэрэг user configuration-ууд харагдаж магадгүй.

User name тохируулахын тулд дараах командыг ажиллуулна:

git config --global user.name "Jane Doe"

Энд --global flag нь таны систем дээрх Git ашигладаг бүх project-д user name-ийг тохируулж байна гэсэн үг. Хэрвээ та тодорхой project-д өөр user name ашиглахыг хүсвэл тухайн project-ийн directory дотор --global flag-гүйгээр командыг ажиллуулж болно.

User email тохируулахын тулд дараах командыг ажиллуулна:

git config --global user.email mailto:janedoe@example.com

User name болон email тохируулах нь чухал бөгөөд Git таны хийсэн commit бүр дээр энэ мэдээллийг ашигладаг. Commit-ийн талаар та дараагийн хичээл дээр илүү дэлгэрэнгүй сурах болно.

Мөн та Git-д ашиглах preferred editor-оо тохируулж болно. Жишээлбэл, Emacs-ийг editor болгон тохируулах:

git config --global core.editor emacs

Бусад сонголтууд нь Vim, Nano, VS Code гэх мэт. Жишээлбэл, хэрвээ та Visual Studio Code ашиглаж байгаа бол дараах байдлаар тохируулж болно:

git config --global core.editor "code --wait"

Хэрвээ та preferred editor тохируулахгүй бол Git таны системийн default editor-ийг ашиглана.

Хэрвээ та Windows ашиглаж байгаа бөгөөд editor-оо өөрчлөхийг хүсвэл executable файлын бүтэн замыг зааж өгөх хэрэгтэй, жишээ нь:

git config --global core.editor "'C:/Program Files/Notepad++/notepad++.exe' -multiInst -notabbar -nosession -noPlugin"

Өөрийн configuration-уудын жагсаалтыг харахын тулд дараах командыг ажиллуулж болно:

git config --list

Одоо та Git-ийг суулгаж, тохируулсан тул өөрийн project-ууд дээр version control ашиглаж эхлэхэд бэлэн боллоо.
