## Step 1

In this workshop, you'll review JavaScript conditionals by building a loan qualification checker app.

## The app will check whether the user is eligible for a duplex, car, and condo loan based on their annual income and credit score. A credit score is a number that represents how good you are at managing borrowed money.

Энэхүү сургалтаар та зээлийн эрх шалгагч аппликейшн бүтээх замаар JavaScript-ийн нөхцөлт шалгах операторуудыг (conditionals) бататгах болно.

## Уг апп нь хэрэглэгчийн жилийн орлого болон зээлийн оноонд (credit score) үндэслэн таунхаус (duplex), машин болон орон сууцны (condo) зээлд хамрагдах боломжтой эсэхийг шалгана. Зээлийн оноо гэдэг нь та зээлсэн мөнгөө хэр сайн удирдаж байгааг илэрхийлдэг тоон үзүүлэлт юм.

To get started, create the following variables and values.

1. Variable Name(Identifier) Value
2. minIncomeForDuplex 60000
3. minCreditScoreForDuplex 700
4. minIncomeForCondo 45000
5. minCreditScoreForCondo 680
6. minIncomeForCar 30000
7. minCreditScoreForCar 650

## Step 2

When the user is eligible for a loan, you'll want to display a message to them in the console.

For that, you'll build out a function inside which you'll have some checks that'll return what loan the applicant is eligible for.

Create an empty getLoanMessage function with an annualIncome and creditScore parameters.

## Step 3

To check which loan a user is qualified for based on the annualIncome and creditScore, you have to use if/else if statement or a ternary right inside the getLoanMessage function. You'll then return the appropriate message in the block of each condition.

Starting with the duplex loan, check if annualIncome is greater than or equal to minIncomeForDuplex AND if creditScore is greater than or equal to minCreditScoreForDuplex.

If that condition is true, then the applicant is eligible for a duplex loan and the other loans. So, inside the check, return the string "You qualify for a duplex, condo, and car loan."

## Step 4

If the applicant's annual income is greater than or equal to minIncomeForCondo, AND if their credit score is greater than or equal to minCreditScoreForCondo, then they qualify for a condo and car loan.

Check if that's true in the getLoanMessage function. If it is, return the string "You qualify for a condo and car loan."

## Step 5

Now, you should check if the applicant is qualified for a car loan only. If they are, return the string "You qualify for a car loan.".

## Step 6

If the applicant's annual income and credit score fall below minIncomeForCar and minCreditScoreForCar, then they don't qualify for any loan. So, return the string "You don't qualify for any loans."

## Step 7

Now, it is time to test out your getLoanMessage function.

Use the table below to create 4 variables and their values:

Variable Name Value
duplexLoanMsg getLoanMessage(85000, 850)
condoLoanMsg getLoanMessage(65000, 690)
carLoanMsg getLoanMessage(45000, 660)
noLoanMsg getLoanMessage(25000, 550)

After that, log each variable to the console to see the messages.

With that, your loan qualification checker project is complete!
