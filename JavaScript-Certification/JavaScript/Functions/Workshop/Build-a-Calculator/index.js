/*let thisIsVariable; // to declare variable

function thisIsFunction(){

} // to declare function */

/* const addTwoAndSeven = () => {
  return 2 + 7;
};

console.log(addTwoAndSeven());

function addThreeAndFour() {
  return 3 + 4;
}

console.log(addThreeAndFour());*/

function calculateSum(num1, num2) {
  return num1 + num2;
}
console.log("This is add action");
console.log(calculateSum(2, 5));
console.log(calculateSum(10, 10));
console.log(calculateSum(5, 5));

function calculateDifference(num1, num2) {
  return num1 - num2;
}

console.log("This is subtract action");
console.log(calculateDifference(22, 5));
console.log(calculateDifference(12, 1));
console.log(calculateDifference(17, 9));

function calculateProduct(num1, num2) {
  return num1 * num2;
}
console.log("This is multiplication action");
console.log(calculateProduct(13, 5));

function calculateQuotient(num1, num2) {
  if (num2 === 0) {
    return `Error: Division by zero`;
  } else {
    return num1 / num2;
  }
}
console.log("This is division action");
console.log(calculateQuotient(7, 11));
console.log(calculateQuotient(3, 0));

function calculateSquare(num) {
  const squareOf = Math.pow(num, 2);
  return squareOf;
}

console.log(calculateSquare(14));
console.log(calculateSquare(2));
console.log(calculateSquare(9));

function calculateSquareRoot(num) {
  return Math.sqrt(num);
}

console.log(calculateSquareRoot(25));
console.log(calculateSquareRoot(100));
