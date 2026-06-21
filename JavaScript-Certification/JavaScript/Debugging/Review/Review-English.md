# Debugging JavaScript Review

1. Common Types of Error Messages

   1.1 SyntaxError: These errors happen when you write something incorrectly in your code, like missing a parenthesis, or a bracket. Think of it like a grammar mistake in a sentence.

const arr = ["Beau", "Quincy" "Tom"]

1.2 ReferenceError: There are several types of Reference Errors, triggered in different ways. The first type of reference error would be not defined variables. Another example of a ReferenceError is trying to access a variable, declared with let or const, before it has been defined.

console.log(num);
const num = 50;

    1.3 TypeError: These errors occur when you try to perform an operation on the wrong type.

const developerObj = {
name: "Jessica",
country: "USA",
isEmployed: true
};

developerObj.map()

    RangeError: These errors happen when your code tries to use a value that's outside the range of what JavaScript can handle.

const arr = [];
arr.length = -1;

2. The throw Statement

   2.1 Definition: The throw statement in JavaScript is used to throw a user defined exception. An exception in programming, is when an unexpected event happens and disrupts the normal flow of the program.

function validateNumber(input) {
if (typeof input !== "number") {
throw new TypeError("Expected a number, but received " + typeof input);
}
return input \* 2;
}

console.log(validateNumber("Naomi")); // TypeError: Expected a number, but received string

3. try...catch...finally

   3.1 Definition: The try block is used to wrap code that might throw an error. It acts as a safe space to try something that could fail. The catch block captures and handles errors that occur in the try block. You can use the error object inside catch to inspect what went wrong. The finally block runs after the try and catch blocks, regardless of whether an error occurred. It's commonly used for cleanup tasks, such as closing files or releasing resources.

function processInput(input) {
if (typeof input !== "string") {
throw new TypeError("Input must be a string.");
}

return input.toUpperCase();
}

try {
console.log("Starting to process input...");
const result1 = processInput("hello");
console.log("Processed result:", result1); // HELLO
const result2 = processInput(9); // throws TypeError
console.log("Processed result:", result2); // not executed
} catch (error) {
console.error("Error occurred:", error.message);
}

4. Debugging Techniques

   4.1 debugger Statement: This statement lets you pause your code at a specific line to investigate what's going on in the program.

let firstNumber = 5;
let secondNumber = 10;

debugger; // Code execution pauses here
let sum = firstNumber + secondNumber;

console.log(sum);

    4.2 Breakpoints: Breakpoints let you pause the execution of your code at a specific line of your choice. After the pause, you can inspect variables, evaluate expressions, and examine the call stack.
    4.3 Watchers: Watch expressions lets you monitor the values of variables or expressions as the code runs even if they are out of the current scope.

4.4 Profiling: Profiling helps you identify performance bottlenecks by letting you capture screenshots and record CPU usage, function calls, and execution time.
4.5console.dir(): This method is used to display an interactive list of the properties of a specified JavaScript object. It outputs a hierarchical listing that can be expanded to see all nested properties.

console.dir(document);

46. console.table(): This method displays tabular data as a table in the console. It takes one mandatory argument, which must be an array or an object, and one optional argument to specify which properties (columns) to display.
