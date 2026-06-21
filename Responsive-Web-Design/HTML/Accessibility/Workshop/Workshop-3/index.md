## Step 1
In this workshop, you will practice working with ARIA by building an accessible audio controller.

To start, add an h1 element with the text Audio Controls.

## Step 2
Next, add a button element with the type attribute set to the value button.

The button element's text should be Play.

## Step 3
Next, add a div element to contain all the elements for the volume control.

Inside the div element, nest a span element with an id attribute set to volume-label. Also, the text for the span element should be Volume.

The id will later be referenced by ARIA attributes so assistive technologies can identify this text as the label for the volume control.

## Step 4
Now it is time to add another span element.

This span element should have an id attribute set to volume-description. Also, the text for this span element should be Adjust the sound level.

Similar to the previous span element, the id of this span will later be referenced by ARIA attributes so assistive technologies can identify this text as the description for the volume control.

## Step 5
Next, you need to add an input element with the type attribute set to range to create the volume slider. Set the min attribute to 0, the max attribute to 100, and the value attribute to 50 to define the default volume level.

## ### Алхам 6

Өмнөх хичээлүүдээс санаж байгаачлан, **aria-labelledby** атрибут нь хуудсан дээр **аль хэдийн байгаа текстийг** label болгон ашиглах үед хэрэглэгддэг.

Энэ тохиолдолд та `span` элементүүдэд `id` атрибут нэмсэн байгаа бөгөөд одоо тэдгээрийг энд ашиглана.

`input` элементэд **aria-labelledby** атрибут нэмж, утгыг нь **`volume-label volume-description`** гэж тохируулаарай.

## ### Алхам 7

Таны хүртээмжтэй (accessible) аудио удирдлага (audio controller) бараг дууссан байна. Харин **нэмэх ёстой сүүлийн нэг зүйл** үлдлээ.

`div` элементийн доор:

* `type` атрибутыг **`button`** гэж тохируулсан
* **`Mute`** гэсэн тексттэй
  **`button` элемент** нэмээрэй.

Ингэснээр энэ workshop **бүрэн дууслаа**.
