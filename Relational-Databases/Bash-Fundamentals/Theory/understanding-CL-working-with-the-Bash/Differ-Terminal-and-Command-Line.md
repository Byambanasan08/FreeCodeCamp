# Terminal гэж юу вэ, мөн энэ нь Command Line-оос юугаараа ялгаатай вэ?

Terminal-ийн талаар, мөн энэ нь command line-оос юугаараа ялгаатай болохыг судалцгаая.

Command line нь хэрэглэгчид "commands" буюу командуудыг ихэвчлэн тэмдэгтүүдийн дараалал хэлбэрээр оруулж, ихэнхдээ "Enter" товч дарж илгээж эсвэл гүйцэтгэх боломж олгодог энгийн текст оролтын интерфэйс юм. Та command line interface-уудыг ихэвчлэн terminal дотор хардаг.

Terminal нь системийн түвшний командуудыг (system-level commands) гүйцэтгэх боломж олгодог, command line interface-ийг санал болгодог тусгай application бөгөөд энгийн унших/бичих (read/write) үйлдлүүдээс давсан боломжуудыг агуулдаг. Та мөн _terminal emulators_ гэсэн нэр томьёог сонсож магадгүй, эдгээр нь үндсэндээ нэмэлт боломжууд эсвэл функционал санал болгохын тулд энгийн terminal интерфэйсийг "ороосон" application-ууд юм. Гэхдээ ерөнхий хэрэглээний хувьд эдгээрийг мөн "terminal" гэж нэрлэхэд ихэвчлэн асуудалгүй.

Эцэст нь, бид "shell" гэж юу болохыг ойлгох хэрэгтэй. Shell нь command line-ийг "ороож", таны оруулсан утгуудыг команд болгон тайлбарлаж, үр дүнг буцаадаг программ хангамж юм.

Гэхдээ та өөрийн систем дээр terminal-ийг хэрхэн нээх вэ?

Хэрвээ та Windows-ийн орчин үеийн хувилбарыг ашиглаж байгаа бол, танд ихэвчлэн хоёр өөр сонголт байх болно. Windows нь анхнаасаа хоёр өөр shell application санал болгодог: Powershell болон Command Prompt.

Эдгээр shell-ууд нь тус бүрдээ өөрийн гэсэн terminal application-той (нэр нь мөн shell-ийн нэртэй адил байдаг), тиймээс та application цэсээ ашиглан Powershell terminal эсвэл Command Prompt terminal-ийг нээж болно.

Windows мөн харьцангуй шинэ, орчин үеийн terminal emulator болох Microsoft Terminal-ийг санал болгодог.

Та энэ application-ийг Windows Store-оос суулгаж, дараа нь Powershell эсвэл Command Prompt terminal-уудаа нээдэгтэй адилхан байдлаар ажиллуулж болно. Microsoft Terminal-ийн давуу тал нь та нэг application дотор Powershell болон Command Prompt shell-уудыг хоёуланг нь ашиглах боломжтой бөгөөд хэрвээ та Windows Subsystem for Linux-ийг тохируулсан бол өөрийн Linux shell-ийг ч мөн ашиглах боломжтой байдаг.

MacOS нь "Terminal" нэртэй terminal application-ийг санал болгодог. Та үүнийг spotlight search эсвэл application launcher-оор дамжуулан нээж болно.

MacOS мөн гуравдагч талын (third-party) terminal emulator-уудыг дэмждэг, жишээлбэл iTerm эсвэл Ghostty. Та эдгээр application-уудыг өөрсдийн албан ёсны вэбсайтаас суулгаж болно.

Linux дээр default terminal (мөн үүнийг хэрхэн нээх) нь таны ашиглаж буй distro болон desktop environment-оос ихээхэн хамаардаг. Мөн гуравдагч талын terminal emulator-уудыг дэмжих маш олон боломж байдаг. Жишээлбэл, та Arch Linux дээр kitty-г тохируулж болно — мөн үүнийг wofi зэрэг application manager-аар ажиллуулж болно.

Linux нь terminal application-уудын хамгийн өргөн сонголттой гэж хэлж болно. Эдгээрийн ихэнхийг таны distro-ийн package manager-ээр дамжуулан суулгаж болдог.

"Terminal", "shell", болон "command line" гэсэн ойлголтуудын ялгаа заримдаа хэт нарийн (pedantic) мэт санагдаж болно. Мөн ихэнх тохиолдолд эдгээр нэр томьёог харилцан орлуулж ашиглаж болдог. Гэхдээ эдгээр нь тус бүрдээ тодорхой утгатай бөгөөд тэр утгууд нь юу болохыг ойлгох нь чухал юм.
