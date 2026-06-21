# Step 1

In this workshop, you will learn more about Tailwind CSS by using its grid utility classes to build a pricing component.

The basic HTML boilerplate has been provided for you. Start by creating an h1 element with the text Choose your listening plan.

# Step 2

Create a div element under the h1. Inside that div, create another div element, and nest another div element inside it.

And inside the innermost div, create an h2 element with the text Listener. This will represent the first pricing plan.

# Step 3

Under the h2, create a p element with the text $0. Then, inside that p element and after the text, create a span element with the text /month.

# Step 4

Under the p element you just added, create another p element with the text Start exploring millions of songs with basic features and ads.. Under that, create an empty ul element.

# Step 5

Inside the ul, create two list items. Inside the first list item, create a span element and add the HTML entity &#10003; as its text. Right after that span but within the list item, add the text Ad-supported streaming.

Inside the second list item, create a span element and add the entity &#10003; as its text. Right after that span, but within the list item, add the text Curated playlists.

# Step 6

Now you'll create a CTA button. A Call to Action (CTA) is a button or link designed to prompt a user to take a specific action, in this case, to start listening.

Outside the innermost div, create an anchor element with an href of # and the text Start listening.

That concludes the HTML for the first pricing card.

# Step 7

The rest of the HTML has been provided for you. That includes the premium and family plan cards. So, it's time to style the HTML elements with Tailwind CSS.

Begin by giving the whole page a slightly grey background by assigning the body element a class of bg-gray-100.

# Step 8

Next, make the h1 text distinguishable by assigning it a class set to text-3xl to make it bigger, text-center to center it, font-semibold to make it bolder, text-gray-900 to make it darker, and md:text-5xl to make it bigger on medium and larger screen sizes.

# Step 9

The h1 text is too close to the top of the page and the text below it, so you should add some spacing around it.

In addition to the existing ones, assign the utility classes mt-8 and mb-12 to the h1.

# Step 10

It's time to work on the div element that wraps the three pricing cards. To arrange the cards, you can use Tailwind CSS's grid utility classes.

Here's how to assign a display of grid to an element using Tailwind:
Example Code

<div class="grid">
  <div>Grid Item</div>
  <div>Grid Item</div>
  <div>Grid Item</div>
</div>

Assign a class of grid to the div element that wraps the pricing cards.

# Step 11

Та ердийн CSS (regular CSS)-ээс сурсанчлан, нэг элементэд display-ийг grid болгож оноох нь grid-ийн мөрүүд (rows) болон баганууд (columns)-ыг зааж өгөх хүртэл ямар ч өөрчлөлт хийдэггүй. Tailwind дээр ч мөн адилхан ажилладаг.

Tailwind дээр grid-ийн мөр (grid row) болон grid-ийн багана (grid column)-ыг оноохын тулд дараах байдлаар тус бүрийн utility class-уудыг ашиглана:
Example Code

<div class="grid grid-cols-[num] grid-rows-[num]">
  <div>Grid Item</div>
  <div>Grid Item</div>
  <div>Grid Item</div>
</div>

Wrapper div дээр grid-cols-1 болон md:grid-cols-3 utility class-уудыг онооно.

grid-cols-1 class нь гурван item-ийг нэг баганад байрлуулж, босоо чиглэлд давхарлан байрлуулна. Харин дунд (medium) болон түүнээс дээш хэмжээтэй дэлгэцүүд дээр md:grid-cols-3 нь layout-ыг гурван багана болгон өөрчилж, item-үүдийг зэрэгцүүлэн харуулна.

# Step 12

Grid item-ууд нь хуудасны зүүн болон баруун ирмэгүүдэд хэт ойрхон байрлаж байгаа тул та spacing дээр ажиллах хэрэгтэй.

div дээр max-w-6xl class-ыг оноож, өргөнийг 72rem болгон тогтоож, item-ууд хуудасны дагуу хэт сунахаас сэргийлнэ.

Энэ нь бүх item-уудыг зүүн тийш шахах тул div дээр mx-auto нэмэн, item-уудыг хэвтээ чиглэлд төвд байрлуулна.

# Step 13

At this point, the items are too close to each other. Add gap-8 to create some space between them, and use mt-16 to push them down from the top a bit.

# Step 14

Одоо та Listener төлөвлөгөө (Listener plan)-ийн элементүүдийг styling хийх рүү шилжих хэрэгтэй.

Тухайн төлөвлөгөөний гаднах div дээр bg-gray-100, ring-1 гэсэн class-уудыг өгч div-ийн эргэн тойронд зузаан хүрээ (outline) үүсгэнэ, мөн ring-gray-300-ийг өгч тэр хүрээнд бараан өнгө онооно.

