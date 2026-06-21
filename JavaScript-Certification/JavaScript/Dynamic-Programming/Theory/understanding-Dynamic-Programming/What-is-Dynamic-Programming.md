# Dynamic Programming гэж юу вэ, мөн түгээмэл алгоритмууд юу вэ?

Dynamic programming нь алгоритмын техник бөгөөд төвөгтэй асуудлуудыг жижиг дэд асуудлууд (subproblems) болгон задлаж, үр дүнг хадгалснаар давхардсан тооцооллоос зайлсхийж шийддэг. Энэ хандлага нь ерөнхийдөө exponential хугацаа шаарддаг асуудлуудыг polynomial хугацаанд шийдэх боломжтой болгодог.

## Dynamic Programming-ийн үндсэн зарчмууд

Dynamic programming нь асуудалд дараах хоёр үндсэн нөхцөл биелсэн үед ажилладаг.

- Overlapping Subproblems: Том асуудлыг шийдэх явцад ижил жижиг асуудлууд олон дахин гарч ирдэг. Эдгээрийг дахин дахин тооцоолохын оронд, бид тэдгээрийн шийдлийг хадгалдаг.

- Optimal Substructure: Асуудлын хамгийн сайн шийдэл нь түүний дэд асуудлуудын хамгийн сайн шийдлүүдийг агуулдаг. Энэ нь бид жижиг хэсгүүдийн хамгийн сайн шийдлийг нэгтгэн ерөнхий шийдлийг бүтээж чадна гэсэн үг юм.

Эдгээр ойлголтуудыг "climbing stairs" гэсэн сонгодог жишээгээр авч үзье.

Naive Recursion-ийн асуудал

Climbing stairs асуудлыг авч үзье: та n шаттай шат өгсөж байгаа бөгөөд нэг удаад 1 эсвэл 2 шат өгсөж болно. Та оргилд хүрэх хэдэн өөр арга байна вэ?

```javascript id="tvk6gx"
function climbStairsRecursive(n) {
  // Base cases: 1 шатанд 1 арга, 2 шатанд 2 арга
  if (n <= 2) {
    return n;
  }

  // Recursive rule: n шатанд хүрэхийн тулд (n-1) эсвэл (n-2)-оос ирнэ
  return climbStairsRecursive(n - 1) + climbStairsRecursive(n - 2);
}
```

Энэ хэрэгжилт нь маш их давхардсан тооцоололтой тул exponential time complexity-тэй. climbStairsRecursive(5)-ийг тооцоолоход дараах зүйлс болно:

- climbStairsRecursive(5) нь climbStairsRecursive(4) болон climbStairsRecursive(3)-г дуудна

- climbStairsRecursive(4) нь climbStairsRecursive(3) болон climbStairsRecursive(2)-г дуудна

- Одоо climbStairsRecursive(3) хоёр удаа тооцоологдоно

- climbStairsRecursive(3) нь climbStairsRecursive(2) болон climbStairsRecursive(1)-г дуудна

- climbStairsRecursive(2) нийт 3 удаа тооцоологдоно

Зөвхөн n=5 үед бид 5 өөр тооцоолол байхад хангалттай атал 9 удаа function дуудалт хийж байна. n өсөх тусам энэ давхардал exponential байдлаар өсдөг — climbStairsRecursive(30) нь хэдэн сая function дуудалт шаарддаг! Time complexity нь O(2^n) болж, n ихсэхэд маш үр ашиггүй, практикт ашиглахад тохиромжгүй болдог.

Dynamic Programming шийдлүүд

Dynamic programming нь давхардсан тооцооллыг дараах хоёр үндсэн аргаар арилгадаг:
Memoization (Top-Down Approach)

Memoization нь үнэтэй (expensive) function дуудалтын үр дүнг хадгалж, ижил оролт дахин гарч ирэхэд хадгалсан утгыг буцаадаг:

```javascript id="7x5m1n"
function climbStairsMemo(n, memo = {}) {
  // Хэрэв аль хэдийн тооцоологдсон бол хадгалсан утгыг буцаана
  if (memo[n] !== undefined) {
    return memo[n];
  }

  // Base cases: 1 шатанд 1 арга, 2 шатанд 2 арга
  if (n <= 2) {
    return n;
  }

  // Нэг удаа тооцоолж memo-д хадгална
  memo[n] = climbStairsMemo(n - 1, memo) + climbStairsMemo(n - 2, memo);

  return memo[n];
}
```

Memoization нь маш үр ашигтай, учир нь 1-ээс n хүртэлх өвөрмөц (unique) утга бүр зөвхөн нэг удаа тооцоологддог. Бидэнд дахин climbStairsMemo(3) хэрэгтэй бол, дахин тооцоолохын оронд (энэ нь дахин recursion дуудалтууд үүсгэнэ), бид memo dictionary-оос O(1) хугацаанд шууд авч ашиглана.

