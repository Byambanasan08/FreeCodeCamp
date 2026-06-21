# React Framework-үүд гэж юу вэ, мөн яагаад тэдгээрийг салбарт (industry) өргөн ашигладаг вэ?

Одоог хүртэл та React ашиглан хэрэглэгчийн интерфейсүүдийг (user interfaces) бүтээж байсан. Хэрэв танд routing зэрэг нэмэлт боломжууд хэрэгтэй байсан бол та өөр өөр view-үүдийн хооронд шилжихийн тулд React Router зэрэг гуравдагч талын санг (third party library) import хийх шаардлагатай байсан.

Гэхдээ та бүрэн хэмжээний (full-stack) вэб аппликейшн бүтээх шаардлагатай бол яах вэ? Та front-end хэсэгт React ашиглаж, back-end логикт Node болон Express ашиглаж JavaScript дээр үлдэж болно. Эсвэл та back-end дээр Go, Python, эсвэл Java зэрэг бусад хэлүүдийг ашиглаж болно.

Эдгээр бүх сонголтууд боломжтой (viable) боловч зарим тохиолдолд та React framework ашиглахыг хүсэж магадгүй. React framework-үүд нь routing, image optimization, data fetching, authentication болон бусад олон боломжуудыг агуулдаг. Энэ нь зарим хэрэглээний (use cases) хувьд та тусдаа front-end болон back-end аппликейшн тохируулах шаардлагагүй байж болохыг илэрхийлдэг.

Алдартай React framework болох Next.js-ийг илүү ойроос харцгаая. Next.js-ийн гол боломжуудын нэг нь file-system based router юм. Энэ routing систем нь dynamic routes, parallel routes, route handlers, redirects, internalization болон бусад олон боломжуудыг дэмждэг.

Дараах нь custom request handler үүсгэх жишээ юм:

export async function GET() {
const res = await fetch("https://example-api.com");
const data = await res.json();

return Response.json({ data });
}

Та app/api директор дотор байрлах route.js файлд GET эсвэл POST request зэрэг route handler-уудыг тодорхойлж болно.

Next.js-ийн өөр нэг боломж нь автомат image болон font optimization юм.

Дараах нь page.js файл дотор Image component ашиглах жишээ юм:

import Image from "next/image";

export default function Page() {
return ( <Image src="link-to-image-goes-here" alt="descriptive-title-goes-here" />
);
}

Image component нь native HTML img элементийг өргөтгөсөн (extends) бөгөөд илүү хурдан page ачаалалт (page loads) болон хэмжээний optimization хийх боломж олгодог. Энэ нь зурагнууд зөвхөн viewport-д орж ирэх үед ачаалагдах бөгөөд Image component нь төхөөрөмж бүрт тохирсон зөв хэмжээтэй зургуудыг автоматаар хүргэдэг гэсэн үг юм.

Эдгээр нь Next.js-ийн зөвхөн цөөн хэдэн боломжууд бөгөөд бүрэн хэмжээний full-stack вэб аппликейшн бүтээхэд ашиглаж болох маш олон боломжууд бий. Мөн Remix зэрэг бусад React framework-үүд байдаг бөгөөд тэдгээр нь мөн орчин үеийн full-stack вэб аппликейшн бүтээх ижил боломжуудыг олгодог.

JavaScript сан (library) болон framework-ийн орчин (landscape) байнга өөрчлөгдөж байдаг ч танд байгаа сонголтуудыг мэдэж байх, мөн framework бүрийн давуу болон сул талуудыг судлах нь маш чухал юм.
