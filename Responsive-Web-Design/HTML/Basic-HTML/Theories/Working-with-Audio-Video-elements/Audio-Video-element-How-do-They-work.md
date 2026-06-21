1. **HTML Audio ба Video элементүүдийн үүрэг юу вэ, тэд хэрхэн ажилладаг вэ?**

**audio** болон **video** элементүүд нь таны HTML баримтад дуу болон видео контент нэмэх боломж олгодог.

* **audio элемент** нь mp3, wav, ogg зэрэг түгээмэл дууны форматуудыг дэмжинэ.
* **video элемент** нь mp4, ogg, webm форматуудыг дэмждэг.

---

## **Audio контент нэмж оруулах**

Вэб хуудсандаа дуу тоглуулагч нэмэхийн тулд `audio` элемент болон `src` атрибут ашиглан дууны файлын байрлал руу заана.

Доорх жишээн дээр харахад хуудас дээр ямар нэгэн тоглуулагч харагдахгүй. Preview харахыг хүсвэл interactive editor-ийг идэвхжүүлэх шаардлагатай.

```html
<audio src="https://cdn.freecodecamp.org/curriculum/js-music-player/cruising-for-a-musing.mp3"></audio>
```

Хэрвээ хуудас дээр дууны тоглуулагч харагдах ёстой бол `controls` атрибутыг нэмж өгнө:

```html
<audio src="https://cdn.freecodecamp.org/curriculum/js-music-player/cruising-for-a-musing.mp3" controls></audio>
```

**controls** атрибутыг нэмснээр хэрэглэгч:

* дуу тоглуулах,
* зогсоох (pause),
* үргэлжлүүлэх (resume),
* дууны хэмжээг өөрчлөх боломжтой болно.

`controls` нь boolean атрибут бөгөөд зөвхөн бичсэн байхад л идэвхжинэ. Хэрвээ орхивол тоглуулагч харагдахгүй.

---

## **Audio элемент дэх бусад атрибутууд**

### **1. loop — тасралтгүй давтах**

`loop` атрибут нь дууг дуусах болгонд автоматаар дахин эхлүүлж тоглуулдаг.

```html
<audio
  src="https://cdn.freecodecamp.org/curriculum/js-music-player/can't-stay-down.mp3"
  loop
  controls
></audio>
```

### **2. muted — анхдагч төлөвт дуугүй эхлүүлэх**

Энэ boolean атрибут байх үед аудио muted төлөвтэй эхэлдэг.

```html
<audio
  src="https://cdn.freecodecamp.org/curriculum/js-music-player/can't-stay-down.mp3"
  loop
  controls
  muted
></audio>
```

---

## **Олон төрлийн аудио формат дэмжих (source элемент)**

Браузер бүр бүх төрлийн аудиог дэмждэггүй тул `audio` элемент дотор хэд хэдэн `source` элемент нэмж болох бөгөөд браузер өөрөө дэмжиж чадах эхний форматыг сонгон тоглуулна.

Жишээ:

```html
<audio controls>
  <source src="audio.ogg" type="audio/ogg" />
  <source src="audio.wav" type="audio/wav" />
  <source src="audio.mp3" type="audio/mpeg" />
</audio>
```

Браузер эхлээд `.ogg` файлыг тоглуулж чаддаг эсэхийг шалгана. Хэрвээ тоглуулж чадахгүй бол дараагийн форматыг туршсаар явна.

---

2. **Video элемент — Audio-той адил, гэхдээ илүү өргөн боломжтой**

Video элемент нь audio-ийн бүх атрибутуудыг дэмждэг (`src`, `controls`, `loop`, `muted` гэх мэт).

Доорх жишээнд video элемент loop, controls, muted атрибуттайгаар ашиглагдсан байна:

```html
<video
  src="https://archive.org/download/BigBuckBunny_124/Content/big_buck_bunny_720p_surround.mp4"
  loop
  controls
  muted
  width="400"
></video>
```

Энд `width` атрибут нь видео дээр харагдах хэмжээг багасгах үүрэгтэй. Энэ атрибутын талаар дараагийн хичээлүүдэд дэлгэрэнгүй үзнэ.

---

## **autoplay — видеог автомат тоглуулах**

Дээрх видео тагт autoplay атрибут нэмж өгвөл хуудас ачаалахад видео автоматаар тоглож эхэлнэ:

```html
<video
  src="https://archive.org/download/BigBuckBunny_124/Content/big_buck_bunny_720p_surround.mp4"
  loop
  controls
  muted
  autoplay
  width="400"
></video>
```

---

## **poster — Видео ачаалж байхад харуулах зураг**

poster атрибут нь зөвхөн **video элементэд** байдаг бөгөөд видео ачаалж байх үед харуулах зургийг тодорхойлдог.

```html
<video
  src="https://archive.org/download/BigBuckBunny_124/Content/big_buck_bunny_720p_surround.mp4"
  loop
  controls
  muted
  poster="https://peach.blender.org/wp-content/uploads/title_anouncement.jpg?x11217"
  width="400"
></video>
```

---

