# Step 1

In this workshop, you will learn how to start working with the basics of Tailwind CSS by building an error message component.

For the first few steps, you will focus on building out the initial HTML markup.

Inside the body element, add a div element. Then inside that div element, add a p element.

# Step 2

Inside your p element, add the text Error! Something went wrong. Please try again. where Error! should be wrapped inside of a strong element.

# Step 3

The next part of the workshop is to add the dismiss button.

Below your p element, add a button element with an aria-label set to "Dismiss". Inside that button element, add a span element with an aria-hidden attribute. The span element text should be &times;.

NOTE: Since this workshop will only be focused on working with Tailwind CSS styles, the button will not have any type of interactivity added to it.

# Алхам 4

Tailwind CSS нь utility class-уудыг ашигладаг бөгөөд эдгээрийг шууд markup дээр хэрэглэдэг. Эдгээр class-ууд нь font, color, Flexbox layout, Grid зэрэг олон төрлийн style-уудыг агуулдаг.

Tailwind CSS дээр background color оноохын тулд bg гэсэн prefix ашиглаад, дараа нь өнгөний нэр болон тоо бичнэ. Тэр тоо нь өнгөний сүүдэр (shade)-ийг илэрхийлнэ.

Доорх нь paragraph элементэд бараан цэнхэр background color оноох жишээ юм.
Жишээ код

<p class="bg-blue-900">This has a dark blue background.</p>

Өөрийн opening div tag дээр light red background color илэрхийлэх bg-red-100 utility class-ийг нэмээрэй

# Алхам 5

Тэр light red background-ийн эргэн тойронд border байвал илүү гоё харагдана.

Tailwind CSS-д border-ийн өргөн (border-width)-ийг тохируулахын тулд border-number utility class ашигладаг бөгөөд энд number нь border-ийн зузаан (thickness)-ыг илэрхийлнэ.

Доорх нь бүх талдаа 4px border-width оноох жишээ юм:
Жишээ код

<p class="border-4">This is how to set the border-width.</p>

Өөрийн opening div tag дотор бүх талдаа 2px border-width оноох зөв utility class-ийг нэмээрэй

# Step 6

Now it is time to apply a border color. To set the border-color property using Tailwind CSS, you can use a utility class with the following pattern: border-color-number, where number represents the shade for the border color.

Here is an example of applying a purple border color to an element:
Example Code

<p class="border-purple-400">This is border-color.</p>

Inside your opening div tag, apply a red border color with a shade of 300.

# Step 7

The next step would be to round the corners of the border. To set the border-radius property using Tailwind CSS, you can use a utility class with the following pattern: rounded-size, where size represents the radius.

Here is an example of applying an extra-large border radius to an element:
Example Code

<p class="rounded-xl">This is border radius.</p>

Inside your opening div tag, apply a border radius with a size of md.

# Алхам 8

Одоогоор div элементын өргөн (width) нь хуудасны бүх өргөнийг эзэлж байна. Tailwind CSS-д өргөн (width) тохируулах хэд хэдэн арга байдаг, жишээлбэл тогтмол өргөнд (fixed widths) зориулсан w-number pattern эсвэл хувийн (percentage) утгад зориулсан w-fraction pattern ашиглаж болно.

Доорх нь parent container-ийнхоо 66% өргөнтэй болгох жишээ юм:
Жишээ код

<p class="w-2/3">This is a percentage width.</p>

Өөрийн opening div tag дотор parent container-ийнхоо 50% өргөнтэй болгох class-ийг нэмээрэй

# Алхам 9

Одоо та элементын өргөн (width) нь body-ийн хагас хэмжээтэй байгааг харж байна. Энэ нь том төхөөрөмжүүд (larger devices)-д сайн ажиллах боловч жижиг төхөөрөмжүүд (smaller devices)-д төдийлөн сайн биш.

