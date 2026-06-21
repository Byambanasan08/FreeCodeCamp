# DOM Manipulation and Click Events with JavaScript Review

1. Working with the DOM and Web APIs

   1.1 API: An API (Application Programming Interface) is a set of rules and protocols that allow software applications to communicate with each other and exchange data efficiently.
   1.2 Web API: Web APIs are specifically designed for web applications. These types of APIs are often divided into two main categories: browser APIs and third-party APIs.
   1.3 Browser APIs: These APIs expose data from the browser. As a web developer, you can access and manipulate this data using JavaScript.
   1.4 Third-Party APIs: These are not built into the browser by default. You have to retrieve their code in some way. Usually, they will have detailed documentation explaining how to use their services. An example is the Google Maps API, which you can use to display interactive maps on your website.
   1.5 DOM: The DOM stands for Document Object Model. It's a programming interface that lets you interact with HTML documents. With the DOM, you can add, modify, or delete elements on a webpage. The root of the DOM tree is the html element. It's the top-level container for all the content of an HTML document. All other nodes are descendants of this root node. Then, below the root node, we find other nodes in the hierarchy. A parent node is an element that contains other elements. A child node is an element that is contained within another element.
   1.6 navigator Interface: This provides information about the browser environment, such as the user agent string, the platform, and the version of the browser. A user agent string is a text string that identifies the browser and operating system being used.
   1.7 window Interface: This represents the browser window that contains the DOM document. It provides methods and properties for interacting with the browser window, such as resizing the window, opening new windows, and navigating to different URLs.

2. Working with the querySelector(), querySelectorAll() and getElementById() Methods

   2.1 getElementById() Method: This method is used to get an object that represents the HTML element with the specified id. Remember that ids must be unique in every HTML document, so this method will only return one Element object.

<div id="container"></div>
<script src="./index.js"></script>

const container = document.getElementById("container");
console.log(container)

2.2 querySelector() Method: This method is used to get the first element in the HTML document that matches the CSS selector passed as an argument.

<section class="section"></section>
<script src="./index.js"></script>

const section = document.querySelector(".section");
console.log(section)

    2.3 querySelectorAll() Method: You can use this method to get a list of all the DOM elements that match a specific CSS selector.

<ul class="ingredients">
  <li>Sugar</li>
  <li>Milk</li>
  <li>Eggs</li>
</ul>
<script src="./index.js"></script>

const ingredients = document.querySelectorAll('ul.ingredients li');
console.log(ingredients)

3. Working with the innerText(), innerHTML(), createElement() and textContent() Methods

   3.1 innerHTML Property: This is a property of the Element that is used to set or update parts of the HTML markup.

<div id="container">
  <!-- Add new elements here -->
</div>
<script src="./index.js"></script>

const container = document.getElementById("container");
container.innerHTML = '<ul><li>Cheese</li><li>Tomato</li></ul>';

    3.2 createElement Method: This is used to create an HTML element.

const img = document.createElement("img");

3.3 innerText: This represents the visible text content of the HTML element and its descendants.

<div id="container">
  <p>Hello, World!</p>
  <p>I'm learning JavaScript</p>
</div>
<script src="./index.js"></script>

const container = document.getElementById("container");
console.log(container.innerText);

    3.4 textContent: This returns the plain text content of an element, including all the text within its descendants.

<div id="container">
  <p>Hello, World!</p>
  <p>I'm learning JavaScript</p>
</div>
<script src="./index.js"></script>

const container = document.getElementById("container");
console.log(container.textContent);

4. Working with the appendChild() and removeChild() Methods

   4.1 appendChild() Method: This method is used to add a node to the end of the list of children of a specified parent node.

<ul id="desserts">
  <li>Cake</li>
  <li>Pie</li>
</ul>
<script src="./index.js"></script>

const dessertsList = document.getElementById("desserts");
const listItem = document.createElement("li");

listItem.textContent = "Cookies";
dessertsList.appendChild(listItem);

    4.2 removeChild() Method: This method is used to remove a node from the DOM.

<section id="example-section">
  <h2>Example sub heading</h2>
  <p>first paragraph</p>
  <p>second paragraph</p>
</section>
<script src="./index.js"></script>

const sectionEl = document.getElementById("example-section");
const lastParagraph = document.querySelector("#example-section p:last-of-type");

sectionEl.removeChild(lastParagraph);

