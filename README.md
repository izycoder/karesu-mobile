![header](https://drive.google.com/uc?export=view&id=1hF-WTVj7ckmoIEr7YM-ATnasUb2OdN3t) 

<details tugas7>
  <summary><b style="font-size:25px;">📕 TUGAS 7 - Elemen Dasar Flutter</b></summary>

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

#### Stateless Widget:<br>
Ini adalah widget yang tidak memiliki status internal yang dapat berubah. Stateless widget hanya dapat menerima input melalui konstruktor, dan tampilannya tidak akan berubah berdasarkan interaksi pengguna atau variabel internal. Contoh dari stateless widget adalah widget Text dan Icon. Karena tidak memiliki state, tampilannya hanya diperbarui ketika ada perubahan dari widget induk atau struktur aplikasi yang memanggilnya​

#### Stateful Widget:<br>
Berbeda dengan stateless, stateful widget memiliki status internal yang bisa berubah selama masa hidup widget tersebut. Widget ini terdiri dari dua bagian utama:<br>
<b>StatefulWidget,</b> yang menentukan bentuk dasar widget.<br>
<b>State,</b> yang mengelola data dinamis dan bertanggung jawab atas perubahan tampilan sesuai perubahan data atau interaksi pengguna.Misalnya, widget <code>Checkbox</code> atau <code>TextField</code> menggunakan stateful widget untuk menyimpan nilai yang dapat diperbarui saat pengguna berinteraksi dengan widget tersebut​

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

### cara implementasi checklist
- Membuat sebuah program Flutter baru dengan tema E-Commerce yang sesuai dengan tugas-tugas sebelumnya.<br><br>
![fluttercreate](https://drive.google.com/uc?export=view&id=13sLYTkRhbp5JkbXkT2WOLAUFkB99zfp5)<br>
<b>Penjelasan Gambar:</b><br>
untuk membuat program flutter baru dengan tema E-Commerce yang sebelumnya yaitu karesu maka kita dapat menjalankan perintah <code>flutter create karesu_mobile</code> di terminal<br><br>
- Membuat tiga tombol sederhana dengan ikon dan teks untuk: Melihat daftar produk (Lihat Daftar Produk), Menambah produk (Tambah Produk), dan Logout (Logout)<br><br>
![flutterbutton](https://drive.google.com/uc?export=view&id=1g3eTtqI8mtV8FWHdtUqfIq4zOWebUmZd)<br>
<b>Penjelasan Gambar:</b><br>
kita membuat tiga tombol di dalam file menu.dart dengan menambah kode di atas di dalam 
```python
    ...

    class MyHomePage extends StatelessWidget {
    ...

    final List<ItemHomepage> items = [
         ItemHomepage("Lihat Daftar Produk", Icons.directions_car),
         ItemHomepage("Tambah Produk", Icons.add),
         ItemHomepage("Logout", Icons.logout),
     ];
    
    ...
    
    }
```

-  Mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Daftar Produk, Tambah Produk, dan Logout).<br><br>
![buttoncolor](https://drive.google.com/uc?export=view&id=124wnZ-zrJ_MAjPCaJHOzzKOCX_gtNUSI)<br>
<b>Penjelasan Gambar:</b><br>
kita memberikan warna berbeda pada tiap button. kode di atas ditambahkan di dalam
``` python
...

class ItemCard extends StatelessWidget {
    ...

    Color _getButtonColor(String name) {
    switch (name) {
      case "Lihat Daftar Produk":
        return const Color(0xFFf05225);  // Orange
      case "Tambah Produk":
        return const Color(0xFFff8d21);  // Light Orange
      case "Logout":
        return const Color(0xFFffa652);  // Orange
      default:
        return Colors.blue;  // Default color
      }
    }
    ...

     @override
  Widget build(BuildContext context) {
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: _getButtonColor(item.name), // tambahkan ini juga
    ...
```

-  Memunculkan Snackbar dengan tulisan:
 "Kamu telah menekan tombol Lihat Daftar Produk" ketika tombol Lihat Daftar Produk ditekan.
 "Kamu telah menekan tombol Tambah Produk" ketika tombol Tambah Produk ditekan.
 "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.<br><br>
![flutterbutton](https://drive.google.com/uc?export=view&id=1zeOXfdEqC-hZz4bnRGhhLxZnCbVLTB9_)<br>
<b>Penjelasan Gambar:</b><br>
kita memberikan aksi ketika di tap tombol akan mengeluarkan sebuah "snackbar" yang berbentuk pop up message bertuliskan pesan yang sesuai. kode di atas di tambahkan di dalam
```python
...
class ItemCard extends StatelessWidget {
    ...

    @override
  Widget build(BuildContext context) {
    return Material(
    
     onTap: () {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
            );
        },
    ...

    )
  }
    ...
}
```
</details>

<details tugas8>
  <summary><b style="font-size:25px;">📕 TUGAS 8 - Flutter Navigation, Layouts, Forms, and Input Elements</b></summary>

### Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Penggunaan <code>const</code> pada kode Flutter bertujuan untuk meningkatkan efisiensi performa aplikasi. <code>const</code> digunakan untuk mendeklarasikan objek yang tidak berubah sepanjang waktu, sehingga hanya perlu dibuat sekali. Dengan <code>const</code>, Flutter dapat mengoptimalkan widget dan tidak perlu membangun ulang elemen UI setiap kali layar berubah, sehingga menghemat memori dan meningkatkan efisiensi waktu render. Penggunaan <code>const</code> ideal pada widget yang statis, seperti teks atau ikon yang tidak berubah. Sebaiknya tidak digunakan pada widget yang dinamis atau berisi data yang akan diubah secara berkala.

### Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

- **Column:** Layout widget yang menyusun anak-anaknya secara vertikal. Cocok digunakan saat menumpuk elemen UI dalam satu kolom, misalnya pada formulir pendaftaran.

- **Row:** Menyusun anak-anaknya secara horizontal. Biasanya digunakan untuk elemen-elemen yang berbaris, seperti tombol navigasi di bagian atas atau bawah halaman.

Contoh Implementasi:
``` Python
Column(
  children: [
    Text('Header'),
    Text('Subheader'),
    ElevatedButton(onPressed: () {}, child: Text('Click Me')),
  ],
);

Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Icon(Icons.home),
    Icon(Icons.settings),
    Icon(Icons.account_circle),
  ],
);

```
### Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

Elemen input yang digunakan dalam form:

1. **TextFormField**
   - Digunakan untuk input nama produk
   - Digunakan untuk input harga produk
   - Digunakan untuk input deskripsi produk
   - Memiliki validasi untuk memastikan field tidak kosong
   - Menggunakan controller untuk mengelola input

2. **ElevatedButton**
   - Tombol "Save" untuk menyimpan data form
   - Memicu validasi form dan proses penyimpanan data

Elemen input Flutter lain yang tidak digunakan:

1. **Checkbox** - Untuk input boolean/pilihan ya/tidak
2. **Radio** - Untuk memilih satu opsi dari beberapa pilihan
3. **Slider** - Untuk memilih nilai dalam rentang tertentu
4. **Switch** - Toggle on/off
5. **DropdownButton** - Untuk memilih dari daftar opsi yang tersedia
6. **DateTimePicker** - Untuk memilih tanggal dan waktu
7. **ImagePicker** - Untuk memilih gambar dari galeri/kamera
8. **ColorPicker** - Untuk memilih warna
9. **RangeSlider** - Untuk memilih rentang nilai
10. **TextField dengan InputDecoration.prefix/suffix** - TextField dengan ikon atau widget tambahan di awal/akhir

Elemen-elemen ini tidak digunakan karena form yang dibuat masih sederhana dan hanya membutuhkan input teks dasar. Namun, elemen-elemen tersebut dapat sangat berguna untuk form yang lebih kompleks dengan berbagai jenis input yang berbeda.

### Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Dalam Flutter, tema dapat diatur melalui ThemeData di MaterialApp untuk mencapai konsistensi desain di seluruh aplikasi. Berikut cara yang saya implementasikan untuk mengatur tema:

1. **Konfigurasi Tema Global**
```dart
MaterialApp(
  theme: ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFf05225)),
    useMaterial3: true,
  ),
  // ... kode lainnya
)
```

2. **Implementasi Tema**
Saya mengimplementasikan tema dengan menggunakan warna branding Karesu (oranye) sebagai warna utama:
- Primary color: `Color(0xFFf05225)` (Oranye)
- Secondary colors: 
  - `Color(0xFFff8d21)` (Light Orange)
  - `Color(0xFFffa652)` (Orange)

3. **Penggunaan Tema**
Tema diterapkan secara konsisten pada:
- AppBar
- Tombol-tombol navigasi
- Card widgets
- Form elements

4. **Keuntungan Penggunaan Tema**
- Konsistensi visual di seluruh aplikasi
- Kemudahan dalam maintenance
- Mendukung dark/light mode (jika diimplementasikan)
- Perubahan tema dapat dilakukan secara terpusat

Dengan menggunakan sistem tema, perubahan desain dapat dilakukan secara efisien dan konsisten di seluruh aplikasi tanpa perlu mengubah setiap widget secara individual.

### Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Dalam aplikasi ini, saya menerapkan beberapa teknik navigasi Flutter untuk mengelola perpindahan antar halaman:


**Navigator Push/Pop**
- Untuk navigasi ke halaman baru:
```dart
// Navigasi ke halaman form
Navigator.pushReplacement(
    context,
    MaterialPageRoute(
        builder: (context) => const ShopFormPage(),
    ),
);
```
- Untuk kembali ke halaman sebelumnya:
```dart
// Kembali ke halaman utama
Navigator.pop(context);
```

**Drawer Navigation**
Menggunakan widget Drawer untuk navigasi menu samping:
```dart
Drawer(
  child: ListView(
    children: [
      const DrawerHeader(...),
      ListTile(
        leading: const Icon(...),
        title: const Text('Halaman Utama'),
        onTap: () {
          Navigator.pushReplacement(...);
        },
      ),
      // Item drawer lainnya
    ],
  ),
);
```

</details>

