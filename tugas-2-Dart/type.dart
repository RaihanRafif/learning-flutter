import 'dart:io';

void main(List<String> args) {
// ------------------------------------------------ NOMOR 1 ------------------------------------------------
  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';

  print(word +
      " " +
      second +
      " " +
      third +
      " " +
      fourth +
      " " +
      fifth +
      " " +
      sixth +
      " " +
      seventh);

// ------------------------------------------------ NOMOR 2 ------------------------------------------------

  var sentence = "I am going to be Flutter Developer";

  var exampleFirstWord = sentence[0];
  var exampleSecondWord = sentence[2] + sentence[3];
  var thirdWord = sentence[5] +
      sentence[6] +
      sentence[7] +
      sentence[8] +
      sentence[9] +
      sentence[10];
  var fourthWord = sentence[11] + sentence[12]; // lakukan sendiri
  var fifthWord = sentence[14] + sentence[15]; // lakukan sendiri
  var sixthWord = sentence[17] +
      sentence[18] +
      sentence[19] +
      sentence[20] +
      sentence[21] +
      sentence[22] +
      sentence[23]; // lakukan sendiri
  var seventhWord = sentence[25] +
      sentence[26] +
      sentence[27] +
      sentence[28] +
      sentence[29] +
      sentence[30] +
      sentence[31] +
      sentence[32] +
      sentence[33]; // lakukan sendiri

// ------------------------------------------------ NOMOR 3 ------------------------------------------------

  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' + exampleSecondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);

  print("Masukkan nama depan : ");
  String namaAwal = stdin.readLineSync()!;
  print("Masukkan nama belakang : ");
  String namaAkhir = stdin.readLineSync()!;
  print("nama lengkap anda adalah : " + namaAwal + " " + namaAkhir);

// ------------------------------------------------ NOMOR 4 ------------------------------------------------

  int a = 5;
  int b = 10;

  print('perkalian : ${a * b}');
  print('pembagian : ${a / b}');
  print('penambahan : ${a + b}');
  print('pengurangan : ${a - b}');
}
