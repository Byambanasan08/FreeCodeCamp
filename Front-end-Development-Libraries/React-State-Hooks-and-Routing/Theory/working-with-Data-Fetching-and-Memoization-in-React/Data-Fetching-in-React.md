# React дээр Data Fetching хэрхэн ажилладаг вэ?

React аппликейшнүүд ихэвчлэн динамик контент (dynamic content)-ын тулд гадаад API-ууд болон өгөгдлийн сангууд (databases)-д тулгуурладаг. Эдгээр API болон өгөгдлийн сангуудаас өгөгдөл авахын тулд та data fetching-ийн зарим техникүүдийг ашиглах хэрэгтэй.

React дээр data fetching хэрхэн ажилладаг болон өгөгдөл татахад танд ямар ямар сонголтууд (options) байдаг талаар харцгаая.

React нь өгөгдлийг хэрхэн татах талаар хатуу чиглэл (opinionated) заадаггүй, энэ нь үндсэн түвшинд та бүх орчин үеийн browser-ууд дэмждэг built-in Fetch API-г ашиглаж болно гэсэн үг юм.

Мөн та Axios болон SWR ашиглаж болно. Axios нь XMLHttpRequest объект дээр суурилсан promise-based HTTP request сан (library), харин SWR нь Vercel багийн бүтээсэн data fetching-д зориулсан React hook юм.

Жишээгээр эхэлье. Та эхлээд useState болон useEffect hook-уудыг import хийх хэрэгтэй:

import { useState, useEffect } from "react";

Дараа нь та loading, data, болон error гэсэн гурван state хувьсагч (variables)-ийг үүсгэх хэрэгтэй:

const [data, setData] = useState(null);
const [loading, setLoading] = useState(true);
const [error, setError] = useState(null);

loading хувьсагч нь өгөгдөл одоогоор татагдаж байгаа эсэхийг хянах (track) үүрэгтэй. data хувьсагч нь өөрөө өгөгдлийг илэрхийлнэ, харин error хувьсагч нь өгөгдөл татах явцад гарч болох алдаануудыг барих (capture) үүрэгтэй.

Data fetching нь side effect тул, Fetch API-г useEffect hook дотор ашиглах нь хамгийн зөв байдаг.

Дараах нь үүний жишээ юм:

useEffect(() => {
fetch("https://jsonplaceholder.typicode.com/posts")
.then((res) => res.json())
.then((data) => {
setData(data);
setLoading(false);
})
.catch((err) => {
setError(err);
setLoading(false);
});
}, []);

Энэ useEffect нь Fetch API ашиглан өгөгдлийг татаж, бүх state-уудыг тохируулж (set) байна.

Та .then() синтаксийн оронд async/await ашигласнаар кодыг илүү сайжруулж болно. Энэ нь useEffect дотор тусдаа функц үүсгэх шаардлагатай гэсэн үг, учир нь та useEffect-ийг async keyword-ээр шууд эхлүүлж (prefix) болохгүй:

