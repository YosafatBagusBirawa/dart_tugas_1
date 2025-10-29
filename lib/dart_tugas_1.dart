int kali(int a, int b) {
  return a * b;
}

int bagi(int a, int b) {
  if (b == 0) {
    throw ArgumentError('Pembagi tidak boleh nol');
  }
  return a ~/ b;
}

int tambah(int a, int b) {
  return a + b;
}

int kurang(int a, int b) {
  return a - b;
}