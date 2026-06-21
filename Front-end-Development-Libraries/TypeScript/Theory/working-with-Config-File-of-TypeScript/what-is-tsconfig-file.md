# tsconfig File гэж юу вэ, мөн яагаад үүнийг TypeScript төслүүддээ оруулах нь чухал вэ?

TypeScript-ийн _compiler settings_-ийг таны төслийн хэрэгцээнд нийцүүлэн тохируулж болдог. Тэр _configuration_ нь таны төслийн _root directory_ дотор байрлах _tsconfig.json file_-д хадгалагддаг. Үнэндээ энэ file байхгүй бол compiler ажиллахгүй бөгөөд та _command flag_-уудыг шууд дамжуулах шаардлагатай болно. Гэхдээ энэ file яг юу хийдэг вэ? За тэгвэл жишээ file авч үзье:

```json id="n8y4sq"
{
  "compilerOptions": {
    "rootDir": "./src",
    "outDir": "./prod",
    "lib": ["ES2023"],
    "target": "ES2023",
    "module": "ES2022",
    "moduleResolution": "Node",
    "esModuleInterop": true,
    "skipLibCheck": true,
    "strict": true
  },
  "exclude": ["test/"]
}
```

Энэ их зүйл шиг харагдаж байна! Тиймээс үүнийг хэсэгчлэн задлая. `compilerOptions property` нь таны configuration-ийн “үндсэн хэсэг” (meat)-ийг агуулна — энд та TypeScript compiler хэрхэн ажиллахыг удирддаг. Тэр nested object-ийг харвал…

`rootDir болон outDir` нь TypeScript-д аль _directory source file_-уудыг агуулж байгаа болон аль directory _transpile_ хийгдсэн JavaScript code-ийг агуулж байх ёстойг хэлдэг.

`lib property` нь compiler ямар _type definition_-ууд ашиглахыг тодорхойлдог бөгөөд тодорхой ES release, DOM болон бусад зүйлсийн support-ийг оруулах боломж олгодог.

`module` болон `moduleResolution` нь таны package module-уудыг хэрхэн ашиглахыг удирдахын тулд хамтран ажилладаг — _CommonJS_ эсвэл ECMAScript-ийн аль нэгийг ашиглах байдлаар.

`esModuleInterop`нь import-уудад _namespace object_-уудыг автоматаар үүсгэснээр _CommonJS_ болон _ES module_-уудын хооронд илүү жигд _interoperability_ хангадаг. Ингэснээр өөр өөр system-ийн module-уудыг TypeScript төслүүд дээрээ хамтад нь ашиглахад илүү хялбар болдог. Харин `skipLibCheck` option нь таны код дахь import-уудаар reference хийгдээгүй .d.ts file-уудыг validate хийхийг алгасдаг.

Эцэст нь `strict mode` дээр ирлээ. Зарим хүмүүс энэ flag-ийг идэвхжүүлээгүй бол TypeScript үнэхээр хэрэгтэй биш гэж маргаж магадгүй. Учир нь энэ нь _nullable type_-уудыг зөв handle хийхийг шаардах, эсвэл TypeScript _type infer_ хийж чадахгүй _any_ руу fallback хийх үед warning өгөх зэрэг олон check-ийг идэвхжүүлдэг.

Дуусахаасаа өмнө top-level `exclude property`-ийн талаар товч дурдъя — source directory тодорхойлсны дараа та production code-ийн нэг хэсэг болгон compile хийхийг хүсэхгүй байгаа source directory-оос гаднах TypeScript code-той байж болно. Жишээлбэл, test code. exclude array нь compiler-д compilation хийх үед эдгээр TypeScript file-уудыг ignore хийхийг хэлдэг. Гэхдээ Intellisense зэрэг tooling-ууд potential issue-уудыг харуулах боломжтой хэвээр байна.

Судалж үзэж болох өөр маш олон compiler option-ууд бий — 50-аас ч их! Би таныг documentation-ийг судалж, төслийн хэрэгцээнд тохирох configuration-ийг олохын тулд туршилт хийж үзэхийг зөвлөж байна.
