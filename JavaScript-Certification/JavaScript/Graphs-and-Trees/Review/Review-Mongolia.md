# Graphs болон Trees-ийн тойм (Review)

1. Graphs Overview

Graph гэдэг нь edges (холболтууд)-аар холбогдсон nodes (vertices)-ийн олонлог юм. Node бүр олон өөр node-той холбогдож, сүлжээ (network) үүсгэж чадна. Graph-ийн төрөлүүдэд дараах зүйлс орно:

- Directed: edge-үүд нь чиглэлтэй (нэг node-оос нөгөө node руу), ихэвчлэн шулуун шугам болон сум (arrow)-аар дүрслэгддэг.
- Undirected: edge-үүд нь чиглэлгүй, энгийн шугамаар дүрслэгддэг.
- Vertex labeled: node бүр тодорхой шошго (label) эсвэл танигч (identifier)-тай холбоотой байдаг.
- Cyclic: цикл (эхэлсэн node дээрээ буцаж ирдэг зам)-ийг агуулдаг.
- Acyclic (DAG): цикл агуулдаггүй.
- Edge labeled: edge бүр шошготой бөгөөд ихэвчлэн тухайн edge-ийн хажууд бичигддэг.
- Weighted: edge-үүд нь жин (weight) буюу утгатай байдаг бөгөөд эдгээрийг арифметик үйлдэлд ашиглаж болно.
- Disconnected: хоорондоо ямар ч edge-ээр холбогдоогүй хоёр буюу түүнээс дээш node-ийг агуулдаг.

Graph-ийг газрын зураг (maps), сүлжээ (networks), recommendation systems, dependency resolution зэрэг олон төрлийн хэрэглээнд ашигладаг.

2. Graph Traversals

Энэ нь graph дахь бүх node-уудыг зочлох (visit) үйл явц юм. Хоёр үндсэн алгоритм байдаг:

2.1 Breadth-First Search (BFS)

- Queue ашигладаг.
- Түвшин бүрээр (level by level) судалдаг.
- Жингүй (unweighted) graph дээр хамгийн богино замыг олдог.

  2.2 Depth-First Search (DFS)

- Stack (эсвэл recursion) ашигладаг.
- Нэг салааг (branch) бүрэн гүн хүртэл судалж, дараа нь буцдаг (backtracking).
- Цикл илрүүлэх болон зам олоход ашигтай.

3. Graph Representations

Graph-ийг хоёр үндсэн аргаар дүрсэлж болно:

3.1 Adjacency List

- Node бүр өөрийн хөршүүдийн (neighbors) жагсаалттай байдаг.
- Sparse graph-д санах ой (space)-ийн хувьд үр ашигтай.
- Хөршүүдээр iterate хийхэд хялбар.

  3.2 Adjacency Matrix

- Node-уудыг илэрхийлсэн мөр (row) болон багана (column)-тай 2 хэмжээст array.
- Том graph-д санах ой их шаарддаг.
- Хоёр node хооронд edge байгаа эсэхийг хурдан шалгадаг.

4. Trees

Tree гэдэг нь циклгүй (acyclic) бөгөөд холбогдсон (connected) graph-ийн тусгай төрөл юм. Үндсэн шинж чанарууд:

- Loop буюу cycle байхгүй (эхэлсэн node дээрээ буцаж ирдэг зам байхгүй).
- Бүрэн холбогдсон байх ёстой (ямар ч node-оос өөр node руу хүрч чадна).

5. Common types of trees

Хамгийн түгээмэл tree төрлүүд:

Binary Trees

- Node бүр хамгийн ихдээ хоёр child-тэй (left болон right child).

Binary Search Trees (BST)

- Binary tree бөгөөд left child нь parent-аасаа бага, right child нь parent-аасаа их байдаг.

6. Tries

Prefix tree гэж мөн нэрлэгддэг бөгөөд string-ийн олонлог хадгалахад ашиглагддаг, node бүр нэг тэмдэгтийг илэрхийлдэг.

Ижил prefix-үүдийг нэг л удаа хадгалдаг тул autocomplete болон spell checking зэрэгт маш үр ашигтай.

Search болон insertion үйлдлүүдийн time complexity нь O(L), энд L нь string-ийн урт.

7. Priority Queues

Priority queue нь abstract data type бөгөөд элемент бүр priority-тэй байдаг.

Queue болон stack нь зөвхөн оруулсан дарааллыг харгалздаг бол priority queue нь элементүүдийн priority-г харгалздаг.

Энгийн queue нь FIFO (First In First Out), stack нь LIFO (Last In First Out) зарчмыг дагадаг. Харин priority queue-д, өндөр priority-тэй элементүүд оруулсан дарааллаас үл хамааран түрүүлж боловсруулагддаг.

8. Heaps

Heap нь tree дээр суурилсан тусгай data structure бөгөөд heap property гэж нэрлэгддэг тодорхой шинж чанартай.

Heap property нь parent болон child node-уудын хоорондын хамаарлыг тодорхойлдог. Heap-ийн хоёр төрөл байдаг:

Max-Heap

- Parent node-ийн утга нь child node-уудын утгаас их эсвэл тэнцүү.
- Хамгийн их элемент root дээр байрлана.

Min-Heap

- Parent node-ийн утга нь child node-уудын утгаас бага эсвэл тэнцүү.
- Хамгийн бага элемент root дээр байрлана.

JavaScript-д built-in heap модуль байхгүй боловч array ашиглан min-heap хэрэгжүүлж болно.
