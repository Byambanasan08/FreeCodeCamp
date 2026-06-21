# Dynamic Programming тойм

1. Dynamic Programming-ийн танилцуулга

   1.1 Тодорхойлолт (Definition): Dynamic programming нь төвөгтэй бодлогуудыг илүү жижиг дэд бодлогууд болгон хувааж, давтагдсан тооцооллоос зайлсхийхийн тулд үр дүнг хадгалан шийддэг алгоритмын техник юм.

   1.2 Давхардсан дэд бодлогууд (Overlapping Subproblems): Том бодлогыг шийдэх явцад ижил жижиг бодлогууд олон дахин гарч ирдэг. Эдгээрийг дахин дахин тооцоолохын оронд бид тэдний шийдлийг хадгалдаг.

   1.3 Оновчтой дэд бүтэц (Optimal Substructure): Бодлогын оновчтой шийдэл нь түүний дэд бодлогуудын оновчтой шийдлүүдийг агуулдаг. Энэ нь бид жижиг хэсгүүдийн хамгийн сайн шийдлүүдийг нэгтгэн хамгийн сайн шийдлийг бүтээж чадна гэсэн үг.

2. Dynamic Programming шийдлүүд

   2.1 Memoization (Top-Down Approach): Memoization нь зардал ихтэй function дуудлагын үр дүнг хадгалж, ижил оролт дахин гарч ирэхэд хадгалсан үр дүнг буцаадаг.

```javascript id="nkwu1y"
function climbStairsMemo(n, memo = {}) {
  // Аль хэдийн тооцоолсон бол cache-д хадгалсан утгыг буцаана
  if (memo[n] !== undefined) {
    return memo[n];
  }

  // Суурь нөхцөлүүд (Base cases): 1 алхамд 1 арга, 2 алхамд 2 арга
  if (n <= 2) {
    return n;
  }

  // Нэг удаа тооцоолоод memo-д хадгална
  memo[n] = climbStairsMemo(n - 1, memo) + climbStairsMemo(n - 2, memo);

  return memo[n];
}
```

2.2 Tabulation (Bottom-Up Approach): Tabulation нь шийдлийг доороос нь эхлэн (ground up) бүтээж, дэд бодлогуудын шийдлүүдийг хүснэгтэд хадгалдаг.

```javascript id="bfcotz"
function climbStairsTabulation(n) {
  if (n <= 2) {
    return n;
  }

  // 0-оос n хүртэлх шийдлүүдийг хадгалах array үүсгэнэ
  const dp = new Array(n + 1).fill(0);

  // Суурь нөхцөлүүд
  dp[1] = 1; // 1-р алхамд хүрэх 1 арга
  dp[2] = 2; // 2-р алхамд хүрэх 2 арга

  // Итераци ашиглан шийдлийг бүтээнэ
  for (let i = 3; i <= n; i++) {
    // i-р алхамд хүрэх арга = (i-1)-д хүрэх арга + (i-2)-д хүрэх арга
    dp[i] = dp[i - 1] + dp[i - 2];
  }

  return dp[n];
}
```

3. Dynamic Programming-ийн бодит хэрэглээнүүд

   3.1 Замын оновчлол (Route Optimization): GPS системүүд dynamic programming алгоритмуудыг ашиглан байршлуудын хоорондох хамгийн богино замыг олдог.

   3.2 Текст боловсруулах (Text Processing): Үсгийн алдаа шалгагч болон autocomplete функцууд үгсийн хоорондох edit distance-ийг тооцоолохдоо dynamic programming ашигладаг.

   3.3 Санхүүгийн моделчлол (Financial Modeling): Хөрөнгө оруулалтын стратеги болон portfolio optimization-д dynamic programming техникийг ашигладаг.

   3.4 Нөөцийн хуваарилалт (Resource Allocation): Knapsack problem болон түүний хувилбарууд нь scheduling, budgeting, resource management-д ашиглагддаг.

4. Dynamic Programming-г хэзээ ашиглах вэ

Дараах нөхцөлүүдэд dynamic programming ашиглахыг бодолцох хэрэгтэй:

- Бодлого overlapping subproblems болгон хуваагдах боломжтой үед.
- Бодлого optimal substructure шинж чанартай үед.
- Энгийн recursion (naive recursive) шийдэл нь давтагдсан тооцооллуудтай үед.
- Space complexity-г нэмэгдүүлэхийн оронд time complexity-г оновчлох шаардлагатай үед.
