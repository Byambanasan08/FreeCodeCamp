Semantic HTML Review
Importance of Semantic HTML

    1. Structural hierarchy for heading elements:  It is important to use the correct heading element to maintain the structural hierarchy of the content. The h1 element is the highest level of heading and the h6 element is the lowest level of heading.
    2. Presentational HTML elements:  Elements that define the appearance of content. Ex. the deprecated center, big and font elements.
    3. Semantic HTML elements: Elements that hold meaning and structure. Ex. header, nav, figure.

3.1 Semantic HTML Elements

    3.1.1 Header element: used to define the header of a document or section.

<header>
  <h1>CatPhotoApp</h1>
  <p>Welcome to our cat gallery.</p>
</header>

   3.1.2  Main element: used to contain the main content of the web page.

<main>
  <section>
    <h2>Cat Photos</h2>
    <p>Browse adorable cat pictures.</p>
  </section>
</main>

   3.1.3 Section element: used to divide up content into smaller sections.

<section>
  <h2>About Me</h2>
  <p>Hi, I am Jane Doe and I am a web developer.</p>
</section>

    3.1.4 Navigation Section (nav) element: represents a section with navigation links.

<nav>
  <ul>
    <li><a href="#photos">Photos</a></li>
    <li><a href="#videos">Videos</a></li>
  </ul>
</nav>

    3.1.5 Figure element: used to contain illustrations and diagrams.

<figure>
  <img
    src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg"
    alt="Two tabby kittens sleeping together on a couch."
  />
  <figcaption>Cats <strong>hate</strong> other cats.</figcaption>
</figure>

    3.1.6 Emphasis (em) element: marks text that has stress emphasis.

<p>
  Never give up on <em>your</em> dreams.
</p>

  3.1.7  Idiomatic Text (i) element: used for highlighting alternative voice or mood, idiomatic terms from another language, technical terms, and thoughts.

<p>
  There is a certain <i lang="fr">je ne sais quoi</i> in the air.
</p>

The lang attribute inside the open i tag is used to specify the language of the content. In this case, the language would be French. The i element does not indicate if the text is important or not, it only shows that it's somehow different from the surrounding text.

    3.1.8 Strong Importance (strong) element: marks text that has strong importance.

<p>
  <strong>Warning:</strong> This product may cause allergic reactions.
</p>

  3.1.9  Bring Attention To (b) element: used to bring attention to text that is not important for the meaning of the content. It's commonly used to highlight keywords in summaries or product names in reviews.

<p>
  We tested several products, including the <b>SuperSound 3000</b> for audio quality, the <b>QuickCharge Pro</b> for fast charging, and the <b>Ecoclean Vacuum</b> for cleaning. The first two performed well, but the <b>Ecoclean Vacuum</b> did not meet expectations.
</p>

   3.1.10 Description List (dl) element: used to represent a list of term-description groupings.
    Description Term (dt) element: used to represent the term being defined.
    Description Details (dd) element: used to represent the description of the term.

<dl>
  <dt>HTML</dt>
  <dd>HyperText Markup Language</dd>
  <dt>CSS</dt>
  <dd>Cascading Style Sheets</dd>
</dl>

   3.1.11 Block Quotation (blockquote) element: used to represent a section that is quoted from another source. This element has a cite attribute. The value of the cite attribute is the URL of the source.

<blockquote cite="https://www.freecodecamp.org/news/learn-to-code-book/">
  "Can you imagine what it would be like to be a successful developer? To have built software systems that people rely upon?"
</blockquote>

    3.1.12 Citation (cite) element: used to attribute the source of the referenced work visually. Marks up the title of the reference.

<div>
  <blockquote cite="https://www.freecodecamp.org/news/learn-to-code-book/">
    "Can you imagine what it would be like to be a successful developer? To have built software systems that people rely upon?"
  </blockquote>
  <p>
    -Quincy Larson, <cite>How to learn to Code and Get a Developer Job [Full Book].</cite>
  </p>
</div>

   3.1.13 Inline Quotation (q) element: used to represent a short inline quotation.

<p>
  As Quincy Larson said,
  <q cite="https://www.freecodecamp.org/news/learn-to-code-book/">
    Momentum is everything.
  </q>
</p>

    3.1.14 Abbreviation (abbr) element: used to represent an abbreviation or acronym. To help users understand what the abbreviation or acronym is, you can show its full form, a human readable description, with the title attribute.

<p>
  <abbr title="HyperText Markup Language">HTML</abbr> is the foundation of the web.
</p>

    3.1.15 Contact Address (address) element: used to represent the contact information.
    
    3.1.16 (Date) Time (time) element: used to represent a date and/or time. The datetime attribute is used to translate dates and times into a machine-readable format.

<p>
  The reservations are for the <time datetime="20:00">20:00 </time>
</p>

    3.1.17 ISO 8601 Date (datetime) attribute: used to represent dates and times in a machine-readable format. The standard format is YYYY-MM-DDThh:mm:ss, with the capital T being a separator between the date and time.
    3.1.18 Superscript (sup) element: used to represent superscript text. Common use cases for the sup element would include exponents, superior lettering and ordinal numbers.

<p>
  2<sup>2</sup> (2 squared) is 4.
</p>

    3.1.19 Subscript (sub) element: used to represent subscript text. Common use cases for the subscript element include chemical formulas, footnotes, and variable subscripts.

<p>
  CO<sub>2</sub>
</p>

    3.1.20 Inline Code (code) element: used to represent a fragment of computer code.
    Preformatted Text (pre) element: represents preformatted text

<pre>
  <code>
    body {
      color: red;
    }
  </code>
</pre>

    3.1.21 Unarticulated Annotation (u) element: used to represent a span of inline text which should be rendered in a way that indicates that it has a non-textual annotation.

<p>
  You can use the unarticulated annotation element to highlight
  <u>inccccort</u> <u>spling</u> <u>issses</u>.
</p>

    3.1.22 Ruby Annotation (ruby) element: used for annotating text with pronunciation or meaning explanations. An example usage is for East Asian typography.
    Ruby fallback parenthesis (rp) element: used as a fallback for browsers lacking support for displaying ruby annotations.
    Ruby text (rt) element: used to indicate text for the ruby annotation. Usually used for pronunciation, or translation details in East Asian typography.

<ruby>
  明日 <rp>(</rp><rt>Ashita</rt><rp>)</rp>
</ruby>

    3.1.23 Strikethrough (s) element: used to represent content that is no longer accurate or relevant.

<p>
  <s>Tomorrow's hike will be meeting at noon.</s>
</p>
<p>
  Due to unforeseen weather conditions, the hike has been canceled.
</p>

   3.1.24 Internal links: used to link to another section of the page by using href="#id" on an a element and giving the destination element the same id. This is commonly used for skip links, table of contents, or long pages with multiple sections.

<a href="#about-section">Go to About Section</a>

<section id="about-section">
  <h2>About</h2>
  <p>This is the about section of the page.</p>
</section>
