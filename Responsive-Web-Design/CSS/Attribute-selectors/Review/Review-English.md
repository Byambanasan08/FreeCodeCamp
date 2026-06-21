CSS Attribute Selectors Review
Working with Different Attribute Selectors and Links

    Definition: The attribute selector allows you to target HTML elements based on their attributes like the href or title attributes.

<link rel="stylesheet" href="styles.css">
<a href="https://www.freecodecamp.org">Link with href</a>
<a>No href</a>

a[href] {
  color: blue;
  text-decoration: underline;
}

    title Attribute: This attribute provides additional information about an element. Here is how you can target links with the title attribute:

<link rel="stylesheet" href="styles.css">
<a href="#" title="Tooltip">Link with title</a>
<a href="#">Normal link</a>

a[title] {
  font-weight: bold;
  text-decoration: none;
}

    Combine selectors to match links that have both href and title attributes: Combines multiple attribute selectors.

<link rel="stylesheet" href="styles.css">
<a href="#" title="Info">Href + Title</a>
<a href="#">Only href</a>

a[href][title] {
  color: green;
}

    Match a single word within a space-separated list: Targets links that have a specific class word.

<link rel="stylesheet" href="styles.css">
<a class="link primary">Primary link</a>
<a class="link secondary">Secondary link</a>

a[class~="primary"] {
  color: red;
  font-weight: bold;
}

    Match values that start with a specific prefix: Targets links starting with https://.

<link rel="stylesheet" href="styles.css">
<a href="https://www.freecodecamp.org">HTTPS link</a>
<a href="http://www.freecodecamp.org">HTTP link</a>

a[href^="https://"] {
  color: green;
  text-decoration: underline;
}

    Match values that end with a specific suffix: Targets links ending with .jpg.

<link rel="stylesheet" href="styles.css">
<a href="photo.jpg">Image link</a>
<a href="index.html">HTML link</a>

a[href$=".jpg"] {
  color: darkgreen;
  text-decoration: underline dotted;
}

    Match values that contain a substring anywhere: Targets links that contain https anywhere in the value.

<link rel="stylesheet" href="styles.css">
<a href="https://www.freecodecamp.org">Secure link</a>
<a href="page.html">Local link</a>

a[href*="https"] {
  color: teal;
}

    Summary: These patterns make it easy to consistently style links based on their attributes and values.

Targeting Elements with the lang and data-lang Attribute

    lang Attribute: This attribute is used in HTML to specify the language of the content within an element. You might want to style elements differently based on the language they are written in, especially on a multilingual website.

<link rel="stylesheet" href="styles.css">
<p lang="en">English text</p>
<p lang="fr">French text</p>

p[lang="en"] {
  font-style: italic;
}

    data-lang Attribute: Custom data attributes like the data-lang attribute are commonly used to store additional information in elements, such as specifying the language used within a specific section of text. Here is how you can style elements based on the data-lang attribute:

<link rel="stylesheet" href="styles.css">
<div data-lang="fr">French content</div>
<div data-lang="en">English content</div>

div[data-lang="fr"] {
  color: blue;
}

Working with the Attribute Selector, Ordered List Elements and the type Attribute

    type Attribute: When working with ordered lists in HTML, the type attribute allows you to specify the style of numbering used, such as numerical, alphabetical, or Roman numerals.

<link rel="stylesheet" href="styles.css">
<ol type="A">
  <li>Alpha</li>
  <li>Beta</li>
</ol>

<ol type="i">
  <li>One</li>
  <li>Two</li>
</ol>

/*Example targeting uppercase alphabetical numbering*/
ol[type="A"] {
  color: purple;
  font-weight: bold;
}

/*Example targeting lowercase Roman numerals*/
ol[type="i"] {
  color: green;
}
