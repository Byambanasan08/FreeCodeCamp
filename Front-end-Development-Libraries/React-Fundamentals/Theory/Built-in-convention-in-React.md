# Loading.tsx файлыг уншъя.

Энэ нь **Next.js-ийн built-in convention** юм — та `import` хийх шаардлагагүй.

Next.js App Router нь `loading.tsx` нэртэй файлыг автоматаар таньж, тухайн route segment-ийн **Suspense boundary** болгон ашигладаг.

**Яаж ажилладаг вэ:**

```
app/
  dashboard/
    loading.tsx   ← Next.js үүнийг автоматаар Suspense-д орооно
    page.tsx      ← энэ файл fetch хийж байх үед loading харагдана
    layout.tsx
```

Next.js дотооддоо дараах байдлаар хувиргадаг:

```tsx
// Next.js автоматаар ингэж боддог — та бичих шаардлагагүй
<Suspense fallback={<Loading />}>
  <Page />
</Suspense>
```

**3 секунд болох шалтгаан** нь `page.tsx` дотор `async` data fetching байгаа учраас — `fetch` дуустал `Loading` component харагдаж, дараа нь жинхэнэ контент солигдоно.

Энэ бол Next.js-ийн [file-system based routing convention](https://nextjs.org/docs/app/building-your-application/routing/loading-ui-and-streaming) — `page.tsx`, `layout.tsx`, `error.tsx` шиг `loading.tsx` ч мөн тусгай нэртэй файл юм.
