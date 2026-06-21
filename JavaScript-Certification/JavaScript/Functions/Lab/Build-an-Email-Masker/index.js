//input bambanasan076@gmail.com => output b***********6@gmail.com

let email = "info@test.dev";

function maskEmail(email) {
  const positionOfAt = email.indexOf("@");
  let userName = email.slice(0, positionOfAt);
  const domainName = email.slice(positionOfAt);
  const startChar = userName[0];
  const endChar = userName[userName.length - 1];
  const stars = "*".repeat(userName.length - 2);
  const convertName = `${startChar}${stars}${endChar}${domainName}`;
  return convertName;
}

const sentence = "This is masked " + maskEmail(email) + " email.";
console.log(sentence);
