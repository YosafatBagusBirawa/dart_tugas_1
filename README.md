# Nama    : Yosafat Bagus Birawa
# NiM     : H1D023109

## penjelasan

aplikasi kalkulator sederhana berbasis command-line yang ditulis dengan Dart

- bin/dart_tugas_1.dart : program utama untuk dijalankan di cli. menampilkan menu operasi, menerima input dari user, dan memanggil fungsi pada library
- lib/dart_tugas_1.dart : implementasi fungsi aritmatika (tambah, kurang, kali, bagi)

## Fungsi di lib/dart_tugas_1.dart

- int tambah(int a, int b) : mengembalikan penjumlahan a + b
- int kurang(int a, int b) : mengembalikan pengurangan a - b
- int kali(int a, int b) : mengembalikan perkalian a * b
- int bagi(int a, int b) : melakukan pembagian int dengan pembulatan ke bawah (operator ~/). Jika b == 0, fungsi ini melempar ArgumentError('Pembagi tidak boleh nol')

## Alur Kode (di bin/dart_tugas_1.dart)

1. program menampilkan menu operasi:
	- 1: penjumlahan
	- 2: pengurangan
	- 3: perkalian
	- 4: pembagian
2. pengguna diminta memasukkan pilihan operasi (1/2/3/4). program validasi pilihan
3. Jika pilihan valid, program meminta dua input: angka pertama dan angka kedua
	- input dibaca sebagai string lalu diubah dengan int.tryParse()
	- jika parse gagal (bukan bilangan bulat), program menampilkan pesan error dan berhenti
4. program memanggil fungsi yang sesuai dari package:dart_tugas_1/dart_tugas_1.dart:
	- tambah(a, b) untuk pilihan 1
	- kurang(a, b) untuk pilihan 2
	- kali(a, b) untuk pilihan 3
	- bagi(a, b) untuk pilihan 4
5. Jika bagi dipanggil dengan b == 0, library melempar ArgumentError. bin/ menangkap ArgumentError dan menampilkan pesan error yang jelas (pembagi tidak boleh nol)
6. hasil operasi ditampilkan di layar