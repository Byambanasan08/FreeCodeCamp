## Step 1

In this workshop, you will review how to work with functions by building a calculator app.

In previous lessons, you learned how to declare functions like this:

// regular function
function myFunction() {

}

// arrow function
const myArrowFunction = () => {

}

Start by creating a function called addTwoAndSeven.

You can choose to use the regular function syntax or the arrow function syntax.

## Step 2

One of concepts you learned in previous lessons was how to return values from a function.

Here is a reminder of how to return a value from a function:
Example Code

function myFunction() {
return "Hello World";
}

Inside your addTwoAndSeven function, return the sum of 2 and 7.

## Step 3

In previous lessons, you learned how to call (invoke) a function. Calling a function means to execute the code inside the function.

Here is a reminder of how to call a function:
Example Code

function myFunction() {
return "Hello World";
}

// function call
myFunction();

Add a console.log statement, and inside it, call the addTwoAndSeven function.

You should now see the sum of 2 and 7 logged to the console.

## Step 4

Now, it is time to add another function.

Declare a function called addThreeAndFour that returns the sum of 3 and 4.

Then call the addThreeAndFour function inside a console.log to see the result.

## Step 5

Even though the functions work as expected, there is a lot of repetition in your code.

Since you are building a calculator, you don't want to have to create a function for every possible combination of numbers you want to add together.

It would be better to create a single reusable function that can add any two numbers together.

Remove all of the code you have written so far.

In the next step, you will review how to work with parameters and arguments in functions.

## Step 6

In previous lessons, you learned how to work with function parameters.

A function parameter is a variable that is defined in the function's declaration and acts as a placeholder.

Here is an example of a function that has a parameter:
Example Code

// The parameter is `name`
function greetUser(name) {
return `Hello, ${name}!`;
}

Declare a function called calculateSum that takes two parameters, num1 and num2.

## Step 7

Inside your calculateSum function, you will need to return the sum of the two parameters.

## Step 8

The advantage of functions is that they can be called with different arguments, allowing you to reuse the same code with various values.

Here are some example function calls with different string arguments:
Example Code

// function definition
function greetUser(name) {
console.log(`Hello ${name}!`);
}

// function calls
greetUser("John"); // "Hello John!"
greetUser("Jane"); // "Hello Jane!"

Add a console.log that calls the calculateSum function with the arguments 2 and 5.

## Step 9

To further test out your calculateSum function, you will need to call it with different arguments.

Add another console.log that calls the calculateSum function with the arguments 10 and 10.

Below that console.log, add another console.log that calls the calculateSum function with the arguments 5 and 5.

## Step 10

Now that your calculator can add two numbers together, it is time to create a function that will subtract two numbers.

Declare a function called calculateDifference that takes two parameters, num1 and num2.

Inside the function, return the difference between the two parameters.

## Step 11

Now it is time to test your calculateDifference function.

Start by adding a console.log that calls the calculateDifference function with the arguments 22 and 5.

Then, add a second console.log that calls the calculateDifference function with the arguments 12 and 1.

Finally, add a third console.log that calls the calculateDifference function with the arguments 17 and 9.

## Step 12

Now it is time to add the multiplication functionality to your calculator.

Declare a function called calculateProduct that takes two parameters, num1 and num2.

Inside the function, return the product of the two parameters.

Then, add a console.log that calls the calculateProduct function with the arguments 13 and 5.

## Step 13

The next step is to add the division functionality to your calculator.

Declare a function called calculateQuotient that takes two parameters, num1 and num2.

Inside the function, return the quotient of the two parameters.

Then, add a console.log that calls the calculateQuotient function with the arguments 7 and 11.

## Step 14

Your calculateQuotient appears to be working correctly but there is one case that you have not tested yet.

Add a console.log that calls the calculateQuotient function with the arguments 3 and 0.

Make sure to take a close look at the output of this call.

## Step 15

If you look in the console, you will see the Infinity value. Infinity is a special value in JavaScript that represents a number that is greater than any other number.

The division by zero is not a valid operation in mathematics.

To account for this edge case, you should update your calculateQuotient function to instead check if num2 is zero.

If it is, the function should return the string "Error: Division by zero". Otherwise, it should return the result of dividing num1 by num2.

## Step 16

It would be nice to have your calculator calculate the square of a number. The square of a number is the number multiplied by itself.

To calculate the square of a number in JavaScript, you can use the Math.pow() method. The Math.pow() method takes two arguments: the base number and the exponent.

You can also use the exponentiation operator (\*\*) to calculate the square of a number.

Here is an example:
Example Code

// base number is 5
// the exponent is 2
Math.pow(5, 2); // 25

// using the exponentiation operator
5 \*\* 2; // 25

Declare a function called calculateSquare that takes a num parameter and returns the square of num.

## Step 17

To test your calculateSquare function, you will need to call the function a couple of times.

Add a console.log that calls the calculateSquare function with the argument of 2.

Then, add another console.log that calls the calculateSquare function with the argument of 9.

## Step 18

The last piece of functionality for your calculator will be the square root functionality.

A square is a number multiplied by itself. So, the square root would be the number that when multiplied by itself gives the original number.

For example, the square root of 9 is 3 because 3 \* 3 = 9.

To get the square root of a number in JavaScript, you can use the Math.sqrt() method.

Here is an example:
Example Code

// result: 3
Math.sqrt(9);

Declare a function called calculateSquareRoot that takes a num parameter and returns the square root of num.

## Step 19

In the final step of the workshop, you will need to test out your calculateSquareRoot function.

Add a first console.log that calls the calculateSquareRoot function with the argument of 25.

Then, add a second console.log that calls the calculateSquareRoot function with the argument of 100.

And with those changes, your calculator app is complete!
