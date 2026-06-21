# CSS Libraries and Frameworks Review

# 1. CSS Frameworks

    1.1 CSS frameworks: CSS frameworks can speed up your workflow, create a uniform visual style across a website, make your design look consistent across multiple browsers, and keep your CSS code more organized.
    1.2 Popular CSS frameworks: Some of the popular CSS frameworks are Tailwind CSS, Bootstrap, Materialize, and Foundation.
    1.3 Potential disadvantages:
        The CSS provided by the framework might conflict with your custom CSS.
        Your website might look similar to other websites using the same framework.
        Large frameworks might cause performance issues.

# 2. Two Types of CSS Frameworks

    2.1 Utility-first CSS frameworks: These frameworks have small classes with specific purposes, like setting the margin, padding, or background color. You can assign these small classes directly to the HTML elements as needed. Tailwind CSS is categorized as a utility-first CSS framework.

Here is an example of using Tailwind CSS to style a button.

<button class="bg-blue-500 text-white font-bold py-2 px-4 rounded-full hover:bg-blue-700">
  Button
</button>

    2.2 Component-based CSS frameworks: These frameworks have pre-built components with pre-defined styles that you can add to your website. The components are available in the official documentation of the CSS framework, and you can copy and paste them into your project. Bootstrap is categorized as a component-based CSS framework.

Here is an example of using Bootstrap to create a list group. Instead of applying small classes to your HTML elements, you will add the entire component, including the HTML structure.

<div class="card" style="width: 25rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">HTML</li>
    <li class="list-group-item">CSS</li>
    <li class="list-group-item">JavaScript</li>
  </ul>
</div>

# 3. Tailwind CSS

Tailwind is a utility-first CSS framework. Instead of writing custom CSS rules, you build your designs by combining small utility classes directly in your HTML.

3.1 Responsive Design Utilities

Tailwind uses prefixes such as sm:, md:, and lg: to apply styles at different screen sizes.

<div class="w-full md:w-1/2 lg:flex-row">Responsive layout</div>

3.2 Flexbox Utilities

Classes like flex, flex-col, justify-around, and items-center make it easy to create flexible layouts.

<div class="flex flex-col md:flex-row justify-around items-center">
  <p>Column on small screens</p>
  <p>Row on medium and larger screens</p>
</div>

3.3 Grid Utilities

Tailwind includes utilities for CSS Grid, like grid, grid-cols-1, and md:grid-cols-3.

<div class="grid grid-cols-1 md:grid-cols-3 gap-8">
  <div class="bg-gray-100 p-4">Column 1</div>
  <div class="bg-gray-100 p-4">Column 2</div>
  <div class="bg-gray-100 p-4">Column 3</div>
</div>

3.4 Spacing Utilities

Utilities like mt-8, mx-auto, p-4, and gap-4 help create consistent spacing without writing CSS.

<div class="mt-8 p-4 bg-indigo-600 text-white">Spaced content</div>

3.5 Typography Utilities

Utilities like uppercase, font-bold, font-semibold, and text-4xl control text appearance.

You can set font sizes that adjust at breakpoints, such as text-3xl md:text-5xl.

<h1 class="text-3xl md:text-5xl font-semibold text-center">Responsive Heading
</h1>

3.6 Colors and Hover States

Tailwind provides a wide color palette, such as text-red-700, bg-indigo-600, and bg-gray-100.

Classes like hover:bg-pink-600 make interactive effects simple.

<a href="#" class="bg-pink-500 hover:bg-pink-600 text-white px-4 py-2 rounded-md">
  Hover Me
</a>

3.7 Borders, Rings, and Effects

    3.7.1 Borders: border-2 border-red-300 adds borders with specified thickness and colors.
    3.7.2 Rings: ring-1 ring-gray-300 creates outline-like effects often used for focus or cards.
    3.7.3 Rounded corners and scaling: Classes like rounded-md, rounded-xl, and scale-105 add polish.

<div class="p-6 rounded-xl ring-2 ring-fuchsia-500 scale-105">
  Highlighted card
</div>

3.8 Gradients

Tailwind supports gradient utilities like bg-gradient-to-r from-fuchsia-500 to-indigo-600.

<div class="p-4 text-white bg-gradient-to-r from-fuchsia-500 to-indigo-600">
  Gradient background
</div>

# 4. CSS Preprocessors

     CSS preprocessor: A CSS preprocessor is a tool that extends standard CSS. It compiles the code with extended syntax into a native CSS file. It can be helpful for writing cleaner, reusable, less repetitive, and scalable CSS for complex projects.
    Features: Some of the features that can be provided by CSS preprocessors are variables, mixins, nesting, and selector inheritance.
    Popular CSS preprocessors: Some of the popular CSS preprocessors are Sass, Less, and Stylus.
    Potential disadvantages:
        Compiling the CSS rules into standard CSS might cause overhead.
        The compiled code may be difficult to debug.

# 5. Sass

    Sass: It is one of the most popular CSS preprocessors. Sass stands for "Syntactically Awesome Style Sheets."
    Features supported by Sass: Sass supports features like variables, nested CSS rules, modules, mixins, inheritance, and operators for basic mathematical operations

5.1 Two Syntaxes Supported by Sass

    5.1.1 SCSS syntax: The SCSS (Sassy CSS) expands the basic syntax of CSS. It is the most widely used syntax for Sass. SCSS files have an .scss extension.

Here is an example of defining and using a variable in SCSS.

$primary-color: #3498eb;

header {
background-color: $primary-color;
}

    5.1.2 Indented syntax: The indented syntax was Sass's original syntax and is also known as the "Sass syntax."

Here is an example of defining and using a variable in the indented syntax.

$primary-color: #3498eb

header
background-color: $primary-color

# 6. Mixins

     6.1 Mixins: Mixins allow you to group multiple CSS properties and their values under the name and reuse that block of CSS code throughout your stylesheet.

Here is an example of defining a mixin in SCSS syntax. In this case, the mixin is called center-flex. It has three CSS properties to center elements using flexbox.

@mixin center-flex {
display: flex;
justify-content: center;
align-items: center;
}

Here is an example of using the mixin you defined.

section {
@include center-flex;
height: 500px;
background-color: #3289a8;
}
