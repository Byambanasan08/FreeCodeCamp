# TypeScript Review

## What is TypeScript

    JavaScript: JavaScript is a dynamically-typed language. This means that variables can receive any values at run time. The challenge of a dynamically-typed language is that the lack of type safety can introduce errors.

For example, even if your JavaScript function expects an array, you can still call it with a number:

const getRandomValue = (array) => {
return array[Math.floor(Math.random() * array.length)];
}

console.log(getRandomValue(10));

The console output for the example above will be undefined.

    TypeScript: TypeScript extends the JavaScript language to include static typing, which helps catch errors caused by type mismatches before you run your code.

For example, you can define a type for the array parameter as follows:

const getRandomValue = (array: string[]) => {
return array[Math.floor(Math.random() * array.length)];
}

This type definition tells TypeScript that the array parameter must be an array of strings. Then, when you call getRandomValue and pass it a number, you get an error called a compiler error.

    Compiler: You first need to compile TypeScript code into regular JavaScript. When you run the compiler, TypeScript will evaluate your code and throw an error for any issues where the types don't match.

## Data Types in TypeScript

    Primitive Data Types in TypeScript: For the primitive data types string, null, undefined, number, boolean, and bigint, TypeScript offers corresponding type keywords.

let str: string = "Naomi";
let num: number = 42;
let bool: boolean = true;
let nope: null = null;
let nada: undefined = undefined;

    Array: You can define an array of specific type with two different syntaxes.

const arrOne: string[] = ["Naomi"];
const arrTwo: Array<string> = ["Camperchan"];

    Objects: You can define the exact structure of an object.

const obj: { a: string, b: number } = { a: "Naomi", b: 42 };

If you want an object with any keys, but where all values must be strings, there are two ways to define it:

const objOne: Record<string, string> = {};
const objTwo: { [key: string]: string } = {};

    Other Helpful Types in TypeScript:
        any: any indicates that a value can have any type. It tells the compiler to stop caring about the type of that variable.
        unknown: unknown tells TypeScript that you do care about the type of the value, but you don’t actually know what it is. unknown is generally preferred over any.
        void: This is a special type that you’ll typically only use when defining functions. Functions that don’t have a return value use a return type of void.
        never: It represents a type that will never exist.

    type Keyword: This keyword is like const, but instead of declaring a variable, you can declare a type.

It is useful for declaring custom types such as union types or types that include only specific values:

type stringOrNumber = string | number;
type bot = "camperchan" | "camperbot" | "naomi";

    interface: Interfaces are like classes for types. They can implement or extend other interfaces, are specifically object types, and are generally preferred unless you need a specific feature offered by a type declaration.

interface wowie {
zowie: boolean;
method: () => void;
}

    Defining Return Type: You can also define the return type of the function.

The example below defines the return value as a string. If you try to return anything else, TypeScript will give a compiler error.

const getRandomValue = (array: string[]): string => {
return array[Math.floor(Math.random() * array.length)];
}

## Generics

    Defining Generic Type: You can define a generic type and refer to it in your function. It can be thought of as a special parameter you provide to a function to control the behavior of the function's type definition.

Here is an example of defining a generic type for a function:

const getRandomValue = <T>(array: T[]): T => {
return array[Math.floor(Math.random() * array.length)];
}
const val = getRandomValue([1, 2, 4])

The <T> syntax tells TypeScript that you are defining a generic type T for the function. T is a common name for generic types, but you can use any name.

Then, you tell TypeScript that the array parameter is an array of values matching the generic type, and that the returned value is a single element of that same type.

    Specifying Type Argument in Function Call: You can pass a type argument to a function call using angle brackets between the function name and its parameters.

Here is an example of passing a type argument to a function call:

const email = document.querySelector<HTMLInputElement>("#email");
console.log(email.value);

This tells TypeScript that the element you expect to find will be an input element.