5. Work with the setAttribute() Method

   5.1 Definition: This method is used to set the attribute for a given element. If the attribute already exists, then the value is updated. Otherwise, a new attribute is added with a value.

<p id="para">I am a paragraph</p>
<script src="./index.js"></script>

const para = document.getElementById("para");
para.setAttribute("class", "my-class");

6. Event Object

   6.1 Definition: The Event object is a payload that triggers when a user interacts with your web page in some way. These interactions can be anything from clicking on a button or focusing an input to shaking their mobile device. All Event objects will have the type property. This property reveals the type of event that triggered the payload, such as keydown or click. These values will correspond to the same values you might pass to addEventListener(), where you can capture and utilize the Event object.

7. addEventListener() and removeEventListener() Methods

   7.1 addEventListener Method: This method is used to listen for events. It takes two arguments: the event you want to listen for and a function that will be called when the event occurs. Some common examples of events would be click events, input events, and change events.

<button id="btn">Click Me</button>

<script src="./index.js"></script>

const btn = document.getElementById("btn");

btn.addEventListener("click", () => alert("You clicked the button"));

7.2 removeEventListener() Method: This method is used to remove an event listener that was previously added to an element using the addEventListener() method. This is useful when you want to stop listening for a particular event on an element.

<body>
  <p id="para">Hover over me to disable the button's click event</p>
  <button id="btn">Toggle Background Color</button>
</body>
<script src="./index.js"></script>

const bodyEl = document.querySelector("body");
const para = document.getElementById("para");
const btn = document.getElementById("btn");

let isBgColorGrey = true;

function toggleBgColor() {
bodyEl.style.backgroundColor = isBgColorGrey ? "blue" : "grey";
isBgColorGrey = !isBgColorGrey;
}

btn.addEventListener("click", toggleBgColor);

para.addEventListener("mouseover", () => {
btn.removeEventListener("click", toggleBgColor);
});

7.3 Inline Event Handlers: Inline event handlers are special attributes on an HTML element that are used to execute JavaScript code when an event occurs. In modern JavaScript, inline event handlers are not considered best practice. It is preferred to use the addEventListener method instead.

<button onclick="alert('Hello World!')">Show alert</button>

8. The Change Event

   8.1 Definition: The change event is a special event which is fired when the user modifies the value of certain input elements. Examples would include when a checkbox or a radio button is ticked. Or when the user makes a selection from something like a date picker or dropdown menu.

<label>
  Choose a programming language:
  <select class="language" name="language">
    <option value="">---Select One---</option>
    <option value="JavaScript">JavaScript</option>
    <option value="Python">Python</option>
    <option value="C++">C++</option>
  </select>
</label>

<p class="result"></p>
<script src="./index.js"></script>

const selectEl = document.querySelector(".language");
const result = document.querySelector(".result");

selectEl.addEventListener("change", (e) => {
result.textContent = `You enjoy programming in ${e.target.value}.`;
});

9. Event Bubbling

   9.1 Definition: Event bubbling, or propagation, refers to how an event "bubbles up" to parent objects when triggered.
   9.2 stopPropagation() Method: This method prevents further propagation for an event.

10. Event Delegation

    10.1 Definition: Event delegation is the process of listening to events that have bubbled up to a parent, rather than handling them directly on the element that triggered them.

11. DOMContentLoaded

    11.1 Definition: The DOMContentLoaded event is fired when everything in the HTML document has been loaded and parsed. If you have external stylesheets, or images, the DOMContentLoaded event will not wait for those to be loaded. It will only wait for the HTML to be loaded.

12. Working with style and classList

    12.1 Element.style Property: This property is a read-only property that represents the inline style of an element. You can use this property to get or set the style of an element.

<p id="para">This paragraph will turn red.</p>
<script src="./index.js"></script>

const paraEl = document.getElementById("para");
paraEl.style.color = "red";

12.2 Element.classList Property: This property is a read-only property that can be used to add, remove, or toggle classes on an element.

<link rel="stylesheet" href="./styles.css"/>
<p id="para" class="blue-background">This paragraph will have classes added and removed.</p>
<div id="menu" class="menu">Menu Content</div>
<button id="toggle-btn">Toggle Menu</button>
<script src="./index.js"></script>

.highlight {
background-color: yellow;
}

.blue-background {
background-color: lightblue;
}

.menu {
display: none;
padding: 10px;
background-color: #f0f0f0;
}

.menu.show {
display: block;
}

// Example adding a class
const paraEl = document.getElementById("para");
paraEl.classList.add("highlight");

