Priority Queues болон Heaps хэрхэн ажилладаг вэ?

Priority queue гэдэг нь queue эсвэл stack-тэй төстэй ажилладаг abstract data type (ADT) боловч нэг чухал ялгаатай.

Та аль хэдийн мэдэж байгаа байх, энгийн queue нь FIFO (First-in, First-out) зарчмыг дагадаг бөгөөд queue-д хамгийн түрүүнд орсон элемент хамгийн түрүүнд гардаг.

Stack нь LIFO (Last-in, First-out) зарчмыг дагадаг бөгөөд stack-д хамгийн сүүлд орсон элемент хамгийн түрүүнд гардаг.

Queue болон stack нь зөвхөн элементүүдийн оруулсан дарааллыг (order of insertion) л харгалзан үздэг.

Гэхдээ priority queue нь элементүүдийн "priority"-г харгалзан үздэг. Priority нь дараагийн аль элементийг гаргахыг шийдэхэд ашиглагддаг.

Ихэвчлэн хамгийн өндөр priority-тэй элемент хамгийн түрүүнд гардаг, гэхдээ зарим хэрэгжилтүүд (implementations) хамгийн бага priority-тэй элементийг эхэлж гаргах байдлаар ажиллаж болно. Энэ нь таны програмын шаардлагаас хамаарна.

Priority queue нь бодит хэрэглээнүүдэд маш хэрэгтэй, жишээлбэл хоёр байршлын хооронд хамгийн богино замыг олох, үйлдлийн системд (operating systems) ажлуудыг төлөвлөх (scheduling), хөдөлгөөний урсгалыг (traffic) симуляцлах, өгөгдөл шахах (compressing data), болон сүлжээг (networks) удирдах зэрэгт ашиглагддаг.

Практикт, priority queue-ийг ихэвчлэн heap data structure ашиглан хэрэгжүүлдэг.

Heap гэдэг нь tree data structure бөгөөд "heap property" гэж нэрлэгддэг маш тодорхой шинж чанартай байдаг. Энэ шинж чанар нь heap-ийн төрлөөс хамааран node болон түүний child node-уудын хоорондын хамаарлыг тодорхойлдог.

Heap-ийн хоёр үндсэн төрөл байдаг:

```
Max-heap

Min-heap
```

Max-heap-д, node бүрийн утга нь түүний child node-уудын утгаас их эсвэл тэнцүү байдаг.

Энэ жишээнд та 8, 7, 5, 2, болон 1 гэсэн node-уудтай tree бүтэц харж болно. Node 7 нь node 2 болон node 1-ээс их байгаа нь heap property-г хангаж байна. Энэ нь бусад бүх node-д мөн адил үйлчилж байна.

Эсрэгээрээ, min-heap-д node бүрийн утга нь өөрийн child node-уудын утгаас бага эсвэл тэнцүү байдаг.

Энэ жишээнд 4, 7, 9, 12, болон 15 гэсэн утгатай node-ууд байна. Жишээлбэл, node 7 нь node 12 болон node 15-аас бага байгаа нь heap property-г хангаж байна. Энэ нь бусад бүх node-д мөн адил үнэн юм. Heap property нь маш чухал, учир нь энэ нь хамгийн их (эсвэл хамгийн бага) элемент (heap-ийн төрлөөс хамааран) үргэлж дээд хэсэгт (top) байрлахыг баталгаажуулдаг бөгөөд ингэснээр түүнийг устгах (remove) маш хялбар болдог.

Практикт, heap-ийг ихэвчлэн parent болон child node-уудыг үр ашигтай хандахын тулд array байдлаар хэрэгжүүлдэг.

Array ашиглах нь эдгээр утгууд буюу "node"-уудыг хандах логикийг хялбаршуулдаг, учир нь heap нь complete binary tree бүтэцтэй байвал array хэрэгжилт нь index дээр суурилсан энгийн математик үйлдлүүдийг ашиглан элементүүдийн санах ой дахь байршлыг олоход хангалттай байдаг.

JavaScript-д built-in heap модуль байдаггүй, гэхдээ та array ашиглан min-heap хэрэгжүүлж болно.

Доорх нь JavaScript дээрх энгийн min-heap хэрэгжилтийн жишээ юм:

```javascript
class MinHeap {
  constructor(compare = (a, b) => a - b) {
    this.data = [];
    this.compare = compare;
  }

  peek() {
    return this.data[0];
  }

  push(value) {
    this.data.push(value);
    this.#bubbleUp(this.data.length - 1);
  }

  pop() {
    if (this.data.length === 0) return undefined;

    const top = this.data[0];
    const last = this.data.pop();

    if (this.data.length > 0) {
      this.data[0] = last;
      this.#bubbleDown(0);
    }

    return top;
  }

  pushPop(value) {
    if (this.data.length === 0) return value;

    if (this.compare(this.data[0], value) < 0) {
      const top = this.data[0];
      this.data[0] = value;
      this.#bubbleDown(0);
      return top;
    }

    return value;
  }

  heapify(arr) {
    this.data = arr.slice();
    for (let i = Math.floor(this.data.length / 2) - 1; i >= 0; i--) {
      this.#bubbleDown(i);
    }
  }

  #bubbleUp(i) {
    while (i > 0) {
      const p = Math.floor((i - 1) / 2);
      if (this.compare(this.data[i], this.data[p]) >= 0) break;
      [this.data[i], this.data[p]] = [this.data[p], this.data[i]];
      i = p;
    }
  }

  #bubbleDown(i) {
    const n = this.data.length;

    while (true) {
      let smallest = i;
      const l = 2 * i + 1;
      const r = 2 * i + 2;

      if (l < n && this.compare(this.data[l], this.data[smallest]) < 0) smallest = l;
      if (r < n && this.compare(this.data[r], this.data[smallest]) < 0) smallest = r;

      if (smallest === i) break;

      [this.data[i], this.data[smallest]] = [this.data[smallest], this.data[i]];
      i = smallest;
    }
  }
}
```
Энэ heap-ийг ашиглахын тулд та хоосон heap үүсгэж болно. Энэ нь heap-ийн суурь data structure болно:

