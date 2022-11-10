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
 
 - icon: menampilkan icon
 - padding : Widget yang menyisipkan child sesuian dengan padding yang diberikan.
 - row: widget yang menenmpatkan childnya secara horizontal
 - column: layout widget yang menempatkan child dalam bentuk list secara vertikan
 - center: layout widget yang menempatkan child di tengah
 
 
 ### 3.Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
 
 setState berfungsi untuk memberi tahu flutter bahwa terjadi perubahan state dari suatu objek yang berpengaruh ke user interface. Kemudian, flutter akan me-rebuild view sesuai dengan perubahan yang terjadi. Dalam counter_7, seState digunakan di fungsi inceremenCounter, decrementCounter,dan setText karena fungsi tersebut mengubah nilai dari variable yang akan ditampilkan di widget.
 ### 4.Jelaskan perbedaan antara const dengan final.
 value pada const harus telah diinisialisasi saat compile time, sedangkan final tidak harus memiliki value saat kompilasi
 ### 5.Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
 - buat aplikasi bernama counter_7 menggunakan perintah ``` flutter create counter_7```
 - pada main.dart, di class _myHomePageState, buat sebuah variable string kategori, dengan value awal "genap"
 - pada claa _myHomePageState, buat fungsi _decrementCounter untuk mengurangi nilai _counter. Kemudian buat fungsi _setText untuk mengubha value dari varibale kategori sesuai dengan nilai _counter.
 - tambhkan floatingActionButton untuk melakukann increment dan decrement counter, dan atur posisi button tersebut dengan padding
 - atur warna text kategori menggunakan TextStyle
 - 
