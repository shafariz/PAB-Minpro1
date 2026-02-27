# APLIKASI DAFTAR BUKU FAVORIT ❤︎

Shafa Rizqi Nur Wahidah (2409116041)

Sistem Informasi B 2024

---

# Deskripsi Aplikasi

Aplikasi Daftar Buku Favorit merupakan aplikasi mobile berbasis Flutter yang dirancang untuk membantu pengguna dalam mencatat dan mengelola daftar buku favorit secara sederhana dan interaktif.

Melalui aplikasi ini, pengguna dapat menambahkan data buku baru, melihat daftar buku yang telah disimpan, memperbarui informasi buku, serta menghapus buku dari daftar yang tersedia.

Aplikasi ini dikembangkan dengan tampilan antarmuka yang modern dan aesthetic menggunakan perpaduan warna Purple Ash (#8F8395) dan Vanilla (#F3E5AB). Selain itu, digunakan font Poppins sebagai font utama pada seluruh aplikasi dan Playfair Display secara khusus untuk judul aplikasi agar memberikan kesan yang lebih elegan.

---

# Fitur Aplikasi

## Fitur Wajib

**1. CREATE (Tambah Data Buku)**

Fitur ini memungkinkan pengguna untuk menambahkan buku baru melalui halaman “Add Book”. Pada halaman tersebut, pengguna diminta untuk mengisi beberapa data penting yaitu Book Title (Judul Buku), Author (Penulis), Year (Tahun Terbit), dan Total Pages (Jumlah Halaman). Setelah tombol Save ditekan, data buku akan dikirim kembali ke halaman utama menggunakan Get.back(result:). Buku yang baru ditambahkan akan langsung muncul di dalam daftar, dan tampilan diperbarui secara otomatis menggunakan setState() sehingga pengguna dapat langsung melihat hasil input tanpa perlu memuat ulang aplikasi.

**2. READ (Menampilkan Daftar Buku)**

Fitur ini berfungsi untuk menampilkan seluruh buku yang telah ditambahkan oleh pengguna. Data buku ditampilkan pada halaman utama dalam bentuk Card dengan desain membulat agar terlihat modern dan rapi. Setiap card menampilkan informasi berupa Book Title yang ditampilkan dengan huruf tebal, Author, Year, serta Total Pages. Apabila belum ada buku yang ditambahkan, aplikasi akan menampilkan pesan “No favorite books yet. Tap + to add.” sebagai informasi bahwa daftar masih kosong.

**3. DELETE (Hapus Data Buku)**

Fitur delete memungkinkan pengguna untuk menghapus buku dari daftar favorit. Ketika ikon delete ditekan, data buku akan dihapus dari list yang tersimpan di dalam state aplikasi. Setelah itu, tampilan akan langsung diperbarui menggunakan setState() sehingga buku yang dihapus tidak lagi muncul dalam daftar.

## Nilai Tambah

**4. UPDATE (Edit Data Buku)** 

Fitur update memungkinkan pengguna untuk mengubah data buku yang sudah tersimpan. Ketika ikon edit ditekan, aplikasi akan berpindah ke halaman Edit menggunakan Get.to(). Pada halaman tersebut, data lama akan otomatis terisi pada setiap TextField sehingga pengguna tidak perlu mengetik ulang dari awal. Setelah perubahan selesai dan tombol Update ditekan, data akan diperbarui dan dikirim kembali ke halaman utama menggunakan Get.back(result:). Daftar buku kemudian langsung diperbarui sehingga perubahan dapat terlihat secara real-time.

**5. MULTI PAGE NAVIGATION**

Aplikasi ini menerapkan navigasi antar halaman menggunakan GetX Navigation sebagai nilai tambah. Perpindahan halaman dilakukan dengan Get.to() untuk menuju halaman Tambah atau Edit, dan Get.back(result:) untuk kembali ke halaman sebelumnya sambil mengirimkan data. Penggunaan GetX membuat struktur navigasi menjadi lebih sederhana dan mudah dikelola dibandingkan Navigator biasa.

---

# Widget yang Digunakan

| Widget               | Fungsi                                                                                                                       |
| -------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| GetMaterialApp       | Digunakan sebagai dasar utama aplikasi dan untuk mengatur navigasi antar halaman menggunakan GetX.                           |
| Scaffold             | Menjadi kerangka utama setiap halaman yang menampung bagian seperti body dan tombol tambah (FloatingActionButton).           |
| Container            | Digunakan untuk membuat bagian header dengan warna latar, jarak (padding), dan sudut melengkung agar tampilan lebih menarik. |
| Column               | Mengatur widget agar tersusun dari atas ke bawah secara vertikal.                                                            |
| Expanded             | Membuat daftar buku memenuhi sisa ruang layar agar tampilan rapi dan proporsional.                                           |
| ListView.builder     | Menampilkan daftar buku secara otomatis sesuai jumlah data yang ada.                                                         |
| Card                 | Membungkus setiap data buku agar terlihat lebih rapi dan memiliki efek bayangan.                                             |
| ListTile             | Mengatur isi di dalam Card seperti judul buku, detail informasi, dan tombol edit serta delete.                               |
| Text                 | Menampilkan semua tulisan dalam aplikasi seperti judul, deskripsi, dan informasi buku.                                       |
| TextField            | Tempat pengguna memasukkan data buku saat menambah atau mengedit buku.                                                       |
| ElevatedButton       | Tombol untuk menyimpan atau memperbarui data buku.                                                                           |
| IconButton           | Tombol berbentuk ikon yang digunakan untuk edit dan hapus data.                                                              |
| FloatingActionButton | Tombol bulat dengan ikon "+" yang digunakan untuk menambahkan buku baru.                                                     |
| Padding              | Memberi jarak antar elemen agar tampilan tidak terlalu rapat.                                                                |
| SizedBox             | Memberi jarak vertikal antar widget agar lebih rapi.                                                                         |
| StatefulWidget       | Digunakan pada halaman utama karena data buku bisa berubah saat ditambah, diubah, atau dihapus.                              |
| StatelessWidget      | Digunakan pada halaman yang tidak memerlukan perubahan data secara langsung.                                                 |

---

# Dependencies
```dart
dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.6
  google_fonts: ^6.2.1
```

Aplikasi Daftar Buku Favorit menggunakan beberapa dependencies tambahan untuk mendukung fitur dan tampilan aplikasi. Berikut penjelasannya:

**1. get**

Dependency get digunakan untuk mengatur navigasi antar halaman dalam aplikasi. Dengan GetX, proses perpindahan halaman menjadi lebih sederhana dibandingkan menggunakan Navigator biasa.

Pada aplikasi ini, GetX digunakan untuk berpindah ke halaman tambah dan edit buku menggunakan Get.to() dan kembali ke halaman sebelumnya sambil mengirim data menggunakan Get.back(result:)

Penggunaan GetX membuat kode navigasi lebih ringkas, mudah dibaca, dan lebih efisien.

**2. google_fonts**

Dependency google_fonts digunakan untuk mengatur jenis huruf (font) pada aplikasi agar tampil lebih menarik dan sesuai dengan desain yang diinginkan.

Pada aplikasi ini Font Poppins digunakan sebagai font utama pada seluruh aplikasi danFont Playfair Display digunakan khusus untuk judul “My Favorite Books” agar terlihat lebih elegan.

Dengan google_fonts, kita tidak perlu mengunduh dan memasukkan file font secara manual karena font dapat langsung digunakan melalui package ini.

# Dokumentasi Program

**Halaman Utama**

<img width="1920" height="1200" alt="image" src="https://github.com/user-attachments/assets/b2d96211-b118-44c5-8c2c-1e5f1638e490" />