```javascript
const myHeap = new MinHeap();
```

Heap-д элемент нэмэхийн тулд та push() дуудах хэрэгтэй. Энэ нь heap property-г хадгалахын тулд элементийг зөв байрлалд автоматаар нэмнэ:

```javascript
myHeap.push(9);
```

Хамгийн өндөр priority-тэй элементийг (энэ тохиолдолд хамгийн бага утга) авахын тулд та pop() дуудах хэрэгтэй:

```javascript
myHeap.pop();
```

pushPop() нь эдгээр хоёр үйлдлийг нэг дуудалтад нэгтгэдэг.

Энэ нь тэдгээрийг тус тусад нь дарааллаар дуудахаас илүү үр ашигтай, ялангуяа heap том байх үед, учир нь зөвхөн нэг удаагийн дахин байршуулалт (reordering) хийдэг:

```javascript
myHeap.pushPop(15);
```

Хэрэв танд аль хэдийн array байгаа бөгөөд үүнийг heap болгохыг хүсвэл heapify() дуудаж болно:

```javascript
myHeap.heapify([9, 2, 7, 1]);
```

Гэхдээ одоогоор бид элементүүдийг утгаар нь эрэмбэлж байна, тийм үү?

Хэрэв бид тэдгээрийг "priority"-аар нь эрэмбэлэхийг хүсвэл яах вэ?

Та үүнийг [priority, element] гэсэн бүтэцтэй array хадгалах замаар хийж болно.

JavaScript-д array-ууд автоматаар элемент бүрээр нь харьцуулагддаггүй тул heap-д эхлээд priority-г харьцуулах comparison function дамжуулна.

Анхаарна уу, энэ тохиолдолд бага утга нь илүү өндөр priority-г илэрхийлнэ. Энэ нь priority нь 1-тэй элемент нь priority нь 3-тай элементээс илүү өндөр priority-тэй гэсэн үг юм:

```javascript
const myHeap = new MinHeap((a, b) => a[0] - b[0]);

myHeap.push([3, "A"]);
myHeap.push([2, "B"]);
myHeap.push([1, "C"]);
```

Хэрэв ижил priority-тэй элементүүдийг оруулсан дарааллаар нь гаргах шаардлагатай бол та item-ийн хоёр дахь элемент болгон unique counter оруулж, тэнцлийг (tie) шийдэж болно, жишээлбэл [priority, counter, element] гэж:

Жишээлбэл, эхлээд priority, дараа нь counter-оор харьцуулж болно:

```javascript
let counter = 0;
const myHeap = new MinHeap((a, b) => (a[0] - b[0]) || (a[1] - b[1]));

myHeap.push([3, counter++, "A"]);
myHeap.push([2, counter++, "B"]);
myHeap.push([2, counter++, "C"]);
```

Одоо heap-ийн үр ашиг (efficiency)-ийн талаар ярья.

Heap-д элемент оруулах болон хамгийн бага эсвэл хамгийн их утгыг гаргах (heap-ийн төрлөөс хамааран) үйлдлүүдийн average болон worst-case time complexity нь logarithmic, O(log n), байдаг, учир нь шаардлагатай swap-ийн тоо нь ихэвчлэн heap-ийн өндөртэй пропорциональ бөгөөд энэ нь log(n) байдаг.

"peek" үйлдлийн average болон worst-case time complexity нь constant time, O(1) байдаг. Peeking гэдэг нь хамгийн бага эсвэл хамгийн их утгыг (heap-ийн төрлөөс хамааран) устгалгүйгээр авахыг хэлнэ.

"heapify" үйлдэл буюу heap-ийг эмх цэгцгүй (unsorted) жагсаалтаас үүсгэх үйлдэл нь average болон worst-case нөхцөлд linear time complexity, O(n), байдаг.

Үүнтэй адил, дурын элементийг хайх болон устгах үйлдлүүд нь average болон worst-case нөхцөлд linear, O(n), time complexity-тэй байдаг, учир нь бүх heap-ийг тойрон шалгах шаардлагатай байж болно.

Тэгвэл тэд хэр хэмжээний санах ой (space) шаарддаг вэ?

Heap-ийн space complexity нь linear, O(n), бөгөөд энд n нь хадгалагдаж буй элементүүдийн тоо юм. Энэ нь зөвхөн элементүүд болон array object-д зориулсан бага хэмжээний нэмэлт санах ойг шаарддаг.

Priority queue болон heap нь computer science-д маш чухал. Тэд танд жагсаалтаас хамгийн чухал элементүүдийг хурдан олж ашиглах боломж олгодог. Энэ үр ашиг нь газрын зураг дээр хамгийн хурдан зам олох зэрэг бодит амьдралын чухал даалгавруудыг гүйцэтгэдэг олон компьютер програмд маш чухал байдаг.