Top-down approach ашиглан climbStairsMemo(5)-ийн гүйцэтгэлийг мөрдөж (trace) memoization хэрхэн давхардсан ажлыг арилгадагийг харъя:

Call: climbStairsMemo(5)
memo = {} (хоосон)

Call: climbStairsMemo(4)
memo = {} (хоосон)

```
Call: climbStairsMemo(3)
  memo = {} (хоосон)

  Call: climbStairsMemo(2) → 2 буцаана (base case)
  Call: climbStairsMemo(1) → 1 буцаана (base case)

  Result: 2 + 1 = 3
  memo = {3: 3} (хадгаллаа!)

Call: climbStairsMemo(2) → 2 буцаана (base case)

Result: 3 + 2 = 5
memo = {3: 3, 4: 5} (хадгаллаа!)
```

Call: climbStairsMemo(3) → 3 буцаана (MEMO-оос авсан — дахин recursion байхгүй!)

Result: 5 + 3 = 8
memo = {3: 3, 4: 5, 5: 8}

Үр ашиг (Efficiency)-ийн харьцуулалт

- Naive recursive: 9 function дуудалт хийж, давхардсан тооцоолол ихтэй
- Memoization: Зөвхөн 5 өвөрмөц тооцоолол хийж, дараа нь хадгалсан үр дүнг ашиглана
- Time complexity: O(2^n)-оос O(n) болж буурна, учир нь зөвхөн n өвөрмөц тооцоолол хийнэ
- Space complexity: memo хадгалах болон call stack-д O(n)
- Бодит нөлөө: climbStairsMemo(30) нь хэдэн сая function дуудалтаас ~30 орчим өвөрмөц тооцоолол болж буурна!

Tabulation (Bottom-Up Approach)

Tabulation нь шийдлийг доороос дээш (ground up) барьж, дэд асуудлуудын шийдлүүдийг хүснэгтэд (table) бөглөдөг:

```javascript id="0n9xq1"
function climbStairsTabulation(n) {
  if (n <= 2) {
    return n;
  }

  // 0-ээс n хүртэлх шийдлүүдийг хадгалах array үүсгэнэ
  const dp = new Array(n + 1).fill(0);

  // Base cases
  dp[1] = 1; // 1-р шатанд хүрэх 1 арга
  dp[2] = 2; // 2-р шатанд хүрэх 2 арга

  // Шийдлийг давталтаар (iteratively) бүтээнэ
  for (let i = 3; i <= n; i++) {
    // i шатанд хүрэх арга = (i-1)-д хүрэх арга + (i-2)-д хүрэх арга
    dp[i] = dp[i - 1] + dp[i - 2];
  }

  return dp[n];
}
```

Tabulation нь recursion-ийг бүрэн арилгаж, хамгийн жижиг дэд асуудлуудаас эхлэн зорилтот шийдэл хүртэл шат дараатайгаар (iteratively) бүтээдэг.

Bottom-up approach хэрхэн ажиллаж байгааг харъя. climbStairsTabulation(5)-ийн алхамчилсан (iterative) бүтцийг үзье:

Эхний төлөв (Initial state):
dp = [0, 1, 2, 0, 0, 0]
[0, 1, 2, 3, 4, 5] ← index-үүд (шатны дугаарууд)

Алхам алхмаар:

i = 3:
dp[3] = dp[2] + dp[1] = 2 + 1 = 3
dp = [0, 1, 2, 3, 0, 0]

i = 4:
dp[4] = dp[3] + dp[2] = 3 + 2 = 5
dp = [0, 1, 2, 3, 5, 0]

i = 5:
dp[5] = dp[4] + dp[3] = 5 + 3 = 8
dp = [0, 1, 2, 3, 5, 8]

Эцсийн үр дүн: dp[5] = 8

Tabulation-ийн гол давуу талууд

- Recursion overhead байхгүй: Memoization-оос ялгаатай нь recursive call stack байхгүй.
- Урьдчилан тодорхой гүйцэтгэл: Утгуудыг тогтсон дарааллаар (1, 2, 3, 4, 5...) тооцоолдог.
- Cache-д ээлтэй: Дараалсан array access нь санах ойг үр ашигтай ашигладаг.
- Хялбар оновчлол: Зөвхөн сүүлийн хоёр утга хэрэгтэй тул space complexity-г O(1) хүртэл бууруулж болно.

```javascript id="n8c3p7"
function climbStairsOptimized(n) {
  if (n <= 2) {
    return n;
  }

  // Зөвхөн сүүлийн хоёр үр дүнг хадгалж санах ой хэмнэнэ
  let prev2 = 1; // 1-р шатанд хүрэх арга
  let prev1 = 2; // 2-р шатанд хүрэх арга

  for (let i = 3; i <= n; i++) {
    const current = prev1 + prev2;

    // Утгуудыг урагш шилжүүлнэ
    prev2 = prev1;
    prev1 = current;
  }

  return prev1;
}
```