# Step 15

Одоо та тухайн төлөвлөгөөний card доторх item-уудын байрлалыг (placement) дээр ажиллах хэрэгтэй.

Үүнийг хийхийн тулд container-ийг grid display ашиглахаар тохируулж, Tailwind class дотор дөрвөлжин хаалт (square brackets) ашиглан custom row size-ийг зааж өгнө.

Fractional units ашиглан custom grid row тохируулах жишээ:
Example Code

<div class="grid grid-rows-[2fr]">
  <div>Нэг хэсгийг эзэлнэ</div>
  <div>Боломжит зайны хоёр хэсгийг эзэлнэ</div>
</div>

Тухайн төлөвлөгөөний гаднах div дээр grid болон grid-rows-[1fr_auto] utility class-уудыг онооно.

# Step 16

Now you should work on the spacing for the items inside that plan.

Add the utility class rounded-xl to remove the sharp edges for the ring, p-8 to increase the padding, and gap-6 to create space between the content and the CTA button.

# Step 17

Moving to the inner div in the Listener plan, give it the classes grid, grid-rows-[auto_auto_auto_1fr], and gap-y-2.

These classes will make the inner div a grid container, define four rows that stack on top of each other, with the first three set to auto and the last taking up the remaining spaces, and finally add a spacing of 0.5rem between the rows.

# Step 18

Moving to the h2 inside the Listener plan, give it the utility class text-lg to make it larger, font-semibold to make it bolder, and text-indigo-600 to give it a beautiful indigo color.

# Step 19

Moving to the price text inside the p and span, give the p element the classes text-4xl, font-bold, and text-gray-900 so the price is more visible.

# Step 20

For the span inside the p element that has the text /month, give it the classes text-base, font-medium, and text-gray-500. This will distinguish it from the price itself by making the text lighter.

# Step 21

Moving to the next paragraph, give it the utility class text-gray-600.

# Step 22

Next, assign the utility classes mt-6, space-y-2, text-sm, and text-gray-700 to the ul.

# Step 23

The checkmark in each span at the start of a list item is decorative. Add aria-hidden to these span elements to hide them from screen readers.

Also, assign the classes text-green-700 and mr-2 to each of the span elements.

# Step 24

Now, you should move to the Start listening CTA to make it a proper button.

Assign it the utility classes bg-indigo-100, px-4, py-2, text-center, font-semibold, text-indigo-700, and hover:bg-indigo-200.

# Step 25

In addition to those, add the classes block and rounded-md to the anchor tag to make it a block element and remove the sharp edges.

# Step 26

The next pricing card is the Premium Plan.

Give the wrapper div of the premium plan the classes bg-gray-950, text-white, ring-2, ring-fuchsia-500, and p-8.

# Step 27

To position the items in the card, you need grid classes again. Assign the utility classes grid, grid-rows-[1fr_auto], and gap-6 to the wrapper div.

Also, remove the sharp edges with the class rounded-xl.

# Step 28

Premium pricing card нь хуудас дээр хамгийн ихээр анхаарал татах ёстой. Мөн энэ нь Most popular badge-тэй байх цорын ганц card юм. Энэ card болон түүний badge-ийг илүү тодруулахын тулд Tailwind-ийн relative positioning болон scaling utility class-уудыг ашиглаж болно.

Tailwind CSS дээр scaling ашиглан элемент хэрхэн томруулах жишээ:
Example Code

<div class="transform scale-110">
  Энэ элемент 10%-аар томруулсан байна
</div>

Positioning-ийг та дараагийн алхмуудад шийднэ. Одоохондоо wrapper div дээр scale-105 class-ыг оноож, үүнийг бусад pricing card-уудаас бага зэрэг том болгоно.

# Step 29

Одоо Most popular badge дээр ажиллая. Та үүнийг card-ийн баруун дээд буланд байрлуулах хэрэгтэй тул Tailwind-ийн positioning utility class-уудын заримыг ашиглаж болно.

Tailwind дээр CSS positioning-ийг хэрхэн ашиглах жишээ:
Example Code

<div class="relative">
  <div class="absolute top-0 left-0 bg-blue-200 p-2">
    Энэ элемент зүүн дээд буланд байрласан байна
  </div>
</div>

Wrapper div дээр relative class-ыг, харин Most popular гэсэн тексттэй div дээр absolute class-ыг онооно.

# Step 30

Энэ нь badge-ийн текстийг хөдөлгөнө, гэхдээ яг таны хүссэн байрлалд биш. Гол нууц нь right-[num], left-[num], top-[num], болон bottom-[num] utility class-уудад оршиж байна.

