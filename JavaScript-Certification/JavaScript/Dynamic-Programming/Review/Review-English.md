# Dynamic Programming Review

1. Introduction to Dynamic Programming

   1.1 Definition: Dynamic programming is an algorithmic technique that solves complex problems by breaking them down into simpler subproblems and storing the results to avoid redundant calculations.
   1.2 Overlapping Subproblems: The same smaller problems appear multiple times when solving the larger problem. Instead of recalculating these subproblems repeatedly, we store their solutions.
   1.3 Optimal Substructure: The optimal solution to the problem contains optimal solutions to its subproblems. This means we can build up the best solution by combining the best solutions to smaller parts.

2. Dynamic Programming Solutions

   2.1 Memoization (Top-Down Approach): Memoization stores the results of expensive function calls and returns the cached result when the same inputs occur again.

function climbStairsMemo(n, memo = {}) {
// If already calculated, return cached value
if (memo[n] !== undefined) {
return memo[n];
}

// Base cases: 1 way for 1 step, 2 ways for 2 steps
if (n <= 2) {
return n;
}

// Calculate once and store in memo for future use
memo[n] =
climbStairsMemo(n - 1, memo) +
climbStairsMemo(n - 2, memo);

return memo[n];
}

    2.2 Tabulation (Bottom-Up Approach): Tabulation builds the solution from the ground up, filling a table with solutions to subproblems.

function climbStairsTabulation(n) {
if (n <= 2) {
return n;
}

// Create an array to store solutions from 0 to n
const dp = new Array(n + 1).fill(0);

// Base cases
dp[1] = 1; // 1 way to reach step 1
dp[2] = 2; // 2 ways to reach step 2

// Build up the solution iteratively
for (let i = 3; i <= n; i++) {
// Ways to reach step i = ways to reach (i-1) + ways to reach (i-2)
dp[i] = dp[i - 1] + dp[i - 2];
}

return dp[n];
}

3. Real-World Applications Using Dynamic Programming

   3.1 Route Optimization: GPS systems use dynamic programming algorithms to find shortest paths between locations.
   3.2 Text Processing: Spell checkers and autocomplete features often rely on dynamic programming to calculate edit distances between words.
   3.3 Financial Modeling: Investment strategies and portfolio optimization frequently employ dynamic programming techniques.
   3.4 Resource Allocation: The knapsack problem and its variants appear in scheduling, budgeting, and resource management.

4. When to Use Dynamic Programming

You should consider using dynamic programming in the following scenarios:

    The problem can be broken down into overlapping subproblems.
    The problem exhibits optimal substructure.
    A naive recursive solution would involve repeated calculations.
    You need to optimize for time complexity at the cost of space complexity.
