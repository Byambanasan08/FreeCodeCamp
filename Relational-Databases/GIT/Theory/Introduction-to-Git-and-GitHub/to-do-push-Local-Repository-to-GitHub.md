# GitHub руу Local Repository-ийг хэрхэн Push хийх вэ?

Өмнөх хичээлд та GitHub дээр шинэ repository үүсгэхийг сурсан. Харин хэрвээ таны компьютерт (local) аль хэдийн байгаа project-ийг GitHub-д нэмэхийг хүсвэл яах вэ? Энэ хичээлээр та одоо байгаа local repository-уудыг GitHub руу хэрхэн push хийх болон remote repository-уудаас өөрчлөлтүүдийг хэрхэн татах (pull) талаар сурах болно.

Эхлээд GitHub дээр ямар ч файлгүй шинэ repository үүсгэнэ үү. Зөв хийсэн бол таны repository-г clone хийхэд хэрэгтэй URL бүхий хуудас руу redirect хийгдэх ёстой.

Одоо terminal руугаа орж, GitHub-д нэмэхийг хүсэж буй existing project-оо сонгоно уу. Энэ хичээлд би super-awesome-game нэртэй local project-ийг дараах файлуудтайгаар сонгож байна:

jessicawilkins super-awesome-game >> ls
README.md index.html script.js styles.css

Энэ project дээр Git ашиглан version control (хувилбар удирдлага)-ийг тохируулахын тулд project-ийн directory дотор git init командыг ажиллуулах хэрэгтэй. Энэ нь хоосон Git repository-г initialize (эхлүүлэх) хийж, Git энэ project-ийн өөрчлөлтүүдийг track (хянах) хийж эхлэх боломжийг олгоно. Зөв хийсэн бол terminal дээр дараахтай төстэй output харагдана:

jessicawilkins super-awesome-game >> git init
Initialized empty Git repository in /Users/jessicawilkins/workspace/freeCodeCamp/super-awesome-game/.git/

Та project дээр хоосон Git repository initialize хийх үед .git нэртэй шинэ hidden (нуугдмал) directory нэмэгдэнэ. Энэ directory нэмэгдсэнийг харахын тулд бүх файлууд болон directory-уудыг (hidden файлуудыг оролцуулан) жагсаадаг ls -a командыг ажиллуулж болно:

jessicawilkins super-awesome-game >> ls -a
. .. .git README.md index.html script.js styles.css

Тэр .git directory-г устгахгүй байх нь маш чухал, эс тэгвээс таны бүх Git history (түүх) алга болно.

Одоо хоосон Git repository initialize хийгдсэн тул git status командыг ажиллуулж болно. Энэ команд нь таны working directory-ийн одоогийн төлөвийг харуулахад ашиглагддаг — та workflow (ажлын явц)-доо энэ командыг маш их ашиглах болно. Та дараахтай төстэй output харах ёстой:

jessicawilkins super-awesome-game >> git status
On branch main

No commits yet

Untracked files:
(use "git add <file>..." to include in what will be committed)
README.md
index.html
script.js
styles.css

nothing added to commit but untracked files present (use "git add" to track)

On branch main гэдэг нь та main branch дээр байгааг илэрхийлнэ. Git дээр branch гэдэг нь өөрчлөлт хийх боломжтой тусдаа workspace (ажлын орчин) юм. Main branch нь бодит амьдралын application-д ихэвчлэн үндсэн (primary) эсвэл production branch-ийг илэрхийлдэг. Developer багууд шинэ feature болон bug засвар хийхийн тулд олон branch үүсгээд, дараа нь тэдгээр өөрчлөлтүүдийг main branch руу merge (нэгтгэх) хийдэг. Та энэ процессын талаар дараагийн хичээлүүдэд илүү дэлгэрэнгүй сурах болно.

Untracked files гэдэг нь Git одоогоор track (хянаж) хийгээгүй файлууд байгааг илрүүлсэн гэсэн үг.

Файл нь дараах таван төлөвт байж болно:

```
"Untracked": Энэ нь тухайн файл repository-д шинэ бөгөөд Git өмнө нь “хараагүй” гэсэн үг юм.
"Modified": Энэ файл өмнөх commit-д байсан боловч commit хийгдээгүй шинэ өөрчлөлтүүдтэй байна.
"Ignored": Та Git дээр ignored файлуудыг ихэвчлэн харахгүй байж магадгүй, гэхдээ таны IDE тэдэнд зориулсан indicator (тэмдэглэгээ) харуулж болно. Ignored файлууд нь Git-ийн үйлдлүүдээс хасагддаг бөгөөд ихэвчлэн .gitignore файлд багтсан байдаг.
"Deleted": Deleted файл нь untracked файлын эсрэг ойлголт — өмнө нь байсан боловч устгагдсан файл юм.
"Renamed": Renamed файл гэдэг нь доторх агуулга өөрчлөгдөөгүй боловч файлын нэр эсвэл байршил өөрчлөгдсөн файлыг хэлнэ. Зарим тохиолдолд файл бага зэрэг өөрчлөлттэй байсан ч renamed гэж тооцогдож болно.
```

