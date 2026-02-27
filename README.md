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

Pengguna dapat menambahkan buku baru melalui halaman “Add Book”.

Data yang harus diisi:

✦ Book Title (Judul Buku)

✦ Author (Penulis)

✦ Year (Tahun Terbit)

✦ Total Pages (Jumlah Halaman)

Setelah tombol Save ditekan:

✦ Data akan dikirim kembali ke halaman utama menggunakan Get.back(result:)

✦ Buku langsung muncul dalam daftar

✦ Tampilan diperbarui menggunakan setState()

**2. READ (Menampilkan Daftar Buku)**

Semua buku yang telah ditambahkan akan ditampilkan pada halaman utama dalam bentuk Card yang modern dan membulat.

Informasi yang ditampilkan:

✦ Book Title (Bold)

✦ Author

✦ Year

✦ Total Pages

Jika belum ada data, aplikasi akan menampilkan pesan “No favorite books yet. Tap + to add.”

**3. UPDATE (Edit Data Buku)** **[NILAI TAMBAH]**

Pengguna dapat mengedit data buku dengan menekan ikon ✏️ (edit).

Prosesnya:

✦ Aplikasi berpindah ke halaman Edit menggunakan Get.to()

✦ Data lama otomatis terisi di TextField

✦ Setelah tombol Update ditekan, data diperbarui

✦ Halaman kembali ke Home menggunakan Get.back(result:)

✦ Daftar langsung ter-update

**4. DELETE (Hapus Data Buku)**

Pengguna dapat menghapus buku dari daftar dengan menekan ikon 🗑️ (delete).

Saat tombol delete ditekan data dihapus dari list dan tampilan diperbarui menggunakan setState()

**5. MULTI PAGE NAVIGATION [NILAI TAMBAH]**

Aplikasi menggunakan GetX Navigation untuk berpindah antar halaman:

✦ Get.to() untuk berpindah ke halaman Tambah atau Edit

✦ Get.back(result:) untuk kembali ke halaman sebelumnya sambil mengirim data

---

# Widget yang Digunakan
# Dokumentasi Program dan Cara Menggunakannya