Тэдгээрийг хэрхэн ашиглах жишээ:
Example Code

<div class="relative h-48 bg-gray-100">
  <div class="absolute top-4 left-8 bg-blue-300 p-2">
    Энэ элемент дээд талаас 1rem, зүүн талаас 2rem зайд байрлана
  </div>
</div>

Мөн та сөрөг утгуудыг (negative values) hyphen (-) ашиглан зааж өгч болно:
Example Code

<div class="relative h-48 bg-gray-100">
  <div class="absolute -top-4 -left-8 bg-blue-300 p-2">
    Энэ элемент дээд талаасаа 1rem-ээр дээш, зүүн тийш 2rem-ээр байрлана
  </div>
</div>

Most popular badge-ийн div дээр -top-3 болон right-3 class-уудыг нэмнэ.

# Step 31

Badge-ийг илүү сайхан styling хийх боломжтой. Үүний тулд та Tailwind-ийн gradient class-уудыг ашиглана. Tailwind дээр gradient style-ийг хэрхэн ашиглах жишээ:
Example Code

<div class="bg-gradient-to-r from-blue-500 to-green-500">
  Энэ бол badge юм
</div>

Badge-ийн div дээр bg-gradient-to-r, from-fuchsia-500, болон to-indigo-500 class-уудыг нэмнэ. Мөн rounded-full, px-3, py-1, text-xs, font-bold, болон text-white class-уудыг нэмнэ.

# Step 32

Apart from the Go Premium CTA, the rest of the content is in a div. That makes CSS grid a good option to arrange everything.

Add the classes grid, grid-rows-[auto_auto_auto_1fr], and gap-y-2 to the div that wraps the h2, p, and ul elements.

# Step 33

Add the classes text-lg, font-semibold, and text-fuchsia-200 to the h2 element of the premium plan.

# Step 34

Add the classes text-4xl, font-bold, and text-white to the p element that has the price text to make it look more visible.

# Step 35

The span that has the duration also needs some styling, so add the classes text-base, font-medium, and text-fuchsia-300 to it.

# Step 36

Add the class text-gray-300 to the p element that has the one-line benefit of the plan.

# Step 37

Moving to the list element, add the classes mt-6, space-y-2, text-sm, and text-fuchsia-100 to the ul to space out the list items and make them look more appealing.

# Step 38

For the span elements inside each list item, assign them the classes text-green-500 and mr-2 to make the markers green and push them a bit away from the text.

Also, assign them the aria-hidden attribute like you did for the span elements of the first pricing plan.

# Step 39

Now you should style the CTA to make it look more like a button.

For the background and foreground colors, assign it the classes bg-gradient-to-r, from-fuchsia-500, to-indigo-600, text-white, hover:from-fuchsia-600, and hover:to-indigo-700. Also assign it the classes rounded-md and block.

# Step 40

Now, add the classes px-4, py-2, text-center, and font-semibold to the anchor element

# Step 41

Next is the last pricing item, the Family Plan.

To begin, give the wrapper div for the plan the classes bg-gray-100, ring-1, ring-gray-300, p-8, and rounded-xl.

# Step 42

Now, you will use grid to arrange the items inside the wrapper div.

Add the classes grid, grid-rows-[1fr_auto], and gap-6 to the wrapper div.

# Step 43

That takes care of some basic styling spacing for the item card, including the CTA button. For the rest of the inner content, you need to arrange everything in a grid by targeting the inner div.

Assign the classes grid, grid-rows-[auto_auto_auto_1fr], and gap-y-2 to the inner div.

# Step 44

Now, target the h2 of the plan and assign to it the classes text-lg, font-semibold, and text-indigo-600.

# Step 45

The next item to style is the price text, including the span in it. Give the p element of the price the classes text-4xl, font-bold, and text-gray-900.

# Step 46

Now, assign the span inside the p element the classes text-base, font-medium, and text-gray-500.

# Step 47

Assign the class text-gray-600 to the paragraph under the price text.

# Step 48

Next, assign the classes mt-6, space-y-2, text-sm, and text-gray-700 to the ul element.

# Step 49

The markers of the list items need to be spaced out a bit. So, give each span in the list items the classes text-green-700 and mr-2.

Also, add the aria-hidden attribute to each of the span elements.

# Step 50

The last thing you will do is to style the CTA button for the family plan.

Give it the classes block, rounded-md, bg-indigo-600, px-4, py-2, text-center, font-semibold, text-white, and hover:bg-indigo-700.

With that, your Tailwind pricing component workshop is complete!