Хэрвээ таны repository-д commit хийгдээгүй өөрчлөлтүүд байвал эхлээд тэдгээрийг "stage" хийх хэрэгтэй. "Staging area" (stage хийх хэсэг) гэдэг нь таны .git directory доторх тусгай файл бөгөөд дараагийн commit-д орох мэдээллийг агуулдаг. Commit гэдэг нь үндсэндээ таны repository-ийн одоогийн төлөвийн snapshot (зураглал) юм.

[ Хэрвээ та нэг удаад нэг файл stage хийхийг хүсвэл дараах командыг ашиглаж болно:

git add name-of-file

Хэрвээ та stage хийгдээгүй бүх өөрчлөлтүүдийг stage хийхийг хүсвэл git add . командыг ашиглаж болно. Цэг (.) нь таны одоогийн байгаа directory-г илэрхийлэх alias юм. Зарим хөгжүүлэгчид git add . ашиглахыг анхааруулдаг, учир нь та өөрийн хүсээгүй файлуудыг санамсаргүйгээр stage хийж болзошгүй. Хэрвээ тийм зүйл тохиолдвол дараах командыг ашиглан тэдгээрийг "unstage" хийж болно:

git reset name-of-file

Ерөнхийдөө, та файлуудыг stage хийхээсээ өмнө git status командыг ашиглан ямар файлууд нэмэгдэж байгааг хянаж байвал асуудалгүй байх ёстой.

Та файлуудаа stage хийсний дараа commit хийх шаардлагатай болно. Та өөрчлөлтүүдээ git commit командыг ажиллуулж commit хийж болно. Энэ нь Git configuration-д тохируулсан таны сонгосон editor (засварлагч)-ийг нээнэ. Editor нээгдсэний дараа та өөрчлөлтийнхөө талаар дэлгэрэнгүй message бичиж болно. Мөн та git commit -m командыг ашиглан богино message өгөх боломжтой:

git commit -m "short message goes here"

Хэрвээ та -m flag ашиглах гэж байгаа бол өөрчлөлтийнхөө утга агуулгыг илэрхийлэх тодорхой message бичих хэрэгтэй. Дараах нь ашиглаж болох сайн message-үүдийн жишээнүүд юм:

git commit -m "feat(api): implement JWT-based authentication"
git commit -m "fix(auth): correct token expiration time"
git commit -m "refactor: simplify login flow logic"

feat(api) болон fix(auth) нь Conventional Commits style-ийг дагаж байгаа бөгөөд энэ нь тухайн commit-д орсон өөрчлөлтийн төрлийг ойлгуулахад ашиглагддаг.

Та ажлаа commit хийсний дараа git status командыг дахин ажиллуулахад terminal дээр дараах output харагдах ёстой:

On branch main
nothing to commit, working tree clean

Энэ project-ийн өмнөх бүх commit-уудыг харахын тулд git log командыг ажиллуулж болно. Энэ нь өмнөх бүх commit-уудыг author, commit хийсэн огноо, commit message, commit hash зэрэг хэрэгтэй мэдээллүүдтэйгээр жагсаана. Commit hash нь тухайн commit-ийг ялгаж танихад ашиглагддаг урт string (тэмдэгт мөр) юм.

Та ажлаа commit хийж дууссаны дараа одоо өөрчлөлтүүдээ GitHub руу push хийж болно. Эхлээд remote repo-той холболтыг тохируулах хэрэгтэй. Та үүнийг өмнөх хичээлд сурсан, гэхдээ SSH ашигласан сануулгыг энд өгье:

git remote add origin mailto:git@github.com:your-github-username/name-of-repo.git

Сүүлийн алхам нь дараах командыг ашиглан өөрчлөлтүүдээ GitHub руу push хийх юм:

git push -u origin main

-u flag нь --set-upstream гэсэн товчлол юм. Энэ нь таны local main branch-ийг origin дээрх remote main branch-тэй холбодог. Та үүнийг шинэ branch бүр дээр нэг удаа л ашиглахад хангалттай. Үүний дараа та зүгээр л git push командыг branch нэр заахгүйгээр ажиллуулж болно.

Зөв хийсэн тохиолдолд terminal дээр дараахтай төстэй үр дүн харагдана:

Enumerating objects: 3, done.
Counting objects: 100% (3/3), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 253 bytes | 253.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
To https://github.com/jdwilkin4/super-awesome-game.git

- [new branch] main -> main
  branch 'main' set up to track 'origin/main'.

Та мөн хуудсаа refresh хийхэд GitHub дээрх repo хуудсан дээр шинэ өөрчлөлтүүдийг харах ёстой.

Хэрвээ та бусад хүмүүстэй хамт project дээр ажиллаж байгаа бөгөөд repository-оос шинэ өөрчлөлтүүдийг татах шаардлагатай бол git pull командыг ашиглаж болно. Та багийн ажил болон хамтын ажиллагааны талаар дараагийн хичээлүүдэд илүү дэлгэрэнгүй сурах болно. ]
