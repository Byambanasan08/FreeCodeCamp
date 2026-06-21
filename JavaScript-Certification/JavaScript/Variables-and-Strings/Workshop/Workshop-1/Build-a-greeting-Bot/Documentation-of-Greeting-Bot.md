## Step 1

In this workshop you will learn how to work with JavaScript fundamentals by building a greeting bot.

In this first step, you will want to output a message to the console from the greeting bot.

Remember that you learned about console.log() and strings in previous lessons.

Here is a reminder of how to use console.log() with strings:

console.log("Hello, World!");

Add a console.log() statement that outputs the string "Hi there!" to the console. Don't forget your quotes around the message!

## Step 2

Now you should see the first message from the bot in the console.

It is time to add a second message from the bot.

Add another console.log statement to output the message "I am excited to talk to you." to the console.

## Step 3

In previous lessons, you learned about the let keyword and how to declare variables in JavaScript.

Here is a reminder of how to declare a variable using the let keyword:
Example Code

let greeting;

Use the let keyword to declare a variable called bot.

NOTE: You are using let here because later on in the workshop, you will be changing the value of the bot variable.


## Step 4

Now, it is time to assign a value to your bot variable.

In previous lessons, you learned how to assign values to variables like this:
Example Code

variableName = "Here is the value";

Remember that what is on the right side of the assignment operator = is the value that you are assigning to the variable on the left side.

Assign the string "teacherBot" to the bot variable.

## Step 5

Now, it is time to initialize the botLocation variable.

When you need to declare variables with multiple words, you can use the camelCase naming convention.

When using camelCase, the first word is all lowercase and the first letter of each subsequent word is capitalized.

Here is an example:
Example Code

let thisIsCamelCase = "Alice the camel is actually a horse.";

Declare and assign the string "the universe" to the botLocation variable on the same line using the let keyword.


## Step 6

Now, it is time to add another message from the bot.

Add another console statement to the code that logs the message "Allow me to introduce myself.".


## Step 7

Earlier, you created the bot and botLocation variables. Now, you will use them to output new messages to the console.

In previous lessons, you learned how to work with string concatenation using the + operator to concatenate strings together like this:
Example Code

let firstName = "John";

console.log("Hello, my name is " + firstName + ".");
// result: "Hello, my name is John."

Remember that you need to be mindful of spaces when concatenating strings with variables.

Create a variable called botIntroduction.

Then use string concatenation with the + operator to join the string "My name is " followed by the bot variable followed by a period (.).

Assign this value to the botIntroduction variable.

Then, log the botIntroduction variable to the console.

## Step 8

The next message from the bot will concern the bot's location.

Create a variable called botLocationSentence.

Then use string concatenation with the + operator to join the string "I live in " with the botLocation variable followed by a period (.).

Assign this value to the botLocationSentence variable.

Then, log the value of botLocationSentence to the console.

## Step 9

In previous lessons, you learned how to reassign values to variables like this:
Example Code

let name = "John";
console.log(name); // "John"

name = "Jane";
console.log(name); // "Jane"

Using reassignment, assign the string "professorBot" to the bot variable.

## Step 10

Now it is time to see the new bot value.

Start by creating a new variable called nicknameIntroduction.

Use string concatenation to join the string "My nickname is " with the bot variable followed by a period (.).

Assign the resulting string to the nicknameIntroduction variable.

Then, log the value of nicknameIntroduction to the console.

## Step 11

Now it looks like the bot wants to change their nickname.

Using reassignment, assign the string "awesomeTeacherBot" to the bot variable.


## Step 12

To see the bot's new nickname, you will need to log a new message to the console.

Create a new variable called newNicknameGreeting.

Then use string concatenation to join the string "I love my nickname but I wish people would call me " with the bot variable followed by a period.

Assign the result to the newNicknameGreeting variable.

Then, log the value of newNicknameGreeting to the console.

## Step 13

The last few messages from the bot will focus on the bot's favorite subject.

Start by creating a new variable called favoriteSubject and assign it the string "Computer Science".

## Step 14

Next, create a variable called favoriteSubjectSentence.

Use string concatenation to join the string "My favorite subject is " with the favoriteSubject variable followed by a period.

Assign the result to the favoriteSubjectSentence variable.

Then, log the value of favoriteSubjectSentence to the console.

## Step 15

For the final step, you will log the bot's message of "Well, it was nice to talk to you. Have a nice day!" to the console.

And with that, your greeting bot is complete!
