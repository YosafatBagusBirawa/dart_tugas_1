import 'package:dart_tugas_1/dart_tugas_1.dart' as dart_tugas_1;
import 'dart:io';


void main(List<String> arguments) {
  print('selamat datang di kalkulator memakai dart');
  print('siahkan pilih operasi yang diinginkan:');
  print('1 penjumlahan');
  print('2 pengurangan');
  print('3 perkalian');
  print('4 pembagian');
  stdout.write('masukkan pilihan operasi: ');
  String? pilih = stdin.readLineSync();

  if (pilih == null || !(pilih == '1' || pilih == '2' || pilih == '3' || pilih == '4')) {
    print('tolng pilih hanya nomer 1 sampai 4');
    return;
  }

  int? readInt(String prompt) {
    stdout.write(prompt);
    String? line = stdin.readLineSync();
    if (line == null) return null;
    return int.tryParse(line.trim());
  }

  int? a = readInt('masukkan angka pertama: ');
  if (a == null) {
    print('kesalahan, angka pertama bukan bilangan bulat');
    return;
  }

  int? b = readInt('masukkan angka kedua: ');
  if (b == null) {
    print('kesalahan, angka kedua bukan bilangan bulat');
    return;
  }

  try {
    switch (pilih) {
      case '1':
        print('menghitung penjumlahan');
        print('Hasil: ${dart_tugas_1.tambah(a, b)}');
        break;
      case '2':
        print('menghitung pengurangan');
        print('Hasil: ${dart_tugas_1.kurang(a, b)}');
        break;
      case '3':
        print('menghitung perkalian');
        print('Hasil: ${dart_tugas_1.kali(a, b)}');
        break;
      case '4':
        print('menghitung pembagian');
        print('Hasil: ${dart_tugas_1.bagi(a, b)}');
        break;
    }
  } on ArgumentError catch (e) {
    print('Error: ${e.message}');
  }
}