Tailwind CSS нь mobile-first design хандлагыг баримталдаг. Тиймээс хэрэв та бусад төхөөрөмжүүдэд зориулсан responsive дизайн хийхийг хүсвэл Tailwind-ийн md болон lg зэрэг responsive variant-уудыг дараах байдлаар ашиглаж болно:
Жишээ код

<p class="lg:w-2/3">This is a percentage width.</p>

Дээрх жишээ нь 1024px болон түүнээс дээш хэмжээтэй төхөөрөмжүүдэд parent элементын 66% өргөнтэй болгоно.

Өөрийн opening div tag дотор w-1/2 class-аа зөвхөн 768px болон түүнээс дээш төхөөрөмжүүдэд хэрэгжихээр өөрчил. Үүний тулд md variant-ийг prefix болгон ашиглаарай.

# Step 10

The styles for the div element are starting to come together. But it would be nice if there were some space around the text.

To apply padding to an element using Tailwind CSS, you can use the following pattern: p-number, where number represents the pixels you want to apply on all four sides.

Here is an example of applying padding of 8px to an element:
Example Code

<p class="p-8">This is padding.</p>

Inside your opening div tag, use the correct utility class to apply padding of 4px.

# Алхам 11

Одоогоор div элемент нь preview дэлгэцийн зүүн дээд буланд байрлаж байна. Гэхдээ элементын дээд талд бага зэрэг зай (space) нэмбэл илүү гоё харагдана. Tailwind CSS ашиглан элементэд margin өгөхийн тулд дараах pattern-ийг ашиглаж болно: m-number, энд number нь бүх дөрвөн талд (all four sides) өгөх fixed pixel хэмжээг илэрхийлнэ.

Хэрэв та зөвхөн нэг талд margin өгөхийг хүсвэл дараах pattern-уудыг ашиглаж болно: mt-number (margin top), mb-number (margin bottom), mr-number (margin right), болон ml-number (margin left).

Доорх нь элементэд margin-bottom өгөх жишээ юм:
Жишээ код

<p class="mb-8">This is margin.</p>

Өөрийн opening div tag дотор margin-top 4px өгөх зөв utility class-ийг ашиглаарай.

# Алхам 12

div элементийг хэвтээ чиглэлд (horizontally) төвд байрлуулах нь илүү гоё харагдана. Хоёр талд зэрэг margin өгөхийн тулд дараах pattern-уудыг ашиглаж болно: mx-number эсвэл my-number.

mx нь зүүн болон баруун талын margin-ийг тохируулдаг, харин my нь дээд болон доод талын margin-ийг тохируулдаг.

Доорх нь элементэд дээд болон доод margin өгөх жишээ юм:
Жишээ код

<p class="my-8">This is margin.</p>

Өөрийн opening div tag дотор зүүн болон баруун margin-ийг auto болгох зөв utility class-ийг ашиглаарай.

# Алхам 13

Хэрэв та preview window-г томруулбал div элемент хуудасны төвд хэвтээ чиглэлд байрласан байгааг харах ёстой. Гэхдээ жижиг төхөөрөмжүүд (smaller devices)-д div элементын өргөн нь хуудасны бүх өргөнийг эзэлж байна.

mx-auto class-ийг зөвхөн md төхөөрөмжүүд болон түүнээс дээш хэмжээнд хэрэгжихээр өөрчлөөрэй.

# Алхам 14

Одоогоор paragraph элемент нь dismiss button элементийн дээр давхарлан (stacked) байрлаж байна. Гэхдээ button элементийг paragraph-тай нэг мөрөнд (same row) байрлуулах нь илүү гоё харагдана. Энэ үед Flexbox хэрэг болно.

Tailwind CSS-д div элементийг Flexbox layout болгохын тулд flex utility class-ийг ашиглаж болно.

# Алхам 15

div элемент одоо илүү сайхан харагдаж эхэлж байна. Гэхдээ одоо dismiss button нь paragraph элементэд хэт ойрхон байна.

