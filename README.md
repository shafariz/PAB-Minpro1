# APLIKASI DAFTAR BUKU FAVORIT ❤︎

Shafa Rizqi Nur Wahidah (2409116041)

Sistem Informasi B 2024

---

# Deskripsi Aplikasi

**Aplikasi Daftar Buku Favorit** adalah aplikasi mobile berbasis Flutter yang digunakan untuk mencatat dan mengelola daftar buku favorit pengguna secara sederhana dan interaktif.

Aplikasi ini memungkinkan pengguna untuk menambahkan data buku baru, melihat daftar buku yang telah disimpan, mengedit informasi buku, dan menghapus buku dari daftar.

Aplikasi ini dirancang dengan tampilan UI modern dan aesthetic menggunakan perpaduan warna Purple Ash (#8F8395) dan Vanilla (#F3E5AB) serta Font Poppins sebagai font utama dan Playfair Display khusus untuk judul aplikasi.

---

# Fitur Aplikasi

**1. CREATE (Tambah Data Buku)**

Fitur ini memungkinkan pengguna untuk menambahkan buku baru melalui halaman “Add Book”. Pada halaman tersebut, pengguna diminta untuk mengisi beberapa data penting yaitu Book Title (Judul Buku), Author (Penulis), Year (Tahun Terbit), dan Total Pages (Jumlah Halaman). Setelah tombol Save ditekan, data buku akan dikirim kembali ke halaman utama menggunakan Get.back(result:). Buku yang baru ditambahkan akan langsung muncul di dalam daftar, dan tampilan diperbarui secara otomatis menggunakan setState() sehingga pengguna dapat langsung melihat hasil input tanpa perlu memuat ulang aplikasi.

**2. READ (Menampilkan Daftar Buku)**

Fitur ini berfungsi untuk menampilkan seluruh buku yang telah ditambahkan oleh pengguna. Data buku ditampilkan pada halaman utama dalam bentuk Card dengan desain membulat agar terlihat modern dan rapi. Setiap card menampilkan informasi berupa Book Title yang ditampilkan dengan huruf tebal, Author, Year, serta Total Pages. Apabila belum ada buku yang ditambahkan, aplikasi akan menampilkan pesan “No favorite books yet. Tap + to add.” sebagai informasi bahwa daftar masih kosong.

**3. UPDATE (Edit Data Buku)** 

Fitur update memungkinkan pengguna untuk mengubah data buku yang sudah tersimpan. Ketika ikon edit ditekan, aplikasi akan berpindah ke halaman Edit menggunakan Get.to(). Pada halaman tersebut, data lama akan otomatis terisi pada setiap TextField sehingga pengguna tidak perlu mengetik ulang dari awal. Setelah perubahan selesai dan tombol Update ditekan, data akan diperbarui dan dikirim kembali ke halaman utama menggunakan Get.back(result:). Daftar buku kemudian langsung diperbarui sehingga perubahan dapat terlihat secara real-time.

**4. DELETE (Hapus Data Buku)**

Fitur delete memungkinkan pengguna untuk menghapus buku dari daftar favorit. Ketika ikon delete ditekan, data buku akan dihapus dari list yang tersimpan di dalam state aplikasi. Setelah itu, tampilan akan langsung diperbarui menggunakan setState() sehingga buku yang dihapus tidak lagi muncul dalam daftar.

**5. MULTI PAGE NAVIGATION**

Aplikasi ini menerapkan navigasi antar halaman menggunakan GetX Navigation sebagai nilai tambah. Perpindahan halaman dilakukan dengan Get.to() untuk menuju halaman Tambah atau Edit, dan Get.back(result:) untuk kembali ke halaman sebelumnya sambil mengirimkan data. Penggunaan GetX membuat struktur navigasi menjadi lebih sederhana dan mudah dikelola dibandingkan Navigator biasa.

---

# Widget yang Digunakan

| Widget | Fungsi |
|---------|--------|
| GetMaterialApp | Digunakan sebagai root aplikasi yang mendukung navigasi menggunakan GetX. |
| Scaffold | Menyediakan struktur dasar halaman seperti body dan floating action button. |
| Container | Digunakan untuk membuat header dengan warna, padding, dan border radius melengkung. |
| Column | Menyusun widget secara vertikal dalam satu halaman. |
| Expanded | Membuat ListView mengisi sisa ruang yang tersedia di dalam Column. |
| ListView.builder | Menampilkan daftar buku secara dinamis sesuai jumlah data dalam list. |
| Card | Membungkus setiap data buku agar tampil lebih rapi dan memiliki efek bayangan. |
| ListTile | Menyusun isi dalam Card seperti judul, detail buku, dan tombol aksi. |
| Text | Menampilkan tulisan seperti judul aplikasi, subtitle, dan informasi buku. |
| TextField | Menerima input dari pengguna saat menambahkan dan mengedit data buku. |
| ElevatedButton | Digunakan sebagai tombol aksi seperti menyimpan dan memperbarui data. |
| IconButton | Digunakan untuk tombol edit dan delete pada setiap item buku. |
| FloatingActionButton | Digunakan sebagai tombol utama untuk menambahkan buku baru. |
| Padding | Memberikan jarak antar widget agar tampilan tidak terlalu rapat. |
| SizedBox | Memberikan jarak vertikal antar elemen. |
| StatefulWidget | Digunakan pada halaman utama karena data dapat berubah (tambah, edit, hapus). |
| StatelessWidget | Digunakan pada halaman yang tidak memerlukan perubahan state kompleks. |

---

# Dokumentasi Program dan Cara Menggunakannya
