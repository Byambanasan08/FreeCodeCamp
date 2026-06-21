# Хөгжим Худалдан Авах Сагсны Хуудас (Music Shopping Cart Page) бүтээх

Энэхүү жишээ төслийн (example project) функцтэй төстэй апп (app) бүтээ. Жишээ төслийг шууд хуулбарлахгүй байхыг хичээгээрэй, өөрийн хувийн хэв маягийг (personal style) оруул.

Зорилго (Objective): Доорх user story-уудыг биелүүлж, бүх test-үүдийг амжилттай давснаар lab-ийг дуусга.

User Stories:

```
1. Та shopping-cart-container гэсэн id-тэй элементтэй байх ёстой.
2. Таны #shopping-cart-container элемент нь тухайн элементийг Flexbox layout болгоход тохирох utility class-ыг ашигласан байх ёстой.
3. Таны #shopping-cart-container элемент нь жижиг төхөөрөмжүүд дээр flex item-уудын чиглэлийг column, харин том төхөөрөмжүүд дээр row болгож тохируулах ёстой. Tailwind CSS нь mobile first approach ашигладгийг санаарай, мөн та lg: breakpoint prefix-ийг ашиглан том төхөөрөмжүүдийг ононо.
4. Таны #shopping-cart-container элементийн дотор products-container гэсэн id-тэй элемент байх ёстой.
5. Таны #products-container элемент нь дор хаяж хоёр child элементтэй байх ёстой бөгөөд тэдгээр бүр нь card гэсэн class-тай байна.
6. .card элемент бүр нь дотроо дараах элементүүдийг агуулсан байх ёстой:
    Барааны нэрийг илэрхийлэх тексттэй h2 элемент, мөн font size-ийг зөвхөн predefined size class-уудаар (жишээ нь text-sm, text-md, text-lg, text-xl, text-2xl гэх мэт) тохируулсан utility class-тай байх ёстой.
    quantity гэсэн class-тай, тухайн барааны сагсанд байгаа тоо ширхэгийг харуулах тексттэй элемент.
    price гэсэн class-тай, үнийг харуулах тексттэй элемент.
    remove-button гэсэн class-тай, Remove гэсэн тексттэй button. Таны button нь таны сонгосон predefined улаан (red) background color-ыг тохируулах utility class-тай байх ёстой, мөн hover үед өөр predefined улаан background color ашигласан байх ёстой. Predefined улаан background color-ийн жишээ: bg-red-500, bg-red-600 гэх мэт. Hover үед ашиглах жишээ: hover:bg-red-500, hover:bg-red-600 гэх мэт.
7. Таны #shopping-cart-container элементийн дотор order-summary-container гэсэн id-тэй элемент байх ёстой.
8. Таны #order-summary-container элемент нь дараах style-уудтай байх ёстой:
    Predefined rounded corner-уудыг тохируулах таны сонгосон utility class. Жишээ нь rounded, rounded-lg, rounded-full гэх мэт.
    Бүх талд border width тохируулах таны сонгосон utility class.
9. Таны #order-summary-container элемент нь дотроо дараах элементүүдийг агуулсан байх ёстой:
    Order Summary гэсэн тексттэй h2 элемент, мөн font size-ийг тохируулах таны сонгосон utility class-тай байх ёстой.
    Total: гэсэн тексттэй, мөн id нь total гэж тохируулагдсан элемент. Энэ элемент нь мөн font weight-ийг Tailwind CSS-ийн predefined font weight-оор тохируулах utility class, мөн таны сонгосон font size-ийн utility class-тай байх ёстой.
    Сагсан дахь бүх барааны нийт үнийг харуулах total-amount гэсэн id-тэй элемент.
    Checkout гэсэн тексттэй link, мөн текстийг төвд байрлуулах (centering) зөв utility class-тай байх ёстой. href утга нь # гэж тохируулагдсан байна. Таны link нь мөн Tailwind CSS-ийн predefined цэнхэр (blue) background color-ыг тохируулах utility class-тай, мөн hover үед өөр цэнхэр background color ашигласан байх ёстой.
```

Tests:

    Passed: 1. You should have an element with an id set to shopping-cart-container.
    Passed: 2. Your #shopping-cart-container element should use the flex utility class to set the element to a Flexbox layout.
    Passed: 3. Your #shopping-cart-container element should use the correct utility class to set the direction of flex items to column.
    Passed: 4. Your #shopping-cart-container element should use the lg: breakpoint prefix followed by the correct utility class to set the direction of flex items to row for larger devices.
    Passed: 5. You should have an element with an id set to products-container inside your #shopping-cart-container element.
    Passed: 6. Your #products-container element should have at least two child elements each with a class called card.
    Passed: 7. Each .card element should have an h2 element with text representing the product name.
    Passed: 8. Each h2 element inside of the .card element should use a utility class that sets the font size using only predefined size classes such as text-sm, text-base, text-lg, text-xl, text-2xl, etc.
    Passed: 9. Each .card element should have an element with a class called quantity.
    Passed: 10. Each .quantity element should have text representing the number of cart items for that product.
    Passed: 11. Each .card element should have an element with a class called price.
    Passed: 12. Each .price element should have text representing the price.
    Passed: 13. Each .card element should have a button element with a class called remove-button and text Remove.
    Passed: 14. Each button element should have a utility class for a red background color of your choosing.
    Passed: 15. Each button element should have different red background color for the hover state.
    Passed: 16. You should have an element with an id called order-summary-container inside your #shopping-cart-container element.
    Passed: 17. Your #order-summary-container element should have a utility class of your choosing for setting the rounded corners.
    Passed: 18. Your #order-summary-container element should have a utility class of your choosing for setting the border width on all sides.
    Passed: 19. Your #order-summary-container element should have an h2 element with the text Order Summary.
    Passed: 20. Your h2 inside of the #order-summary-container element should use a utility class of your choosing that sets the font size.
    Passed: 21. Your #order-summary-container element should have an element with the text Total: and id set to total.
    Passed: 22. Your #total element should use a utility class to set the font weight.
    Passed: 23. Your #total element should use a utility class to set the font size.
    Passed: 24. Your #order-summary-container element should have an element with the id set to total-amount to display the total for all items in the cart.
    Passed: 25. Your #order-summary-container element should have a link with the text Checkout and a # for the href value.
    Passed: 26. Your Checkout link should have a utility class for centering the text.
    Passed: 27. Your Checkout link should have a utility class for setting the background color to a predefined Tailwind CSS blue color of your choosing.
    Passed: 28. Your Checkout link should have a different blue background color for the hover state.