// Example removing a class
paraEl.classList.remove("blue-background");

// Example toggling a class
const menu = document.getElementById("menu");
const toggleBtn = document.getElementById("toggle-btn");

toggleBtn.addEventListener("click", () => menu.classList.toggle("show"));

13. Working with the setTimeout() and setInterval() Methods

    13.1 setTimeout() Method: This method lets you delay an action for a specified time.

setTimeout(() => {
console.log('This runs after 3 seconds');
}, 3000);

    13.2 setInterval() Method: This method keeps runs a piece of code repeatedly at a set interval. Since setInterval() keeps executing the provided function at the specified interval, you might want to stop it. For this, you have to use the clearInterval() method.

setInterval(() => {
console.log('This runs every 2 seconds');
}, 2000);

// Example using clearInterval
const intervalID = setInterval(() => {
console.log('This will stop after 5 seconds');
}, 1000);

setTimeout(() => {
clearInterval(intervalID);
}, 5000);

14. The requestAnimationFrame() Method

    14.1 Definition: This method allows you to schedule the next step of your animation before the next screen repaint, resulting in a fluid and visually appealing experience. The next screen repaint refers to the moment when the browser refreshes the visual display of the web page. This happens multiple times per second, typically around 60 times (or 60 frames per second) on most displays.

function animate() {
// Update the animation...
// for example, move an element, change a style, and more.
update();
// Request the next frame
requestAnimationFrame(animate);
}

15. Web Animations API

    15.1 Definition: The Web Animations API lets you create and control animations directly inside JavaScript.

<link rel="stylesheet" href="./styles.css"/>
<div id="square"></div>
<script src="./index.js"></script>

#square {
width: 100px;
height: 100px;
background: red;
}

const square = document.querySelector('#square');

const animation = square.animate(
[{ transform: 'translateX(0px)' }, { transform: 'translateX(100px)' }],
{
duration: 2000, // makes animation lasts 2 seconds
iterations: Infinity, // loops indefinitely
direction: 'alternate', // moves back and forth
easing: 'ease-in-out', // smooth easing
}
);

16. The Canvas API

    16.1 Definition: The Canvas API is a powerful tool that lets you manipulate graphics right inside your JavaScript file. To work with the Canvas API, you first need to provide a canvas element in HTML. This element acts as a drawing surface you can manipulate with the instance methods and properties of the interfaces in the Canvas API. This API has interfaces like HTMLCanvasElement, CanvasRenderingContext2D, CanvasGradient, CanvasPattern, and TextMetrics which contain methods and properties you can use to create graphics in your JavaScript file.

<canvas id="my-canvas" width="400" height="400"></canvas>

<script src="./index.js"></script>

const canvas = document.getElementById('my-canvas');

// Access the drawing context of the canvas.
// "2d" allows you to draw in two dimensions
const ctx = canvas.getContext('2d');

// Set the background color
ctx.fillStyle = 'crimson';

// Draw a rectangle
ctx.fillRect(1, 1, 150, 100);

17. Opening and Closing Dialogs and Modals with JavaScript

    17.1 Modal and Dialog Definitions: Dialogs let you display important information or actions to users. With the HTML built-in dialog element, you can easily create these dialogs (both modal and non-modal dialogs) in your web apps. A modal dialog is a type of dialog that forces the user to interact with it before they can access the rest of the application or webpage. In contrast, a non-modal dialog allows the user to continue interacting with other parts of the page or application even when the dialog is open. It doesn't prevent access to the rest of the content.
    17.2 showModal() Method: This method is used to open a modal.

<dialog id="my-modal">
   <p>This is a modal dialog.</p>
</dialog>
<button id="open-modal">Open Modal Dialog</button>
<script src="./index.js"></script>

const dialog = document.getElementById('my-modal');
const openButton = document.getElementById('open-modal');

openButton.addEventListener('click', () => {
dialog.showModal();
});

17.3 close() Method: This method is used to close the modal.

<dialog id="my-modal">
   <p>This is a modal dialog.</p>
   <button id="close-modal">Close Modal</button>
</dialog>
<button id="open-modal">Open Modal Dialog</button>
<script src="./index.js"></script>

const dialog = document.getElementById('my-modal');
const openButton = document.getElementById('open-modal');
const closeButton = document.getElementById('close-modal');

openButton.addEventListener('click', () => {
dialog.show();
});

closeButton.addEventListener('click', () => {
dialog.close();
});
