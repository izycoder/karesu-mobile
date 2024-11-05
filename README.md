![header](https://drive.google.com/uc?export=view&id=1hF-WTVj7ckmoIEr7YM-ATnasUb2OdN3t) 

<details tugas2>
  <summary><b style="font-size:25px;">📕 TUGAS 7 - Elemen Dasar Flutter</b></summary>

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

#### Stateless Widget:<br>
Ini adalah widget yang tidak memiliki status internal yang dapat berubah. Stateless widget hanya dapat menerima input melalui konstruktor, dan tampilannya tidak akan berubah berdasarkan interaksi pengguna atau variabel internal. Contoh dari stateless widget adalah widget Text dan Icon. Karena tidak memiliki state, tampilannya hanya diperbarui ketika ada perubahan dari widget induk atau struktur aplikasi yang memanggilnya​
Berbeda dengan stateless, stateful widget memiliki status internal yang bisa berubah selama masa hidup widget tersebut. Widget ini terdiri dari dua bagian utama:

#### Stateful Widget:<br>
StatefulWidget, yang menentukan bentuk dasar widget.
State, yang mengelola data dinamis dan bertanggung jawab atas perubahan tampilan sesuai perubahan data atau interaksi pengguna. Misalnya, widget Checkbox atau TextField menggunakan stateful widget untuk menyimpan nilai yang dapat diperbarui saat pengguna berinteraksi dengan widget tersebut​

#### Perbedaan Utama:

- <b>Stateless</b> tidak menyimpan informasi tentang status internal dan tidak berubah kecuali struktur aplikasinya diperbarui.<br>
- <b>Stateful</b> memungkinkan pembaruan tampilan sesuai dengan perubahan status atau data internal, yang dikelola melalui metode seperti setState()

### Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
#### Scaffold:<br>
Scaffold adalah widget dasar yang menyediakan struktur halaman, seperti AppBar dan body. Di sini, Scaffold digunakan untuk menyediakan struktur halaman dengan AppBar di bagian atas dan konten utama di body.

#### AppBar:<br> 
AppBar adalah bagian dari Scaffold yang ditempatkan di bagian atas halaman dan berfungsi sebagai tempat menampilkan judul aplikasi. Pada proyek ini, AppBar menampilkan judul "Karesu" dengan warna latar belakang oranye.

#### SingleChildScrollView:<br>
Widget ini memungkinkan konten di dalamnya untuk di-scroll jika melebihi batas layar. Pada proyek ini, digunakan untuk memungkinkan pengguna menggulir konten jika tinggi layar tidak cukup untuk menampilkan seluruh tampilan.

#### Padding:<br>
Padding digunakan untuk memberikan ruang di sekitar widget lain. Di sini, Padding memberikan jarak pada konten dalam body Scaffold, serta di beberapa bagian lain untuk menambahkan ruang di sekitar teks atau elemen lainnya.

#### Column: <br>
Column adalah widget layout yang menyusun anak-anaknya secara vertikal. Pada proyek ini, Column digunakan untuk menempatkan elemen-elemen UI (seperti InfoCard dan ItemCard) dalam urutan vertikal.

#### Row: <br>
Row adalah widget layout yang menyusun anak-anaknya secara horizontal. Pada proyek ini, Row digunakan untuk menampilkan tiga InfoCard secara bersebelahan di bagian atas body.

#### InfoCard: <br>
InfoCard adalah custom widget yang dibuat khusus untuk menampilkan informasi seperti NPM, nama, dan kelas dalam bentuk kartu. Ini digunakan untuk menampilkan data pengguna dalam gaya yang terstruktur.

#### GridView: <br>
GridView adalah widget layout yang menampilkan anak-anaknya dalam bentuk grid. Dalam proyek ini, GridView.count digunakan untuk menampilkan ItemCard dalam tata letak tiga kolom, sehingga terlihat rapi dan mudah diakses.

#### Card: <br>
Card adalah widget yang digunakan untuk menampilkan elemen dalam bentuk kotak dengan efek bayangan. Pada InfoCard, Card digunakan untuk memberi tampilan yang lebih menonjol pada informasi pengguna.

#### Text: <br>
Widget ini digunakan untuk menampilkan teks. Digunakan di beberapa tempat seperti untuk menampilkan judul, nama pengguna, NPM, dan nama item di ItemCard.

#### Icon: <br>
Widget Icon digunakan untuk menampilkan ikon. Pada ItemCard, digunakan untuk menampilkan ikon yang terkait dengan setiap item (misalnya, ikon mobil untuk "Lihat Daftar Produk").

#### Material: <br>
Material adalah widget dasar yang memungkinkan pengaturan tema seperti warna dan bentuk sudut. Di ItemCard, Material digunakan untuk memberikan warna latar belakang yang sesuai untuk setiap item, serta memberikan sudut melengkung pada kartu.

#### InkWell: <br>
InkWell adalah widget yang memungkinkan deteksi interaksi tap pada suatu elemen. Di proyek ini, digunakan untuk memberikan efek ketika ItemCard ditekan, serta menampilkan SnackBar dengan pesan yang sesuai.

#### SnackBar: <br>
SnackBar adalah widget untuk menampilkan pesan notifikasi sementara di bagian bawah layar. Dalam proyek ini, digunakan untuk memberikan umpan balik kepada pengguna saat mereka menekan salah satu ItemCard.

### Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
<code>setState()</code> adalah metode pada stateful widget yang digunakan untuk memberitahu Flutter bahwa terdapat perubahan pada variabel atau data di dalam kelas State. Saat <code>setState()</code> dipanggil, Flutter akan merender ulang tampilan untuk mencerminkan perubahan terbaru. Variabel yang terpengaruh biasanya adalah properti yang dikelola oleh kelas State pada stateful widget tersebut.

### Jelaskan perbedaan antara const dengan final.
Dalam dart

<b>const:</b> Digunakan untuk mendeklarasikan nilai konstan pada waktu kompilasi. Artinya, nilai dari variabel ini harus ditetapkan secara langsung dan tidak dapat diubah, serta nilai tersebut ditentukan pada saat kompilasi.<br>

<b>final:</b> Juga digunakan untuk variabel yang tidak dapat diubah setelah diinisialisasi, namun nilai final ditentukan saat runtime, bukan saat kompilasi.

</details>
