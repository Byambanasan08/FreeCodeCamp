# End-to-End Testing гэж юу вэ?

End-to-end testing буюу товчоор E2E нь хэрэглэгчийн өнцгөөс (user's perspective) бодит амьдралын scenario-уудыг тестлэдэг. E2E тестийн жишээ scenario-уудад бүртгэл үүсгэх болон нэвтрэх процесс (registration and login), эсвэл e-commerce сайтын checkout процессыг тестлэх орно.

End-to-end testing хэрхэн ажилладгийг илүү сайн ойлгохын тулд freeCodeCamp codebase дахь бодит жишээг харцгаая. Энэ жишээнд Microsoft-аас хөгжүүлсэн түгээмэл end-to-end testing framework болох Playwright ашигласан.

freeCodeCamp codebase дотор donations, certifications, exams гэх мэт тестүүдийг агуулсан e2e нэртэй directory байдаг. Тэр directory дотор donate-page-donor.spec.ts файл байгаа бөгөөд энэ нь нэвтэрсэн (authenticated) donor supporter хуудасны тестүүдийг агуулдаг.

Эхний алхам бол аль хэдийн supporter болсон demo хэрэглэгчээр donation хуудас руу орох:

test.beforeEach(async ({ page }) => {
execSync("node ./tools/scripts/seed/seed-demo-user --set-true isDonating");
await page.goto("/donate");
});

Энэ файлд олон тест байгаа тул beforeEach hook нь тест бүрийн өмнө ажиллана.

Хэрэглэгч donation хуудсанд орсны дараа freeCodeCamp-ийг цаашид дэмжих талаар санал (suggestions) бүхий талархлын мессеж (thank you message) харагдана. Доорх нь donation хуудсан дээрх текстүүдийг шалгах зарим тестүүд:

test("should render the donate page correctly", async ({ page }) => {
await expect(
page.getByText("Thank you for your continued support")
).toBeVisible();

await expect(
page.getByText(
"Your contributions are crucial in creating resources that empower millions of people to learn new skills and support their families."
)
).toBeVisible();

...
});

Мөн donor нь menu bar дээр supporter холбоостой эсэхийг шалгах, мөн avatar-ийн эргэн тойронд supporter гэдгийг илтгэх тусгай border байгаа эсэхийг шалгах тестүүд байдаг:

test("The menu should have a supporters link", async ({ page }) => {
const menuButton = page.getByTestId("header-menu-button");
const menu = page.getByTestId("header-menu");

await expect(menuButton).toBeVisible();
await menuButton.click();

await expect(menu).toBeVisible();

await expect(page.getByRole("link", { name: "Supporters" })).toBeVisible();
});

test("The Avatar should have a special border for donors", async ({ page }) => {
const container = page.locator(".avatar-container");
await expect(container).toHaveClass("avatar-container gold-border");
});

Ийм төрлийн нарийвчилсан тестүүдийг ашигласнаар та аппликейшний test coverage-ийг зөвхөн unit test-ээс давуулан нэмэгдүүлэх боломжтой. End-to-end тестүүд нь мөн таны аппликейшн зөв ажиллаж, хэрэглэгчдэд урьдчилан таамаглах боломжтой (predictable) байгааг баталгаажуулдаг. End-to-end testing хэрэгслүүдийн жишээнд Cypress, Selenium, болон Puppeteer орно.

End-to-end testing чухал боловч өртөг өндөртэй (expensive), учир нь тохируулах (set up), дизайн хийх (design), болон арчлах (maintain) нь их цаг шаарддаг. E2E тестүүд нь чухал хэрэглэгчийн урсгалууд (critical user flows)-д тохиромжтой, харин unit тестүүд нь аппликейшний жижиг хэсгүүдийг шалгахад илүү тохиромжтой.