Flex item-уудын хооронд зай үүсгэхийн тулд дараах pattern-ийг ашиглаж болно: gap-number. Энд number нь flex layout дахь мөр болон баганын (rows and columns) хоорондын тогтмол зайг илэрхийлнэ.

Доорх нь элементэд gap оноох жишээ юм:
Жишээ код

<p class="flex gap-8">This is gap.</p>

Өөрийн opening div tag дотор gap-ийг 4 болгох зөв utility class-ийг ашиглаарай.

# Алхам 16

Хэрэв та preview window-ийн хэмжээг томруулбал бүх элементүүд container дотор зүүн талдаа (left-aligned) хэвээр байгааг анзаарах болно. Flex item-уудыг төвд (centered) байрлуулах нь илүү гоё харагдана.

Tailwind CSS ашиглан flex item-уудыг container-ийн main axis дагуу байрлуулахын тулд дараах pattern-ийг ашиглаж болно: justify-value. Энд value нь start, end, center, between гэх мэт утгууд байж болно. Vanilla CSS-д justify-content property-д ашиглагддаг бүх зөв (valid) утгуудыг Tailwind CSS-д ашиглаж болно.

Өөрийн opening div tag дотор justify-content property-ийг center болгох зөв utility class-ийг ашиглаарай.

# Алхам 17

Одоо div элементэд style-уудыг оноосны дараа p элементэд style оноох цаг боллоо.

Одоогоор paragraph элементийн текстийн өнгө хар байна. Гэхдээ өнгийг бараан улаан (dark red) болговол илүү гоё харагдана.

Өмнөх алхамд та bg-red-100 гэх мэт background color-той хэрхэн ажиллахыг сурсан. Үүнтэй төстэйгээр text color-ийг дараах pattern ашиглан тохируулж болно: text-color-shade.

Доорх нь элементэд цэнхэр текстийн өнгө оноох жишээ юм:
Жишээ код

<p class="text-blue-500">This has blue text.</p>

Эхлээд p элементдээ class attribute нэм. Дараа нь shade нь 700-тэй улаан текстийн өнгө оноох зөв utility class-ийг хэрэглээрэй.

# Алхам 18

Шинэ улаан өнгө сайхан харагдаж байна, гэхдээ текст илүү том байвал бүр сайн байх болно. Tailwind CSS ашиглан элементэд font-size тохируулахын тулд дараах pattern-ийг ашиглаж болно: text-value.

Доорх нь элементэд 0.875rem буюу (14px) font-size оноох жишээ юм:
Жишээ код

<p class="text-sm">This is for font-size.</p>

Өөрийн opening p элемент дотор font-size-ийг xl болгох зөв utility class-ийг ашиглаарай. Энэ нь 1.25rem буюу (20px)-ийг илэрхийлнэ.

# Алхам 19

Одоо button элементэд style оноох цаг боллоо.

Эхлээд button элементдээ class attribute нэм. Дараа нь shade нь 700-тэй улаан текстийн өнгө оноох зөв utility class-ийг хэрэглээрэй.

Дараа нь opening button tag дотор font-size-ийг 2xl болгох зөв utility class-ийг ашиглаарай. Энэ нь 1.5rem буюу (24px)-ийг илэрхийлнэ.

# Алхам 20

Таны error message component-ийн style бараг бүрэн болсон, гэхдээ засах нэг зүйл үлдсэн байна. Та paragraph болон button текстэд өөр өөр font-size өгсөн тул эдгээр flex item-уудын босоо (vertical) байрлал (alignment) алдагдсан байна.

Tailwind CSS ашиглан flex item-уудыг container-ийн cross-axis дагуу байрлуулахын тулд дараах pattern-ийг ашиглаж болно: items-value. Энд value нь start, end, center, baseline гэх мэт байж болно.

Өөрийн opening div tag дотор align-items property-ийг center болгох зөв utility class-ийг ашиглаарай.

Ингээд энэ сүүлийн өөрчлөлтийг хийснээр таны error message component бүрэн боллоо!
