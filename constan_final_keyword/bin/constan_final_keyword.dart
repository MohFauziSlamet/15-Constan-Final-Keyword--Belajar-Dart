import 'dart:io';

const pi = 3.14;
/* membuat variabel pada top level
 pi ini dapat dipakai dimana saja*/
void main(List<String> arguments) {
  print('Hello world:    ');

  //membuat reguler variabel
  var a = constClass(number: 5);
  var b = constClass(number: 5);
  stdout.write('Apakah a dan b sama : ');
  print(identical(a, b));
  //identical adalah methode untuk mengecek apakah variabel a dan b sama
  // var a = constClass(number: 5); dan var b = constClass(number: 5);
  // tidak sama (output false ) karena a dan b menunjuk pada objek yang
  // berbeda.

  //membuat constanta class
  var c = const constClass(number: 6);
  var d = const constClass(number: 6);
  var e = RegularClass(number: 6);

  // var d menunjuk pada objek yang sama yaitu number:6
  // ketika sebuah objek diberi nama const, maka objek hanya dibuat 1x pada
  // saat compile time. ketika dibuat lagi pointer/penujuk/identifier dengan
  // nama berbeda , namun objek yang dibuat sama . maka si pointer akan menunjuk
  // pada objek yang telah dibuat pertama tadi.

  stdout.write('Apakah c dan d sama : ');
  print(identical(c, d));

  // perintah dibawah akan menghasil output false
  // karena pointer c menunjuk pada objek yang berbeda dengan e
  // objek dengan penambahan const didepannya BERBEDA dengan objek reguler
  // (tanpa ada penambahan keyword const)
  stdout.write('Apakah c dan e sama : ');
  print(identical(c, e));

  stdout.write('Ini variabel top level : ');
  print(pi);

  stdout.write('Ini variabel static const : ');
  print(e.number);
  var f = RegularClass(number: 12);
  print(f.number);

  print(RegularClass.myConst);
}

class RegularClass {
  final int number;
  static const myConst = 12; //ini static const variabel

  RegularClass({this.number}) {
    const anotherConst = 14; // ini local const variabel
    print(anotherConst);
  }
}

class constClass {
  final int number;

  //agar bisa dibuat versi constanta nya , maka harus ditambahkan keyword const
  //didepan nama constructor nya.
  const constClass({this.number});
}

/* CATATAN: 
reference/pointer/identifier merupakan penujuk alamat sebuah memori, 
bukan sebagai penampung nilai. Nilai sudah ditampung dlm variabel (field atau
methode ).
FIXME : Arti final
KeyWord Final , untuk membuat sebuah pointer atau identifier yang menunjuk pada
suatu objek seterusnya . tidak dapat berubah setelah diinisialisasi . 
Final di inisialisasikan hanya 1x didalam sebuah program. 
Final dpt diinisialisasi secara langsung , maupun didalam constructor.
Final dapat dideklarasikan dimana saja. 

FIXME: Perbedaan const dan final
perbedaan const dan final
Final : pointer selalu menunjuk pada objek yang sama. sedangkan
Const : nilainya selalu disasosiasikan pada objek yang sama.

FIXME : Arti Constanta
const dibuat hanya satu kali , ketika compile time. bukan saat kode program
berjalan. const hanya bisa dibuat pada top level , atau static 
atau local variabel. 

FIXME : Keuntungan menggunakan constanta
1. kita tidak akan membuat objek yang sama berulang ulang , jadi lebih efisien 
memori dan lebih ringkas program kita
2. constanta dibuat saat compile time , oleh karena itu saat runtime berjalan,
tidak ada proses membuat objek. sehingga kecepatan aplikasi nya lebih cepat. 
karena tidak perlu membuat objek lagi , karena objek nya sudah dibuat . 
*/