useEffect(() => {
const fetchData = async () => {
try {
const res = await fetch("https://jsonplaceholder.typicode.com/posts");

```
  if (!res.ok) {
    throw new Error("Network response was not ok");
  }

  const data = await res.json();
  setData(data);
} catch (err) {
  setError(err);
} finally {
  setLoading(false);
}
```

};

fetchData();
}, []);

Дараа нь та эдгээр бүх state-уудыг ашиглан API-гаас ирсэн өгөгдлийг render хийж болно.

Бүрэн код дараах байдалтай:

import { useState, useEffect } from "react";

const FetchPosts = () => {
const [data, setData] = useState(null);
const [loading, setLoading] = useState(true);
const [error, setError] = useState(null);

useEffect(() => {
const fetchData = async () => {
try {
const res = await fetch("https://jsonplaceholder.typicode.com/posts");

```
    if (!res.ok) {
      throw new Error("Network response was not ok");
    }

    const data = await res.json();
    setData(data);
  } catch (err) {
    setError(err);
  } finally {
    setLoading(false);
  }
};

fetchData();
```

}, []);

if (loading) {
return <p>Loading...</p>;
}

if (error) {
return <p>{error.message}</p>;
}

return ( <ul>
{data.map((post) => ( <li key={post.id}>{post.title}</li>
))} </ul>
);
};

export default FetchPosts;

UI дээр өгөгдөл татагдаж байх үед дэлгэц дээр Loading... гэж харагдана, дараа нь өгөгдөл амжилттай татагдсан эсэхээс хамааран өгөгдөл эсвэл алдаа (error) харагдана.

# Мөн бид Axios болон SWR ашиглан data fetching хийх талаар ярьсан гэдгийг санаарай. Одоо Axios ашигласан жишээг харцгаая.

Та эхлээд Axios-ийг command line-оос дараах байдлаар суулгах хэрэгтэй:

npm i axios

Дараа нь та Axios-ийг дараах байдлаар import хийх хэрэгтэй:

import axios from "axios";

Дараа нь та өмнөхтэй адил state хувьсагчдыг ашиглаж, axios.get ашиглан API-гаас өгөгдөл татаж болно:

const [data, setData] = useState(null);
const [loading, setLoading] = useState(true);
const [error, setError] = useState(null);

useEffect(() => {
const fetchData = async () => {
try {
const res = await axios.get(
"https://jsonplaceholder.typicode.com/users"
);
setData(res.data);
} catch (err) {
setError(err);
} finally {
setLoading(false);
}
};

fetchData();
}, []);

Та энэ жишээнд await res.json() гэсэн мөр байхгүй байгааг анзаарсан байж магадгүй. Учир нь Axios нь JSON-ийг автоматаар задлан (parse) боловсруулдаг тул энэ шаардлагагүй.

# Бидний харах сүүлийн жишээ нь useSWR hook ашиглан өгөгдөл татах явдал юм.

Axios-той адилхан, та SWR-ийг дараах байдлаар суулгах хэрэгтэй:

npm install swr

Дараа нь та useSWR hook-ийг файлдаа дараах байдлаар import хийх хэрэгтэй:

import useSWR from "swr";

Өмнөх жишээнүүдтэй харьцуулахад, SWR-ийн синтакс нэлээн богино байдаг. Та хийх ёстой зүйл бол fetcher функц үүсгээд, үүнийг useSWR hook-д хоёр дахь параметр болгон дамжуулах (эхний параметр нь endpoint юм).

Мөн та useSWR hook-оос data болон error state-уудыг задлан (destructure) авч чаддаг тул useState hook хэрэггүй болно.

Синтакс нь дараах байдалтай:

const fetcher = (url) => fetch(url).then((res) => res.json());
const { data, error } = useSWR(endpoint, fetcher);

Энд "fetcher" нэр нь зөвхөн нэг convention (хэвшмэл нэршил) тул та энэ хувьсагчийг дурын нэрээр нэрлэж болно.

Дараах нь JSON Placeholder API-гаас todos татаж буй component юм:

import useSWR from "swr";

const fetcher = (url) => fetch(url).then((res) => res.json());

const FetchTodos = () => {
const { data, error } = useSWR(
"https://jsonplaceholder.typicode.com/todos",
fetcher
);

if (!data) {
return <h2>Loading...</h2>;
}
if (error) {
return <h2>Error: {error.message}</h2>;
}

return (
<> <h2>Todos</h2> <div>
{data.map((todo) => ( <h3 key={todo.id}>{todo.title}</h3>
))} </div>
</>
);
};

export default FetchTodos;

Та өмнөх хичээл дээр custom hooks-ийн талаар сурсан. Data fetching нь custom hook руу салгаж (extract) болох логик юм. Тиймээс хэрэв та олон component болон хуудсанд өгөгдөл татаж байгаа бол useFetch hook үүсгэх нь хамгийн зөв.

Дараах нь SWR ашиглан өгөгдөл татах useFetch hook юм:

import useSWR from "swr";

const fetcher = (url) => fetch(url).then((res) => res.json());

const useFetch = (url) => {
const { data, error } = useSWR(url, fetcher);

return {
data,
loading: !data && !error,
error,
};
};

export default useFetch;

Дараах нь JSON Placeholder API-гаас posts татаж байсан эхний жишээг useFetch hook ашиглан дахин бичсэн (rewrite) байдал юм:

import useFetch from "./useFetch";

const FetchPosts = () => {
const { data, loading, error } = useFetch(
"https://jsonplaceholder.typicode.com/posts"
);

if (loading) {
return <h2>Loading...</h2>;
}

if (error) {
return <h2>{error.message}</h2>;
}

return (
<> <h2>Posts</h2> <ul>
{data.map((post) => ( <li key={post.id}>{post.title}</li>
))} </ul>
</>
);
};

export default FetchPosts;
