# JavaScript Math Review

1. Working with the Number Data Type

   1.1 Definition: JavaScript's Number type includes integers, floating-point numbers, Infinity and NaN. Floating-point numbers are numbers with a decimal point. Positive Infinity is a number greater than any other number while -Infinity is a number smaller than any other number. NaN (Not a Number) represents an invalid numeric value like the string "Jessica".

2. Common Arithmetic Operations

   2.1 Addition Operator: This operator (+) is used to calculate the sum of two or more numbers.
   2.2 Subtraction Operator: This operator (-) is used to calculate the difference between two numbers.
   2.3 Multiplication Operator: This operator (\*) is used to calculate the product of two or more numbers.
   2.4 Division Operator: This operator (/) is used to calculate the quotient between two numbers
   2.5 Division By Zero: If you try to divide by zero, JavaScript will return Infinity.
   2.6 Remainder Operator: This operator(%) returns the remainder of a division.
   2.7 Exponentiation Operator: This operator (\*\*) raises one number to the power of another.

3. Calculations with Numbers and Strings

   3.1 Explanation: When you use the + operator with a number and a string, JavaScript will coerce the number into a string and concatenate the two values. When you use the -, \* or / operators with a string and number, JavaScript will coerce the string into a number and the result will be a number. For null and undefined, JavaScript treats null as 0 and undefined as NaN in mathematical operations.

const result = 5 + '10';

console.log(result); // "510"
console.log(typeof result); // string

const subtractionResult = '10' - 5;
console.log(subtractionResult); // 5
console.log(typeof subtractionResult); // number

const multiplicationResult = '10' \* 2;
console.log(multiplicationResult); // 20
console.log(typeof multiplicationResult); // number

const divisionResult = '20' / 2;
console.log(divisionResult); // 10
console.log(typeof divisionResult); // number

const result1 = null + 5;
console.log(result1); // 5
console.log(typeof result1); // number

const result2 = undefined + 5;
console.log(result2); // NaN
console.log(typeof result2); // number

4. Operator Precedence

   4.1 Definition: Operator precedence determines the order in which operations are evaluated in an expression. Operators with higher precedence are evaluated before those with lower precedence. Values inside the parenthesis will be evaluated first and multiplication/division will have higher precedence than addition/subtraction. If the operators have the same precedence, then JavaScript will use associativity.

const result = (2 + 3) \* 4;

console.log(result); // 20

const result2 = 10 - 2 + 3;

console.log(result2); // 11

const result3 = 2 ** 3 ** 2;

console.log(result3); // 512

    4.2 Definition: Associativity informs us the direction in which an expression is evaluated when multiple operators of the same type exist. It defines whether the expression should be evaluated from left-to-right (left-associative) or right-to-left (right-associative). For example, the exponent operator is also right to left associative:

const result4 = 5 ** 4 ** 1;

console.log(result4); // 625

5. Increment and Decrement Operators

   5.1 Increment Operator: This operator is used to increase the value by one. The prefix notation ++num increases the value of the variable first, then returns a new value. The postfix notation num++ returns the current value of the variable first, then increases it.

let x = 5;

console.log(++x); // 6
console.log(x); // 6

let y = 5;

console.log(y++); // 5
console.log(y); // 6

    5.2 Decrement Operator: This operator is used to decrease the value by one. The prefix notation and postfix notation work the same way as earlier with the increment operator.

let num = 5;

console.log(--num); // 4
console.log(num--); // 4
console.log(num); // 3

6. Compound Assignment Operators

   6.1 Addition Assignment (+=) Operator: This operator performs addition on the values and assigns the result to the variable.
   6.2 Subtraction Assignment (-=) Operator: This operator performs subtraction on the values and assigns the result to the variable.
   6.3 Multiplication Assignment (\*=) Operator: This operator performs multiplication on the values and assigns the result to the variable.
   6.4 Division Assignment (/=) Operator: This operator performs division on the values and assigns the result to the variable.
   6.5 Remainder Assignment (%=) Operator: This operator divides a variable by the specified number and assigns the remainder to the variable.
   6.6 Exponentiation Assignment (\*\*=) Operator: This operator raises a variable to the power of the specified number and reassigns the result to the variable.

7. Booleans and Equality

   7.1 Boolean Definition: A boolean is a data type that can only have two values: true or false.
   7.2 Equality (==) Operator: This operator uses type coercion before checking if the values are equal.

console.log(5 == '5'); // true

7.3 Strict Equality (===) Operator: This operator does not perform type coercion and checks if both the types and values are equal.

console.log(5 === '5'); // false

7.4 Inequality (!=) Operator: This operator uses type coercion before checking if the values are not equal.
7.5 Strict Inequality (!==) Operator: This operator does not perform type coercion and checks if both the types and values are not equal.

8. Comparison Operators

   8.1 Greater Than (>) Operator: This operator checks if the value on the left is greater than the one on the right.
   8.2 Greater Than (>=) or Equal Operator: This operator checks if the value on the left is greater than or equal to the one on the right.
   8.3 Less Than (<) Operator: This operator checks if the value on the left is less than the one on the right.
   8.4 Less Than (<=) or Equal Operator: This operator checks if the value on the left is less than or equal to the one on the right.

9. Unary Operators

   9.1 Unary Plus Operator: This operator converts its operand into a number. If the operand is already a number, it remains unchanged.

const str = '42';
const num = +str;

