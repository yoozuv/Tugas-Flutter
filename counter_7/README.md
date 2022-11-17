# counter_7

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

 ### 1.Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
 stateful widget adalah widget yang konfigurasi,tampilannya dapat berubah ketika user melakukan suatu action berinteraksi dengan aplikasi, atau terjadi  perubahan data , sedangkan stateless widget adalah widget yang tetap/tidak pernah berubah. Stateless widget bersifat statis, sedangkan stateful dinamis
 ### 2.Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 - text : menampilkan text
 - Position:widget yang posisi childnya dapat diatur sesuai keinginan user
 - Scaffold : widget utama untuk membuat sebuah halaman pada flutter
 - icon: menampilkan icon
 - padding : Widget yang menyisipkan child sesuian dengan padding yang diberikan.
 - row: widget yang menenmpatkan childnya secara horizontal
 - column: layout widget yang menempatkan child dalam bentuk list secara vertikan
 - center: layout widget yang menempatkan child di tengah
 
 
 ### 3.Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
 
 setState berfungsi untuk memberi tahu flutter bahwa terjadi perubahan state dari suatu objek yang berpengaruh ke user interface. Kemudian, flutter akan me-rebuild view sesuai dengan perubahan yang terjadi. Dalam counter_7, setState digunakan di fungsi inceremenCounter, decrementCounter,dan setText karena fungsi tersebut mengubah nilai dari variable yang akan ditampilkan di widget.
 ### 4.Jelaskan perbedaan antara const dengan final.
 value pada const harus telah diinisialisasi saat compile time, sedangkan final tidak harus memiliki value saat kompilasi
 ### 5.Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 - buat aplikasi bernama counter_7 menggunakan perintah ``` flutter create counter_7```
 - pada main.dart, di class _myHomePageState, buat sebuah variable string kategori, dengan value awal "genap"
 - pada class _myHomePageState, buat fungsi _decrementCounter untuk mengurangi nilai _counter. Kemudian buat fungsi _setText untuk mengubha value dari varibale kategori sesuai dengan nilai _counter.
 - tambahkan floatingActionButton untuk melakukann increment dan decrement counter, dan atur posisi button tersebut dengan padding
 - atur warna text kategori menggunakan TextStyle
 - 

## Tugas 8
 ### 1.Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement
 pushReplacement akan menggantikan page sebelumnya sehingga page sebelumnya dihapus, sedangkan push hanya menambah page di atas page sebelumnya, dan page sebelumnya masih ada
 
 ### 2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 - text : menampilkan text
 - Position:widget yang posisi childnya dapat diatur sesuai keinginan user
 - Scaffold : widget utama untuk membuat sebuah halaman pada flutter
 - icon: menampilkan icon
 - padding : Widget yang menyisipkan child sesuian dengan padding yang diberikan.
 - row: widget yang menenmpatkan childnya secara horizontal
 - column: layout widget yang menempatkan child dalam bentuk list secara vertikan
 - center: layout widget yang menempatkan child di tengah
 - Navigator: Widget yang mengelola sekumpulan child widget dalam bentuk stack
 
### 3. Sebutkan jenis-jenis event yang ada pada Flutter
- onPressed : 
- onTap
- onSaved
- onChanged

### 4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
navigator mengelola child widget dalam bentuk stack yang dapat di-push dan pop. Ketika di-push, maka page yang di-push tersebut akan menghimpit page sebelumnya sehingga page tersebut berada di top of stack dan ditampilkan, sedangkan ketika di-pop, page sebelumnya akan ditampilkan dan page saat ini akan hilang

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
- membuat dua file baru, yaitu form.dart untuk tambha budget dan DataBudget.dart untuk menampilkan data yang ditambahkan.
- tambhakan drawer di file main.dart, form.dart, dan DataBudget.dart. Di darawer tersebut, beri Listile yang mengarahkan ke halaman main, form, dan DataBudget menggunakan navigator.pushReplacement.
- Pada form.dart, tambhakan widget Padding yang memiliki child textFpormField, kemudian,tambahkan dropdown jenis. Pada widget tersebut, beri event sesuai dengan soal
- Pada DataBudget.dart, tambhakan widget untuk menampilkan data yang di-passing melalui argumen constructer MyDataBudget.
-
