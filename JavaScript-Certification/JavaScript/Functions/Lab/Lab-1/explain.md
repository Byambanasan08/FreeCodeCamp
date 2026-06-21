## Build a Boolean Check Function

In this lab, you will build a function that checks if a value is classified as a boolean primitive.

Boolean primitives are true and false.

Objective: Fulfill the user stories below and get all the tests to pass to complete the lab.

User Stories:

    1. You should have a function called booWho that receives one argument.
    2. If the argument received is a boolean primitive, the function should return true.
    3. If the argument is any other value, the function should return false.

Tests:

    Passed: 1. You should have a booWho function.
    Passed: 2. booWho(true) should return true.
    Passed: 3. booWho(false) should return true.
    Passed: 4. booWho([1, 2, 3]) should return false.
    Passed: 5. booWho([].slice) should return false.
    Passed: 6. booWho({ "a": 1 }) should return false.
    Passed: 7. booWho(1) should return false.
    Passed: 8. booWho(NaN) should return false.
    Passed: 9. booWho("a") should return false.
    Passed: 10. booWho("true") should return false.
    Passed: 11. booWho("false") should return false.