Үр ашиг (Efficiency)-ийн харьцуулалт

- Naive recursive: n=5 үед 9 function call, exponential өсөлт
- Tabulation: n=5 үед 3 энгийн нэмэх үйлдэл, linear өсөлт
- Time complexity: O(2^n)-оос O(n) болж буурна
- Space complexity: Array ашиглахад O(n), оновчлоход O(1)
- Тогтвортой гүйцэтгэл: Том оролтод stack overflow болох эрсдэл байхгүй

Хоёр арга хоёулаа time complexity-г exponential O(2^n)-оос linear O(n) болгон бууруулдаг бөгөөд энэ нь хэдхэн миллисекундэд шийдэх эсвэл том оролт дээр жилээр хүлээх хоёрын хооронд асар их ялгаа үүсгэдэг.

Real-World Applications

Dynamic programming нь computer science болон түүнээс гадна олон салбарт өргөн хэрэглэгддэг:

- Замын оновчлол (Route Optimization): GPS системүүд dynamic programming алгоритмуудыг ашиглан байршлуудын хоорондох хамгийн богино замыг олдог.

- Текст боловсруулах (Text Processing): Үсгийн алдаа шалгагч (spell checkers) болон autocomplete функцууд ихэвчлэн dynamic programming-ийг ашиглан үгсийн хоорондох edit distance-ийг тооцоолдог.

- Санхүүгийн моделчлол (Financial Modeling): Хөрөнгө оруулалтын стратеги болон portfolio optimization-д dynamic programming техникийг өргөн ашигладаг.

- Нөөцийн хуваарилалт (Resource Allocation): Knapsack problem болон түүний хувилбарууд нь scheduling, budgeting, resource management зэрэгт гарч ирдэг.

Практик жишээ: Coin Change Problem

Coin change problem нь dynamic programming ашиглан шийдэхэд DP-ийн хоёр гол зарчим болох optimal substructure болон overlapping subproblems-ийг хоёуланг нь харуулдаг сонгодог бодлого юм.

Coin change problem нь “зорилтот дүнг (target amount) бүрдүүлэхэд хамгийн бага хэдэн зоос хэрэгтэй вэ?” гэж асуудаг.

Доорх нь dynamic programming ашигласан нэг шийдэл:

```javascript
function minCoins(amount, coins) {
  // 0-оос amount хүртэл dp array үүсгээд Infinity утгаар дүүргэнэ
  const dp = new Array(amount + 1).fill(Infinity);

  // Суурь нөхцөл (Base case): amount 0 бол 0 зоос хэрэгтэй
  dp[0] = 0;

  // 1-ээс зорилтот amount хүртэл build хийнэ
  for (let i = 1; i <= amount; i++) {
    // Зоос бүрийг туршина
    for (let coin of coins) {
      // Зоос нь одоогийн amount-аас ихгүй үед л ашиглана
      if (coin <= i) {
        // Хамгийн бага утгыг сонгоно: одоогийн утга эсвэл үлдсэн amount + 1 зоос
        dp[i] = Math.min(dp[i], dp[i - coin] + 1);
      }
    }
  }

  // Боломжтой бол үр дүнг буцаана, боломжгүй бол -1 (Infinity)
  return dp[amount] === Infinity ? -1 : dp[amount];
}
```

```
/*
 Жишээ ашиглалт:
coins = [1, 3, 4], amount = 6

dp[0] = 0
dp[1] = dp[0] + 1 = 1
dp[2] = dp[1] + 1 = 2
dp[3] = min(dp[2]+1, dp[0]+1) = min(2+1, 0+1) = 1
dp[4] = min(dp[3]+1, dp[1]+1, dp[0]+1) = min(1+1, 1+1, 0+1) = 1
dp[5] = min(dp[4]+1, dp[2]+1, dp[1]+1) = min(1+1, 2+1, 1+1) = 2
dp[6] = min(dp[5]+1, dp[3]+1, dp[2]+1) = min(2+1, 1+1, 2+1) = 2

Үр дүн: 2 зоос (3 + 3)
*/
```

Dynamic programming coin change алгоритм алхам алхмаар хэрхэн ажилладгийг харъя (coins = [1, 3, 4], amount = 6):

Эхний төлөв (Initial state):
dp = [0, ∞, ∞, ∞, ∞, ∞, ∞]
[0, 1, 2, 3, 4, 5, 6] ← дүнгүүд (amounts)

Шийдлийг бүтээх:

amount = 1:
coin 1: dp[1] = min(∞, dp[0] + 1) = min(∞, 0 + 1) = 1
dp = [0, 1, ∞, ∞, ∞, ∞, ∞]

