void main() {
  double nilai = 11.11;
  double angka = 1;

  //untuk me-return kode hash dari nilai numeric
  print('--Properti pada number - hashCode--');
  print(nilai.hashCode.toString() + '\n');

  //true jika jumlahnya terbatas, dan false jika nilai tidak terbatas
  print('--Properti pada number - isFinite--');
  print(angka.isFinite.toString() + '\n');

  //kebalikan dari isFinite
  print('--Properti pada number - isInfinite--');
  print(nilai.isInfinite.toString() + '\n');

  //true jika angka bernilai negatif, dan false jika bernilai positif
  print('--Properti pada number - isNegative--');
  print(nilai.isNegative.toString() + '\n');

  //Return -1, atau 0 atau 1 tergantung pada nilai tersebut positif, negative atau nol
  print('--Properti pada number - sign--');
  print(nilai.sign.toString() + '\n');

  //true jika angka bernilai bilangan genap
  print('--Properti pada number - isNan--');
  print(nilai.truncate());
}
