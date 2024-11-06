# The Goods Place Mobile
**Nama**: Meisya Najla Aqilah <br />
**NPM**: 2306209870 <br />
**Kelas**: PBP C <br />

# Tugas 7: Elemen Dasar Flutter
## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless widget merupakan jenis widget dalam framework Flutter tidak menyimpan perubahan data selama aplikasi berjalan, sehingga tampilannya akan tetap sama setiap kali widget diperbarui. Di sisi lain, stateful widget merupakan jenis widget yang dapat penyimpanan data terbaru yang memungkinkan tampilannya untuk diperbarui sesuai dengan interaksi pengguna.

## Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Berdasarkan kode yang telah saya buat sebelumnya, saya menggunakan beberapa widget, antara lain:
1. Scaffold, yang menyediakan struktur dasar untuk halaman, seperti bagian AppBar di atas dan body di bawahnya.
2. AppBar, yang menampilkan header di bagian atas halaman, seperti judul aplikasi dan button menu.
3. Padding, yang memberikan jarak di sekitar konten di dalam widget tertentu untuk menambah spasi.
4. Column, yang menyusun widget secara vertikal pada body halaman.
5. Row, yang menyusun widget secara horizontal, seperti menampilkan tiga InfoCard yang memuat informasi NPM, Name, dan Class.
6. SizedBox, yang menyediakan ruang kosong dengan ukuran tertentu untuk memberi jarak vertikal antara widget-widget Column.
7. Center, yang memposisikan widget anaknya di tengah layar dalam widget Column.
8. Text, yang menampilkan teks seperti judul, teks pada InfoCard dan ItemCard.
9. GridView.count, yang membuat layout grid dengan jumlah kolom tetap sesuai parameternya.
10. Card, yang membuat kotak dengan shadow dibawahnya untuk menampilkan informasi detail.
11. Container, yang membungkus widget lain dan memungkinkan pengaturan ukuran, padding, dan warna background.
12. Material, yang menyediakan elemen dasar yang mendukung efek seperti shadow dan inkwell pada ItemCard.
13. InkWell, yang memungkinkan widget didalamnya dapat merespons sentuhan (interaktif) dengan tujuan untuk menampilkan SnackBar saat button ditekan.
14. Icon, yang menampilkan icon-icon yang ada pada ItemCard.
15. SnackBar, yang menampilkan pesan singkat di bagian bawah layar pada saat ItemCard ditekan.

## Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() pada Flutter berfungsi untuk memberi tahu framework tentang perubahan data pada stateful widget, sehingga tampilan akan diperbarui dan mencerminkan data terbaru setelah proses rebuild dijalankan. Beberapa variabel yang dapat terpengaruh oleh fungsi ini antara lain:
1. Variabel data dinamis, seperti variabel counter atau data input pengguna yang akan berubah saat aplikasi berjalan.
2. Variabel yang mengontrol tampilan UI dari aplikasi, seperti warna, text, icon, atau daftar item yang ditampilkan pada layar.
3. Variabel untuk logika dan kondisi tampilan, seperti boolean yang digunakan untuk menampilkan/menyembunyikan elemen UI berdasarkan kondisi tertentu.

## Jelaskan perbedaan antara `const` dengan `final`.
Perbedaan antara const dan final pada Flutter maupun Dart dapat dilihat dari ketetapan nilai, waktu pengerjaan, serta instansiasi objek.
1. Berdasarkan ketetapan nilai, const menetapkan nilai konstan, sebaliknya final menetapkan nilai tetap yang ditentukan oleh pengguna.
2. Berdasar waktu pengerjaan, const digunakan untuk nilai yang sudah tetap saat kompilasi (angka atau teks statis), sedangkan final digunakan untuk nilai yang baru diketahui pada runtime (hasil fungsi atau input dari pengguna).
3. Berdasarkan instansiasi objek, const menjadikan objek bersifat konstan dan tidak berubah sepanjang aplikasi, sementara final membuat objek dengan nilai tetap yang dapat berbeda setiap kali kode dijalankan.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Checklist tersebut diimplementasikan dengan cara-cara berikut.
1. **Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.** <br />
Pertama, saya membuat direktori baru dengan nama the-goods-place pada direktori local. Setelah itu, saya melakukan generate proyek baru Flutter pada terminal dengan command flutter create the_goods_place. Kemudian, pada direktori lib, saya membuat file baru dengan nama menu.dart, yang isinya class MyHomePage dan class _MyHomePageState yang saya pindahkan dari main.dart. Terakhir, pada main.dart tidak terjadi error, saya melakukan import package:the_goods_place/menu.dart agar program dapat tetap mengenali class MyHomePage.
2. **Membuat tiga tombol sederhana dengan ikon dan teks untuk: melihat daftar produk, menambah produk, dan logout.** <br />
Pertama, widget yang ada pada menu.dart saya ubah menajdi stateless widget. Lalu, saya membuat InfoCard serta ButtonCard dengan icon dan text yang sesuai pada menu.dart.
3. **Mengimplementasikan warna-warna yang berbeda untuk setiap tombol.** <br />
Pertama, untuk mengubah tema warna aplikasi pada main.dart, saya mengubah colorScheme yang ada pada main.dart dengan color palette yang sesuai primary, secondary, surface, dan error. Kemudian, pada menu.dart, saya mengubah beberapa widget dengan Theme.of(context).colorScheme agar menyesuaikan dengan color palette.
4. **Memunculkan Snackbar dengan tulisan: "Kamu telah menekan tombol Lihat Daftar Produk" ketika button See Product ditekan, "Kamu telah menekan tombol Tambah Produk" ketika button Create Product ditekan, dan "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.** <br />
Pertama, saya membuat class ItemCard yang akan mengextends dari StatelessWidget. Pada class tersebut, saya memanggil class InkWell, dimana dia akan menampilkan SnackBar dengan ScaffoldMessenger.of(context)..hideCurrentSnackBar()..showSnackBar(SnackBar(content: Text())); dengan action onTap(), agar SnackBar dapat ditampilkan ketika Card ditekan.