console.log(num); // 42
console.log(typeof num); // number

    9.2 Unary Negation (-) Operator: This operator negates the operand.

const num = 4;
console.log(-num); // -4

    9.3 Logical NOT (!) Operator: This operator flips the boolean value of its operand. So, if the operand is true, it becomes false, and if it's false, it becomes true.

10. Bitwise Operators

    10.1 Bitwise AND (&) Operator: This operator returns a 1 in each bit position for which the corresponding bits of both operands are 1.
    10.2 Bitwise AND Assignment (&=) Operator: This operator performs a bitwise AND operation with the specified number and reassigns the result to the variable.
    10.3 Bitwise OR (|) Operator: This operator returns a 1 in each bit position for which the corresponding bits of either or both operands are 1.
    10.4 Bitwise OR Assignment (|=) Operator: This operator performs a bitwise OR operation with the specified number and reassigns the result to the variable.
    10.5 Bitwise XOR (^) Operator: This operator returns a 1 in each bit position for which the corresponding bits of either, but not both, operands are 1.
    10.6 Bitwise NOT (~) Operator: This operator inverts the binary representation of a number.
    10.7 Left Shift (<<) Operator: This operator shifts all bits to the left by a specified number of positions.
    10.8 Right Shift (>>) Operator: This operator shifts all bits to the right.

11. Conditional Statements, Truthy Values, Falsy Values and the Ternary Operator

    11.1 if/else if/else: An if statement takes a condition and runs a block of code if that condition is truthy. If the condition is false, then it moves to the else if block. If none of those conditions are true, then it will execute the else clause. Truthy values are any values that result in true when evaluated in a Boolean context like an if statement. Falsy values are values that evaluate to false in a Boolean context.

const score = 87;

if (score >= 90) {
console.log('You got an A');
} else if (score >= 80) {
console.log('You got a B'); // You got a B
} else if (score >= 70) {
console.log('You got a C');
} else {
console.log('You failed! You need to study more!');
}

    11.2 Ternary Operator: This operator is often used as a shorter way to write if else statements.

const temperature = 30;
const weather = temperature > 25 ? 'sunny' : 'cool';

console.log(`It's a ${weather} day!`); // It's a sunny day!

12. Binary Logical Operators

    12.1 Logical AND (&&) Operator: This operator checks if both operands are true. If both are true, then it will return the second value. If either operand is falsy, then it will return the falsy value. If both operands are falsy, it will return the first falsy value.

const result = true && 'hello';

console.log(result); // hello

12.2 Logical OR (||) Operator: This operator checks if at least one of the operands is truthy.
12.3 Nullish Coalescing (??) Operator: This operator will return a value only if the first one is null or undefined.

const userSettings = {
theme: null,
volume: 0,
notifications: false,
};

let theme = userSettings.theme ?? 'light';
console.log(theme); // light

13. The Math Object

    13.1 The Math.random() Method: This method generates a random floating-point number between 0 (inclusive) and 1 (exclusive). This means the possible output can be 0, but it will never actually reach 1.
    13.2 The Math.max() Method: This method takes a set of numbers and returns the maximum value.
    13.3 The Math.min() Method: This method takes a set of numbers and returns the minimum value.
    13.4 The Math.ceil() Method: This method rounds a value up to the nearest whole integer.
    13.5 The Math.floor() Method: This method rounds a value down to the nearest whole integer.
    13.6 The Math.round() Method: This method rounds a value to the nearest whole integer.

console.log(Math.round(2.3)); // 2
console.log(Math.round(4.5)); // 5
console.log(Math.round(4.8)); // 5

    13.7 The Math.trunc() Method: This method removes the decimal part of a number, returning only the integer portion, without rounding.
    13.8 The Math.sqrt() Method: This method will return the square root of a number.
    13.9 The Math.cbrt() Method: This method will return the cube root of a number.
    13.10 The Math.abs() Method: This method will return the absolute value of a number.
    13.11 The Math.pow() Method: This method takes two numbers and raises the first to the power of the second.

14. Common Number Methods

    14.1 isNaN(): NaN stands for "Not-a-Number". It's a special value that represents an unrepresentable or undefined numerical result. The isNaN() function property is used to determine whether a value is NaN or not. Number.isNaN() provides a more reliable way to check for NaN values, especially in cases where type coercion might lead to unexpected results with the global isNaN() function.

console.log(isNaN(NaN)); // true
console.log(isNaN(undefined)); // true
console.log(isNaN({})); // true

console.log(isNaN(true)); // false
console.log(isNaN(null)); // false
console.log(isNaN(37)); // false

console.log(Number.isNaN(NaN)); // true
console.log(Number.isNaN(Number.NaN)); // true
console.log(Number.isNaN(0 / 0)); // true

console.log(Number.isNaN("NaN")); // false
console.log(Number.isNaN(undefined)); // false

    14.2 The parseFloat() Method: This method parses a string argument and returns a floating-point number. It's designed to extract a number from the beginning of a string, even if the string contains non-numeric characters later on.
    14.3 The parseInt() Method: This method parses a string argument and returns an integer. parseInt() stops parsing at the first non-digit it encounters. For floating-point numbers, it returns only the integer part. If it can't find a valid integer at the start of the string, it returns NaN.
    14.4 The toFixed() Method: This method is called on a number and takes one optional argument, which is the number of digits to appear after the decimal point. It returns a string representation of the number with the specified number of decimal places.
