function largestOfAll(arr) {
  let result = [];
  for (let i = 0; i < arr.length; i++) {
    let maxNum = arr[i][0];
    for (let j = 0; j < arr[i].length; j++) {
      if (maxNum < arr[i][j]) {
        maxNum = arr[i][j];
      }
    }
    result.push(maxNum);
  }
  return result;
}

const maxNumbers = largestOfAll([
  [0, 10],
  [18, 20],
  [10, 1000],
]);

console.log(maxNumbers);
