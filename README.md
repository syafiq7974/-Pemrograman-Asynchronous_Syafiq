PRAKTIKUM Pemrograman Asynchronous

![download](https://github.com/user-attachments/assets/2e2efce9-8817-4ca6-8597-e3ab1f967875)

NAMA : Syafiq Burhanuddin
KELAS : 2A TRPL
NIM : 362358302068

*Praktikum 1: Mengunduh Data dari Web Service (API)
Hasil:
  ![WhatsApp Image 2024-11-25 at 09 51 47_bcf06aa6](https://github.com/user-attachments/assets/7bef5e91-1189-4ac8-a227-8eb9cff179e2)

  SOAL:
  Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!
  1. Substring
Maksud: Substring digunakan untuk mengambil sebagian dari sebuah string berdasarkan indeks awal dan indeks akhir (opsional). Substring sangat berguna untuk memotong bagian teks, misalnya jika Anda ingin menampilkan sebagian teks pada UI.
  2. catchError
Maksud: catchError adalah metode yang digunakan untuk menangani kesalahan atau error ketika Anda menggunakan fungsi berbasis Future. Ini memungkinkan Anda untuk menangkap error tanpa membuat aplikasi crash, memberikan pengalaman yang lebih stabil untuk pengguna.

*Praktikum 2: Menggunakan await/async untuk menghindari callbacks
Hasil:
![WhatsApp Image 2024-11-25 at 09 55 51_9fd23974](https://github.com/user-attachments/assets/2afc14bb-0eec-4964-a1e7-cf7d54750482)

 SOAL:
 Jelaskan maksud kode langkah 1 dan 2 tersebut!
 Penjelasan:
Future Methods (Langkah 1):

returnOneAsync(), returnTwoAsync(), dan returnThreeAsync() adalah method yang masing-masing menunggu selama 3 detik menggunakan Future.delayed() sebelum mengembalikan angka (1, 2, dan 3).
Method count() (Langkah 2):

Method ini memanggil ketiga method sebelumnya secara berurutan menggunakan await untuk menunggu hasil dari masing-masing method, kemudian menjumlahkan hasilnya dan mengembalikan totalnya.
onPressed():

Pada saat tombol "GO!" ditekan, method count() akan dipanggil, dan hasil penjumlahan angka-angka yang diperoleh dari ketiga method akan ditampilkan setelah menunggu sekitar 9 detik (karena ada penundaan 3 detik pada setiap method).
Tampilan:

Setelah 9 detik, aplikasi akan menampilkan hasil penjumlahan (yaitu 6) dalam tampilan layar.

 *Praktikum 3: Menggunakan Completer di Future
 Hasil:
![WhatsApp Image 2024-11-25 at 10 00 25_4b66a442](https://github.com/user-attachments/assets/b4ea585a-0e8e-449d-a08d-82663efca824)
SOAL
Soal 5: Penjelasan Kode Langkah 2
Kode langkah 2 di atas membuat sebuah Completer, yang memungkinkan kita untuk menyelesaikan operasi Future di masa depan dengan memberikan nilai tertentu (42). Di dalam method calculate, kita mensimulasikan penundaan 5 detik menggunakan Future.delayed, lalu kita menyelesaikan Completer dengan angka 42.

Completer di sini memungkinkan kita untuk menyelesaikan Future secara manual. Method getNumber mengembalikan completer.future, yang menunggu hingga nilai diberikan pada completer.complete().

Soal 6: Penjelasan Perbedaan Kode Langkah 2 dengan Langkah 5-6
Langkah 2: Di langkah ini, kita langsung menunggu hasil dari completer.future menggunakan await. Setelah selesai, kita menyelesaikan Completer dengan nilai 42.
Langkah 5-6: Di langkah ini, kita menggunakan then untuk menangani hasil setelah Future selesai dan catchError untuk menangani jika terjadi kesalahan. Dengan menggunakan then, kita dapat mengatur hasil yang diterima dan menampilkannya setelah operasi selesai, sedangkan catchError digunakan untuk menangani kesalahan yang mungkin terjadi.

*Praktikum 4: Memanggil Future secara paralel
Hasil
![WhatsApp Image 2024-11-25 at 10 00 25_ba3bb6fa](https://github.com/user-attachments/assets/1096c9cb-9b13-4ad3-9fab-7feb1689ad82)
SOAL

*Praktikum 5: Menangani Respon Error pada Async Code
Hasil
![WhatsApp Image 2024-11-25 at 10 18 59_4318c5cf](https://github.com/user-attachments/assets/9f80427a-de6b-4f1e-9adc-f0baed17c500)
soal
Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!
Perbedaan Langkah 1 dan Langkah 4
Langkah 1 (then callback):
Pendekatan: Menggunakan then untuk mengelola hasil async dan catchError untuk menangani error.
Kelebihan:
Pemisahan logika berhasil (then) dan gagal (catchError) menjadi lebih jelas.
Cocok untuk operasi sederhana dengan sedikit error handling.
Kekurangan:
Sulit untuk mengelola error kompleks karena memerlukan callback tambahan.
Langkah 4 (handleError dengan async/await):
Pendekatan: Menggunakan async/await dengan try-catch dalam metode handleError.
Kelebihan:
Struktur kode lebih rapi dan mudah dibaca.
Mempermudah debug error dengan penanganan langsung menggunakan try-catch.
Kekurangan:
Harus memanggil metode tambahan (handleError), sehingga kode sedikit lebih panjang.

*Praktikum 6: Menggunakan Future dengan StatefulWidget
Hasil
![WhatsApp Image 2024-11-25 at 11 10 16_2e755470](https://github.com/user-attachments/assets/2ba44e35-834b-4742-a264-afc2c8d42da4)
Soal:
Mengapa tidak mendapatkan koordinat GPS saat run di browser?
Tidak, koordinat GPS tidak akan diperoleh ketika aplikasi dijalankan di browser karena akses ke layanan lokasi membutuhkan izin perangkat keras (seperti GPS) yang tidak tersedia di browser. Browser hanya dapat menyediakan lokasi perkiraan berdasarkan jaringan atau IP.

*Praktikum 7: Manajemen Future dengan FutureBuilder
Hasil
![WhatsApp Image 2024-11-25 at 11 22 24_13d8c82c](https://github.com/user-attachments/assets/ae1b0eea-800c-4ed5-9710-491af57caa77)
Soal:
Soal 13: Apakah Ada Perbedaan UI?
Ya, ada perbedaan UI. Sebelumnya, kita menggunakan setState untuk mengelola lokasi. Sekarang, dengan FutureBuilder, UI menjadi lebih reaktif dan otomatis diperbarui ketika data tersedia, tanpa perlu mengelola state secara manual.

Soal 14: Perbedaan dengan Langkah Sebelumnya
Handling error ditambahkan, sehingga pengguna akan mendapatkan pesan error yang lebih informatif jika terjadi masalah. Sebelumnya, tidak ada penanganan error eksplisit pada tampilan UI.

*Praktikum 8: Navigation route dengan Future Function
Hasil
![WhatsApp Image 2024-11-25 at 11 28 22_53135307](https://github.com/user-attachments/assets/1d58c813-d0e9-4b98-91b9-fb0dc09aa992)
![WhatsApp Image 2024-11-25 at 11 28 49_c9970501](https://github.com/user-attachments/assets/6c404c7f-b40b-48f3-97c9-5f5e2901757e)
Soal:
Soal 15
Nama panggilan telah ditambahkan pada title di AppBar.
Warna favorit (merah, hijau, biru) digunakan di tombol pada navigation_second.dart.
Soal 16
Apa yang terjadi saat tombol ditekan?
Ketika tombol ditekan, aplikasi akan berpindah ke layar kedua. Setelah memilih warna, warna tersebut akan dikembalikan ke layar pertama, dan warna latar belakang layar pertama akan berubah sesuai warna yang dipilih.

Mengapa demikian?
Navigator.pop(context, Color) mengembalikan warna ke layar pertama, dan Future menunggu hasil navigasi. Setelah hasil diterima, state di layar pertama diperbarui menggunakan setState.

*Praktikum 9: Memanfaatkan async/await dengan Widget Dialog
Hasil
![WhatsApp Image 2024-11-25 at 11 31 33_3133db01](https://github.com/user-attachments/assets/e86fc31b-56ab-4da2-b459-4fbe49c65008)
![WhatsApp Image 2024-11-25 at 11 31 54_e2a2e0cd](https://github.com/user-attachments/assets/587669c2-0fd9-45db-99d9-fa325b31c8a6)
Soal
Soal 17
Apa yang terjadi saat tombol ditekan?
Ketika tombol ditekan, dialog muncul di layar dengan tiga pilihan warna. Saat pengguna memilih salah satu warna, dialog ditutup, dan warna latar belakang layar diperbarui sesuai dengan warna yang dipilih.

Mengapa demikian?
Fungsi showDialog menggunakan Future untuk menunggu hasil interaksi pengguna. Saat pengguna memilih warna, hasilnya dikembalikan menggunakan Navigator.pop, dan fungsi async menunggu hingga nilai dikembalikan. Nilai ini kemudian digunakan untuk memperbarui state widget dengan setState.
Ganti warna favorit Anda!
Ubah tiga warna di dialog dengan warna favorit Anda. Misalnya:
![image](https://github.com/user-attachments/assets/4003357d-5192-4c63-aee6-57456c953d08)

