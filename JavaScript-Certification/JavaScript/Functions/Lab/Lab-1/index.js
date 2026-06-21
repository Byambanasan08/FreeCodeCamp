function booWho(isTrueOrFalse) {
  if (typeof isTrueOrFalse === "boolean") {
    return true;
  } else {
    return false;
  }
}
const checkResult = booWho(true);

console.log(checkResult);
