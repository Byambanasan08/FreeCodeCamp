# Step 1

In this workshop, you will learn more about Tailwind CSS by using its flexbox utility classes to build a responsive call to action (CTA) component.

The basic HTML boilerplate has been provided for you, so you need to build out the HTML elements first.

Begin by creating a div element. Inside that div, create two more separate div elements.

# Step 2

Inside the first div element, create a span element with the text Soundflow, a h1 element with the text Discover New Music, and a p element with the text Stream your favorite tracks and discover new artists.

# Step 3

Inside the second div, create two anchor elements. The first should have the text Learn more, and the second should have the text Start listening.

For the href attribute of the two anchor elements, set them both to #.

# Step 4

Now that the HTML structure is built out, it's time to move to the proper styling with Tailwind.

Begin with the div element that wraps the entire content. Set its background color by giving it a class of bg-indigo-600.

# Step 5

As the text in the outer div is the default black, it is not easy enough to see. So, add the class text-white to the div.

# Step 6

If you notice, the outer div is too attached to the top and the content in it is too stacked to the left. So, you should work on some spacing now.

Add the class mt-8 to the div to push it down a bit and p-4 to shift the text away from the left

# Step 7

At this point, you'll notice there's too much space to the right of the content in the div. You can minimize this by adding a width.

Add the class md:w-1/2 to the div to reduce the width to 50% on medium and larger screens. That is, screens that are 768 pixels and up.

To see that in effect, expand the preview tab.

# Step 8

Now that everything sticks to the left, you need to center the entire content by adding a margin of auto to the x-axis.

Add the Tailwind class that corresponds to that to the outer div element. To see that effect, adjust the preview tab until the entire content is centered.

# Алхам 9

div доторх контентыг илүү сайн зайтай (spaced) бөгөөд зөв байрлуулалттай (arranged) болгох боломжтой. Үлдсэн зай болон байрлалыг тохируулахын тулд flexbox ашиглах хэрэгтэй.

div дээр flex class нэмээд хоёр child div элементүүдийг зэрэгцүүлэн (side by side) байрлуул.

Мөн justify-around class-ийг нэмснээр контентын эргэн тойрон болон хоорондох зайг жигд (evenly) хуваарилна, харин items-center class-ийг нэмснээр бүх контентыг div дотор эцэст нь төвд (centered) байрлуулна.

# Алхам 10

Хэрэв та preview tab-ийн өргөнийг дахин mobile төхөөрөмжийн хэмжээтэй адил болгож тохируулбал, контент үргэлж зэрэгцээ (side-by-side) байрлаж байгааг анзаарах болно. Энэ нь mobile төхөөрөмжүүдэд тохиромжгүй.

Үүнийг засахын тулд div дээр flex-col class нэмээрэй. Энэ нь flex direction-ийг column болгох бөгөөд элементүүдийг дээр доороо (stack) байрлуулах болно.

Доорх нь flex-col utility class-ийг ашиглах жишээ:
Жишээ код

<div class="flex flex-col">
  <element></element>
  <element></element>
</div>

# Step 11

Энэ үед контент, өөрөөр хэлбэл гадна div-ийн доторх хоёр div элемент нь дэлгэцийн хэмжээнээс үл хамааран бие биенийхээ дээр давхарлан байрлана.

Учир нь та wrapping div элемент дээр flex-col class ашигласан байгаа. Үүнийг засахын тулд lg: prefix ашиглан тухайн div дээр flex-row class нэмнэ.

Энэ нь илүү том дэлгэцтэй төхөөрөмжүүд дээр flex direction нь row болно гэсэн үг. Үүнийг дахин үйлчилж байгааг харахын тулд browser-ийн өргөнийг илүү том болгож тохируулна.

# Step 12

Finally, to remove the sharp edges of the outer div element, add the class rounded-md.

# Step 13

Moving to the span element with the text Soundflow, the text in it needs to be in uppercase.

Here's an example showing how to use the uppercase utility class:
Example Code

<p class="uppercase">Quincy Larson</p>

Add the class uppercase to the span element.

# Step 14

For the h1, add the classes font-bold and text-4xl. This will make the text bolder, bigger, and also give it more line spacing.

Also, add the class my-4 to increase the top and bottom margin of the h1 by 16 pixels, or 1rem.

# Step 15

The paragraph under the h1 looks good, so it doesn't need any more styling. That means you can move to the anchor elements inside the second div element.

Give the first anchor element the classes bg-white, hover:bg-gray-100, and text-indigo-600. This gives it a white background, a text-color of indigo, and a slightly light background when you hover on it.

For the second anchor element, give it the classes bg-pink-500, hover:bg-pink-600, and text-white.

# Step 16

To make the anchor tags look more like a button, add the classes px-4 and py-2 to each of them. px-4 will increase the right and left padding by 1rem, and py-2 will increase the top and bottom padding by 0.5rem.

# Step 17

To finish up the button styling, add the utility class font-semibold to each a element so their text can be bolder. Also, add the class rounded to remove the sharp edges on the buttons.

# Step 18

Lastly, the buttons can be better spaced apart and from the top. To do that, you need to target the div element that wraps them both. So, add the classes flex, gap-2, and mt-6 to that div.

With that, your CTA component workshop is complete!
