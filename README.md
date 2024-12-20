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

# Tugas 8: Flutter Navigation, Layouts, Forms, dan Input Elements
## Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan `const` pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?
Pada Flutter, const digunakan untuk mendeklarasi nilai atau widget yang tetap dan tidak akan berubah selama eksekusi dijalankan. Penggunaan const ini dapat meningkatkan kinerja aplikasi dengan mengurangi pembuatan objek berulang sehingga dapat mengoptimalkan penggunaan memori.

Dalam penerapannya, deklarasi const sebaiknya digunakan pada widget stateless yang nilainya tidak berubah sepanjang berjalannya aplikasi. Meskipun demikian, pengunaan const perlu dihindari pada widget stateful, karena widget tersebut bergantung pada keadaan yang dipengaruhi oleh interaksi pengguna.

## Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column dan Row merupakan widget dasar pada Flutter yang digunakan untuk menyusun elemen secara vertikal dan horizontal.
1. Dalam penggunaannya, Column digunakan jika elemen perlu disusun dalam satu kolom secara vertikal (dari atas ke bawah). Contohnya pada class _ProductFormPageState, terdapat implementasi widget Column() untuk menyusun form input name, price, descrption, quantity, dan rating secara bertingkat.
2. Sementara itu, Row digunakan apabila elemen perlu disusun secara horizontal dalam satu baris (dari kiri ke kanan). Contohnya pada class MyHomePage yang terdapat implementasi widget Row() untuk menampilkan InfoCard secara sejajar.

## Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Dalam pembuatan form, saya menggunakan beberapa elemen imput Flutter seperti TextFormField dan ElevatedButton.
1. TextFormField: widget Flutter yang digunakan untuk menerima input teks name, price, descrption, quantity, dan rating dari pengguna.
2. ElevatedButton: widget Flutter yang digunakan untuk menambahkan shadow dibawah button Create Product dengan tujuan utamanya mengirimkan form dan menyimpan data.

Meskipun demikian, masih ada banyak elemen input Flutter lainnya yang tidak saya gunakan, seperti DropdownButton, Checkbox, Radio, DatePicker dan TimePicker, karena tidak sesuai dengan model yang telah saya buat sebelumnya.
1.  DropdownButton: widget Flutter yang digunakan untuk menampilkan daftar pilihan dalam bentuk dropdown.
2.  Checkbox: widget Flutter yang memungkinkan user untuk memilih satu atau lebih pilihan, dengan input yang bersifat boolean.
3.  Radio: widget Flutter yang memungkinkan user untuk memilih hanya satu pilihan dari sejumlah pilihan yang ada.
4.  DatePicker: widget Flutter yang digunakan untuk memungkinkan user memilih tanggal dalam tampilan kalender.
5.  TimePicker: widget Flutter yang digunakan untuk memungkinkan user memilih waktu dalam format jam dan menit. 

## Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Untuk menjaga konsistensi theme dalam aplikasi Flutter, tema global, yang berlaku di seluruh aplikasi, perlu didefinisikan menggunakan fitur ThemeData, dengan mencakup warna utama, warna sekunder, dan elemen desain lainnya. Tema tersebut kemudian dapat diterapkan secara global melalui properti theme pada class MaterialApp.

Pada aplikasi The Goods Place Mobile, tema global telah diimplementasikan dengan menggunakan ThemeData dalam widget MaterialApp. Tema tersebut mencakup pengaturan warna aplikasi melalui colorScheme, yang memodifikasi warna primary, warna secondary, warna untuk surface, dan warna untuk elemen error.

## Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Navigasi dalam aplikasi Flutter yang memiliki banyak halaman dapat ditangani dengan beberapa cara, seperti Navigator.push, Navigator.pop, Navigator.pushReplacement, onGenerateRoute dan penggunaan Drawer.
1. Navigator.push digunakan untuk menambahkan halaman ke dalam stack navigasi sehingga memungkinkan user untuk berpindah ke halaman berikutnya.
2. Navigator.pop dapat digunakan untuk menutup halaman yang sedang diakses dan kembali ke halaman sebelumnya pada stack navigasi.
3. Navigator.pushReplacement dapat digunakan untuk menggantikan halaman yang sedang diakses dengan halaman baru, sehingga halaman sebelumnya akan dihapus dari stack navigasi.
4. onGenerateRoute memungkinkan pembuatan rute secara dinamis dengan menanganinya berdasarkan nama dan argumen yang diberikan.
5. Drawer merupakan widget yang dapat digunakan untuk menyediakan navigasi dalam aplikasi dengan menampilkan menu pada sisi kiri layar.

# Tugas 9: Integrasi Layanan Web Django dengan Aplikasi Flutter
## Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Membuat model untuk pengambilan atau pengiriman data JSON perlu diimplementasikan karena model tersebut berfungsi sebagai representasi data yang mempermudah pengolahan, pemeriksaan, dan pengelolaan data dalam aplikasi.
1. Model memastikan data yang diterima atau dikirim memiliki struktur yang konsisten, dengan tujuan untuk mencegah kesalahan akibat format data yang tidak sesuai.
2. Model memungkinkan validasi data yang masuk sesuai spesifikasi yang ditentukan sehingga dapat mencegah masuknya data yang tidak valid ke dalam sistem.
3. Model yang menjadikan kode lebih terstruktur dan jelas dapat memudahkan developer untuk memahami pengelolaan data. <br />
Pengambilan atau pengiriman data JSON tanpa menggunakan model tidak selalu menyebabkan kesalahan, namun potensi kesalahan akan meningkat. Oleh karena itu, pembuatan model sangat penting untuk menjaga kualitas dan keamanan pengolahan data dalam aplikasi.

## Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini!
Terdapat beberapa fungsi dari library http yang telah saya implementasikan, seperti pbp_django_auth, request.get(), dan CookiesRequest.
1. pbp_django_auth merupakan wrapper client HTTP untuk Flutter yang bertujuan untuk melakukan interaksi dengan backend Django. Library ini digunakan untuk mempermudah proses autentikasi seperti login dan menggunakan cookies untuk memastikan aplikasi beroperasi dengan session based authentication.
2. Function request.get() merupakan library HTTP yang digunakan untuk mengirimkan HTTP GET pada URL tertentu, seperti http://127.0.0.1:8000/json/. Hal ini bertujuan untuk engambil data dari backend Django serta secara otomatis mendekode respons dalam format JSON.
3. Librarty HTTP juga dapat menangani authentication melalui CookiesRequest yang akan mengirimkan data serta fungsi login yang akan mengirimkan username dan password sebagai permintaan post ke dalam server.

## Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
CookieRequest merupakan salah satu function dalam library pbp_django_auth yang digunakan untuk menangani session based authentication di aplikasi Flutter. Fungsi utama dari CookieRequest tersebut adalah sebagai mengelola cookie yang dikirim dan diterima selama komunikasi antara aplikasi Flutter dan backend Django.  Cookie tersebut menyimpan informasi sesi pengguna, seperti token autentikasi atau data login, yang memungkinkan aplikasi untuk mempertahankan status login pengguna antara berbagai permintaan ke server. Dengan membagikan instance CookieRequest, aplikasi Flutter dapat memastikan alur autentikasi berjalan secara lancar, mengurangi masalah terkait status login, dan mempermudah interaksi dengan backend.

## Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Mekanisme pengiriman data dari input hingga menampilkannya pada aplikasi Flutter dapat dilakukan melalui backend.
1. User memasukkan data melalui UI aplikasi Flutter, seperti form login atau lainnya, yang kemudian disimpan dalam variabel atau objek di aplikasi Flutter.
2. Data tersebut kemudian akan diambil dengan menggunakan HTTP request method GET, dan kemudian dikirim ke backend menggunakan HTTP request method POST.
3. Dalam server Django, data user tersebut diterima melalui request diproses oleh views atau API endpoints yang sesuai. Setelah pemrosesan, backend mengirimkan respons ke aplikasi Flutter, baik respons terssebut berstatus sukses maupun berstatus error.
4. Setelah itu, aplikasi Flutter akan menerima respons dari server dalam format JSON, sehingga data dapat diolah dalam model Dart yang mudah dipahami.
5. Setelah itu,  aplikasi Flutter menggunakan state management untuk menyimpan data dan memperbarui tampilan, dengan meneruskan data ke widget yang sesuai, untuk menampilkan informasi user.

## Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Mekanisme athentication mulai dari login, register, hingga logout melibatkan beberapa langkah, baik dari aplikasi Flutter maupun dari backend Django.
1. User mengisi form register pada aplikasi Flutter, yang kemudian data form tersebut akan dikirimkan ke backend Django, yang akan diproses dengan membuat account baru.
2. Setelah account tersebut dibuat, user dapat memasukkan kredensial pada aplikasi Flutter, dimana data tersebut kembali dikirimkan ke backend dan backend akan mengirimkan session untuk authentication.
3. Flutter akan menerima dan menyimpan respons yang berupa token tersebut, dan kemudian akan memperbarui UI untuk menunjukkan user yang telah login tersebut.
4. Ketika user melakukan logout dari aplikasi, token yang telah disimpan aplikasi Flutter tersebut akan dihapus, yang kemudian backend Django juga akan menghapus session pada server.

##  Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
Checklist tersebut diimplementasikan dengan cara-cara berikut.
1. **Mengimplementasikan fitur registrasi akun pada proyek tugas Flutter.** <br />
Pertama, saya membuat Django application baruserta menambahkan django-cors-headers pada file requirements.txt. Kemudian, saya membuat method registrasi di views.py pada application authentication, serta menambahkan routing URL untuk fungsi tersebut di file urls.py dalam folder authentication. Setelah itu, saya membuat file register.dart dan meastikan bahwa object Provider telah menggunakan instance CookieRequest.
2. **Membuat halaman login pada proyek tugas Flutter.** <br />
Pertama, saya membuat method login pada views.py dalam Project Django serta melakukan routing URL tersebut. Setelah itu, saya membuat file login.dart, dan kemudian mengubah main.dart agar apabila aplikasi Flutter dijalankan, maka aplikasi tersebut akan diarahkan ke halaman login.
3. **Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter dan Melakukan filter pada halaman daftar item dengan hanya menampilkan item yang terasosiasi dengan pengguna yang login.** <br />
Pertama, saya melakukan install pbp_django_auth. Setelah itu, saya saya memastikan bahwa semua komponen dalam aplikasi Flutter telah menerapkan instance CookieRequest.
4. **Membuat model kustom sesuai dengan proyek aplikasi Django.** <br />
Pertama, saya membuka Proyek Django dan menjalankan proyek tersebut menggunakan JSON. Setelah itu, saya membuat model yang sesuai dnegan JSON tersebut. Kemudian, model tersebut saya pindahkan file list_productentry.dart untuk menampilkan produk yang telah ditambahkan.
5. **Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.** <br />
Pertama, pada list_productentry.dart, saya mengubah layoutnya berdasarkan yang saya inginkan. Setelah itu saya membuat file product_detail.dart yang akan menampilkan detail dari product pada satu halaman penuh.