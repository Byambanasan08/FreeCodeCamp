# Data Structures Review

1. Algorithms and Big O Notation

   1.1 Algorithms: A set of unambiguous instructions for solving a problem or carrying out a task. Algorithms must finish in a finite number of steps and each step must be precise and unambiguous.

   1.2 Big O Notation: Describes the worst-case performance, or growth rate, of an algorithm as the input size increases. It focuses on how resource usage grows with input size, ignoring constant factors and lower-order terms.

2. Common Time Complexities

   2.1 O(1) - Constant Time: Algorithm takes the same amount of time regardless of input size.

function checkEvenOrOdd(number) {
if (number % 2 === 0) {
return "Even";
} else {
return "Odd";
}
}

console.log(checkEvenOrOdd(4)) // "Even"
console.log(checkEvenOrOdd(5)) // "Odd"

2.2 O(log n) - Logarithmic Time: Time increases slowly as input grows. Common in algorithms that repeatedly reduce problem size by a fraction (like Binary Search).

    2.3 O(n) - Linear Time: Running time increases proportionally to input size.

for (const grade of grades) { // grades is an array
console.log(grade);
}

2.4 O(n log n) - Log-Linear Time: Common time complexity of efficient sorting algorithms like Merge Sort and Quick Sort.

2.5 O(n²) - Quadratic Time: Running time increases quadratically. Often seen in nested loops.

const n = 3;

for (let i = 0; i < n; i++) {
for (let j = 0; j < n; j++) {
console.log("Hello, World!");
}
}

3. Space Complexity

   3.1 O(1) - Constant Space: Algorithm uses same amount of memory regardless of input size.
   3.2 O(n) - Linear Space: Memory usage grows proportionally with input size.
   3.3 O(n²) - Quadratic Space: Memory usage grows quadratically with input size.

4. Problem-Solving Techniques

   4.1 Understanding the Problem: Read the problem statement multiple times. Identify the input, expected output, and how to transform input to output.

   4.2 Pseudocode: High-level description of algorithm logic that is language-independent. Uses common written language mixed with programming constructs like IF, ELSE, FOR, WHILE.

GET original_string
SET reversed_string = ""
FOR EACH character IN original_string:
ADD character TO THE BEGINNING OF reversed_string
DISPLAY reversed_string

    4.3 Edge Cases: Specific, valid inputs that occur at the boundaries of what an algorithm should handle. Always consider and test edge cases.

5. Arrays

   5.1 Static Arrays: Have a fixed size determined at initialization. Elements stored in adjacent memory locations. Size cannot be changed during program execution.

   5.2 Dynamic Arrays: Can grow or shrink automatically during program execution. Handle resizing through automatic copying to larger arrays when needed.

6. Dynamic Arrays Implementation in JavaScript

let numbers = [3, 4, 5, 6];
// Access elements
console.log(numbers[0]) // 3

// Update elements
numbers[2] = 16
console.log([...numbers]); // [3, 4, 16, 6]

// Add elements
numbers.push(7)
console.log([...numbers]); // [3, 4, 16, 6, 7]

// Add at a specific index
numbers.splice(3, 0, 15);
console.log([...numbers]); // [3, 4, 16, 15, 6, 7]

// Remove elements
numbers.splice(2, 1); // Remove at specific index
console.log([...numbers]); // [3, 4, 15, 6, 7]

numbers.pop() // Remove last element
console.log([...numbers]); // [3, 4, 15, 6]

Time Complexities for Dynamic Arrays

    Access: O(1)
    Insert at end: O(1) average, O(n) when resizing needed
    Insert in middle: O(n)
    Delete: O(n) for middle, O(1) for end

7. Stacks

   7.1 Stacks: Last-In, First-Out (LIFO) data structure. Elements added and removed from the top only.

   7.2 Push Operation: Adding an element to the top of the stack. Time complexity: O(1).

   7.3 Pop Operation: Removing an element from the top of the stack. Time complexity: O(1).

// Using JavaScript array as a stack

let stack = [];

// Push operations
stack.push(1);
stack.push(2);
stack.push(3);
console.log([...stack]); // [1, 2, 3]

// Pop operations
let topElement = stack.pop();
console.log(topElement); // 3
console.log([...stack]); // [1, 2]

8. Queues

   8.1 Queues: First-In, First-Out (FIFO) data structure. Elements added to the back and removed from the front.

   8.2 Enqueue Operation: Adding an element to the back of the queue. Time complexity: O(1).

   8.3 Dequeue Operation: Removing an element from the front of the queue. Time complexity: O(1).

// Using JavaScript array as a queue
let queue = [];

// Enqueue operations
queue.push(1);
queue.push(2);
queue.push(3);
console.log([...queue]); // [1, 2, 3]

// Dequeue operations
let firstElement = queue.shift();
console.log(firstElement); // 1
console.log([...queue]); // [2, 3]

9. Linked Lists

   9.1 Linked Lists: Linear data structure where each node contains data and a reference to the next node. Nodes are connected like a chain.

   9.2 Singly Linked Lists

   Structure: Each node has data and one reference to the next node.
   Traversal: Can only move forward from head to tail.
   Head Node: First node in the list, usually the only directly accessible node.
   Tail Node: Last node in the list, points to null.

9.3 Operations and Time Complexities

    Insert at beginning: O(1)
    Insert at end: O(n) - must traverse to end
    Insert in middle: O(n) - must traverse to position
    Delete from beginning: O(1)
    Delete from end: O(n) - must traverse to find previous node
    Delete from middle: O(n) - must traverse to find node

9.4 Doubly Linked Lists

    Structure: Each node has data and two references: next node and previous node.
    Traversal: Can move in both directions.
    Memory: Requires more memory than singly linked lists due to extra reference.

9.5 When to Use Each Data Structure

    Arrays (dynamic arrays): When you need ordered, indexed access and don't know size in advance
    Stacks: For LIFO operations (undo functionality, expression evaluation, backtracking)
    Queues: For FIFO operations (task scheduling, breadth-first search)
    Linked Lists: When frequent insertion/deletion at beginning, unknown size, no random access needed
