# CI/CD гэж юу вэ, мөн CI нь GitHub Actions-тэй хэрхэн ажилладаг вэ?

CI нь Continuous Integration гэсэн утгатай бөгөөд CD нь Continuous Delivery эсвэл Continuous Deployment гэсэн утгатай. Эдгээр процессууд нийлээд, таны аппликейшнд хийсэн өөрчлөлтүүд ажиллаж байгаа эсэхийг баталгаажуулсны дараа автоматаар deploy хийх боломжийг олгодог.

CI pipeline-д та өөрийн код дээр linter болон тестүүдийг ажиллуулж болно. CI pipeline-ууд ихэвчлэн pull request дээр ажилладаг бөгөөд ингэснээр хийсэн өөрчлөлтүүд аппликейшныг эвдэж байгаа эсэхийг шалгана, мөн main branch дээр ч ажиллаж, deploy хийхэд бэлэн эсэхийг баталгаажуулдаг.

CD pipeline нь мөн pull request дээр ажиллаж болно, хэрвээ та preview environment тохируулсан бол өөрчлөлтүүдийг шууд (live) харах боломжтой. Гэхдээ та үүнийг main branch дээр мөн ажиллуулж, хүлээн зөвшөөрөгдөж merge хийгдсэн өөрчлөлтүүдийг тасралтгүй deploy хийхэд ашиглана.

Гэхдээ эдгээр нь GitHub Actions-тэй яг яаж ажилладаг вэ? Юуны өмнө бид GitHub Actions гэж яг юу болохыг ойлгох хэрэгтэй. GitHub Actions нь ephemeral runners (түр зуурын компьютер гэж ойлгож болно) өгдөг бөгөөд энэ нь танд тодорхой командуудыг ажиллуулах боломж олгодог.

Actions нь YAML файл ашиглан тохируулагддаг. Та өөр өөр action-уудыг ажиллуулахын тулд олон файл ашиглаж болно. Жишээлбэл, та CI-д зориулсан нэг файл, CD-д зориулсан өөр файлтай байж болно.

Одоо нэг энгийн CI жишээг харцгаая:

name: Node.js CI
on:
push:
branches:

- main
  pull_request:
  branches:
- main

jobs:
lint:
name: Lint and Test
runs-on: ubuntu-latest

```
steps:
  - name: Checkout Source Files
    uses: actions/checkout@v4

  - name: Use Node.js v22
    uses: actions/setup-node@v4
    with:
      node-version: 22

  - name: Setup pnpm
    uses: pnpm/action-setup@v2
    with:
      version: 10

  - name: Install Dependencies
    run: pnpm install

  - name: Lint Source Files
    run: pnpm run lint

  - name: Verify Build
    run: pnpm run build

  - name: Run Tests
    run: pnpm run test
```

Энэ их зүйл байгаа тул хэсэг хэсгээр нь задлая. Эхний хэсгийг харвал:

name: Node.js CI
on:
push:
branches:

- main
  pull_request:
  branches:
- main

name нь action өөрийн нэрийг тодорхойлдог. Энэ нь PR-ийн status checks хэсэг зэрэг газруудад харагддаг. on property нь "workflow triggers" гэж нэрлэгддэг зүйлсийг тодорхойлдог — эдгээр нь таны action-ийг ажиллуулахад хүргэдэг үйл явдлууд юм.

Энэ жишээнд бид action-ийг main руу commit push хийгдэх үед, мөн pull request нь main-ийг target хийж байх үед ажиллуулж байна. Энэ нь CI нь хэн нэгэн pull request үүсгэх үед ажиллана, мөн бид үүнийг merge хийх үед дахин ажиллана гэсэн үг.

jobs хэсэг нь таны action яг юу хийхийг тодорхойлдог газар юм. lint: key нь тухайн job-ийн дотоод нэрийг тодорхойлдог дурын (arbitrary) key юм. name property нь энэ job-ийн гадаад нэрийг тодорхойлдог. Харин runs-on property нь таны action ямар орчинд ажиллахыг тодорхойлдог — энэ тохиолдолд бид Ubuntu-ийн хамгийн сүүлийн дэмжигдсэн хувилбар дээр ажиллуулж байна.

steps property нь жинхэнэ “ид шид” явагддаг хэсэг юм. Энэ блок нь таны action ямар алхмууд хийх ёстойг тодорхойлдог. Эхний блокийг харцгаая:

```
  - name: Checkout Source Files
    uses: actions/checkout@v4
```

Энэ алхам нь хоёр property-тэй: тухайн алхмын нэр (name), мөн uses property. Энэ uses property нь онцгой бөгөөд command ажиллуулахын оронд GitHub-оос public action татаж авч ажиллуулахыг action runner-д заадаг. actions/checkout action нь таны repository-г clone хийж, runner дотор тохируулж бэлдэх үүрэгтэй.

```
  - name: Use Node.js v22
    uses: actions/setup-node@v4
    with:
      node-version: 22

  - name: Setup pnpm
    uses: pnpm/action-setup@v2
    with:
      version: 10
```

Дараагийн хоёр блок мөн third-party action-уудыг ашиглаж байна. Эдгээр алхмууд нь Node болон pnpm package manager-ийг тохируулж өгдөг. Аль аль нь with key-тэй бөгөөд үүнийг ашиглан та third-party action-ууд руу аргументууд дамжуулж болно. Үүнийг function-д аргумент дамжуулж байгаатай адил гэж ойлгож болно.

Сүүлийн дөрвөн блок нь жинхэнэ гол үйлдлүүд явагддаг хэсэг юм.

```
  - name: Install Dependencies
    run: pnpm install

  - name: Lint Source Files
    run: pnpm run lint

  - name: Verify Build
    run: pnpm run build

  - name: Run Tests
    run: pnpm run test
```

Бидэнд Install Dependencies блок байгаа бөгөөд энэ нь npm package-уудыг суулгадаг. Lint Source Files блок нь linter-ийг ажиллуулна, Verify Build блок нь Typescript код compile хийгдэж чадаж байгаа эсэхийг баталгаажуулна, харин Run Tests блок нь unit test-уудыг ажиллуулна.

Action-уудын талаар мэдэх чухал зүйл бол, анхдагч (default) байдлаар эдгээр алхмуудын аль нэг нь амжилтгүй болбол, үлдсэн алхмуудыг алгасаж, бүх run нь failure гэж тэмдэглэгдэнэ.

Эдгээр action-уудыг ажиллуулахын тулд YAML файлуудаа хаана байрлуулах вэ? Тэдгээрийг GitHub таньж, ашиглахын тулд таны repository дотор .github/workflows гэсэн директорт байрлуулах хэрэгтэй.

Action-ууд хийж чадах маш олон нэмэлт зүйлс байдаг бөгөөд би танд documentation-ийг уншиж, freeCodeCamp repository зэрэг төслүүд дээрх existing action-уудыг судлахыг зөвлөж байна. Гэхдээ одоохондоо, та GitHub Actions болон CI/CD-ийн үндсэн ойлголтуудыг хангалттай сайн ойлгосон байх ёстой!