amount = 2:
coin 1: dp[2] = min(∞, dp[1] + 1) = min(∞, 1 + 1) = 2
dp = [0, 1, 2, ∞, ∞, ∞, ∞]

amount = 3:
coin 1: dp[3] = min(∞, dp[2] + 1) = min(∞, 2 + 1) = 3
coin 3: dp[3] = min(3, dp[0] + 1) = min(3, 0 + 1) = 1
dp = [0, 1, 2, 1, ∞, ∞, ∞]

amount = 4:
coin 1: dp[4] = min(∞, dp[3] + 1) = min(∞, 1 + 1) = 2
coin 3: dp[4] = min(2, dp[1] + 1) = min(2, 1 + 1) = 2
coin 4: dp[4] = min(2, dp[0] + 1) = min(2, 0 + 1) = 1
dp = [0, 1, 2, 1, 1, ∞, ∞]

amount = 5:
coin 1: dp[5] = min(∞, dp[4] + 1) = min(∞, 1 + 1) = 2
coin 3: dp[5] = min(2, dp[2] + 1) = min(2, 2 + 1) = 2
coin 4: dp[5] = min(2, dp[1] + 1) = min(2, 1 + 1) = 2
dp = [0, 1, 2, 1, 1, 2, ∞]

amount = 6:
coin 1: dp[6] = min(∞, dp[5] + 1) = min(∞, 2 + 1) = 3
coin 3: dp[6] = min(3, dp[3] + 1) = min(3, 1 + 1) = 2
coin 4: dp[6] = min(2, dp[2] + 1) = min(2, 2 + 1) = 2
dp = [0, 1, 2, 1, 1, 2, 2]

Эцсийн үр дүн: dp[6] = 2 (3 + 3 зоосоор бүрдсэн)

Энэхүү шийдэл нь dynamic programming-ийн хоёр гол зарчмыг хоёуланг нь харуулж байна. Энэ нь overlapping subproblems-тэй, учир нь amount 6-д хамгийн бага зоосыг олохын тулд amount 5, 3, 2-ын шийдлүүдийг мэдэх шаардлагатай. Эдгээр ижил дэд бодлогууд бусад amount-уудыг тооцоолох үед мөн дахин гарч ирдэг. Мөн энэ нь optimal substructure-тэй, учир нь аливаа amount-ийн оновчтой шийдэл нь түүнээс бага amount-уудын оновчтой шийдлүүдийг агуулдаг. Хэрвээ бид amount 3-д хамгийн бага зоос 1 гэдгийг мэдэж байвал, amount 6-г бүрдүүлэх нэг арга нь тэр шийдлийг ашиглаад дээр нь 3 утгатай нэг зоос нэмэх явдал юм.

DP (dynamic programming) ашиглахгүйгээр бид зооснуудын бүх боломжит хослолыг турших шаардлагатай болно — энэ нь экспоненциал тооны боломжууд гэсэн үг. Харин DP ашигласнаар бид шийдлийг системтэйгээр бүтээдэг:

- Time complexity: O(amount × number of coins), экспоненциал биш.

- Space complexity: dp array-д зориулсан O(amount).

- Давхардсан ажил байхгүй (No redundant work): Дэд бодлого бүр (amount бүрийн хамгийн бага зоосыг олох) яг нэг удаа л шийдэгдэнэ.

- Дахин ашиглагдах үр дүн (Reusable results): Amount 3-ийн хамгийн бага зоосыг мэдсэний дараа, энэ мэдлэгийг түүнээс их amount-ууд дээр дахин ашиглаж болно.

Dynamic Programming-г хэзээ ашиглах вэ

Dynamic programming нь дараах нөхцөлүүдэд үр дүнтэй:

- Бодлого overlapping subproblems болгон хуваагдах боломжтой үед.

- Бодлого optimal substructure шинж чанартай үед.

- Энгийн recursion (naive recursive) шийдэл нь давтагдсан тооцооллуудтай үед.

- Space complexity-г нэмэгдүүлэхийн оронд time complexity-г оновчлох шаардлагатай үед.

Dynamic programming-ийн түгээмэл хэв маягууд (patterns) нь optimization бодлогууд (хамгийн бага/их утгыг олох), counting бодлогууд (ямар нэг зүйлд хүрэх арга замын тоо), мөн жижиг шийдвэрүүдэд хувааж болох decision бодлогуудыг багтаадаг.

Dynamic programming нь дэд бодлогуудын шийдлийг системтэйгээр хадгалж, дахин ашиглах замаар төвөгтэй бодлогуудыг илүү удирдаж болох хэлбэрт оруулдаг. Энэ техникийг ойлгох нь олон төрлийн тооцооллын (computational) сорилтуудыг үр ашигтайгаар шийдэх боломжийг нээдэг.
