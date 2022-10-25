import 'dart:io';
import 'dart:core';

void main(List<String> args) {
// --------------------------------------------- NOMOR 1 ---------------------------------------------

  // print("Apakah anda ingin menginstall aplikasi dart? ya[y]/tidak[t]");
  // String konfirmasi = stdin.readLineSync()!;
  // if (konfirmasi == "y" || konfirmasi == "Y") {
  //   print("anda akan menginstall aplikasi dart");
  // } else if (konfirmasi == "t" || konfirmasi == "T") {
  //   print("aborted");
  // }

// --------------------------------------------- NOMOR 2 ---------------------------------------------
  // print("Masukkan username : ");
  // String username = stdin.readLineSync()!;
  // print("Masukkan role : ");
  // String role = stdin.readLineSync()!;

  // if (username.length != 0) {
  //   if (role.length != 0) {
  //     if (role.toLowerCase() == "penyihir") {
  //       print("Selamat datang di Dunia Werewolf, ${username}");
  //       print(
  //           "Halo Penyihir ${username} kamu dapat melihat siapa yang menjadi werewolf!");
  //     } else if (role.toLowerCase() == "guard") {
  //       print("Selamat datang di Dunia Werewolf, ${username}");
  //       print(
  //           "Halo Guard ${username}, kamu akan membantu melindungi temanmu dari serangan werewolf.");
  //     } else if (role.toLowerCase() == "werewolf") {
  //       print("Selamat datang di Dunia Werewolf, ${username}");
  //       print(
  //           "Halo Werewolf ${username}, Kamu akan memakan mangsa setiap malam!");
  //     }
  //   } else {
  //     print("Pilih Peranmu untuk memulai game!");
  //   }
  // } else {
  //   print("Nama harus diisi!");
  // }

  // --------------------------------------------- NOMOR 3 ---------------------------------------------
  // print("Masukkan hari : ");
  // String hari = stdin.readLineSync()!;
  // switch(hari.toLowerCase()){
  //   case "senin":{print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");}
  //   break;
  //   case "selasa":{print("Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");}
  //   break;
  //   case "rabu":{print("Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");}
  //   break;
  //   case "kamis":{print("Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");}
  //   break;
  //   case "jumat":{print("Hidup tak selamanya tentang pacar.");}
  //   break;
  //   case "sabtu":{print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");}
  //   break;
  //   case "minggu":{print("Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");}
  //   break;
  // }

  // --------------------------------------------- NOMOR 4 ---------------------------------------------
  
  var tanggal = 21;
  var bulan = 1;
  var tahun = 1945;

  if (tanggal >= 1 &&
      tanggal <= 31 &&
      bulan >= 1 &&
      bulan <= 12 &&
      tahun >= 1900 &&
      tahun <= 2200) {
    print("raihan");
    switch (bulan) {
      case 1:
        {
          print("${tanggal} Januari ${tahun}");
        }
        break;

      case 2:
        {
          print("${tanggal} Februari ${tahun}");
        }
        break;

      case 3:
        {
          print("${tanggal} Maret ${tahun}");
        }
        break;

      case 4:
        {
          print("${tanggal} April ${tahun}");
        }
        break;
      case 5:
        {
          print("${tanggal} Mei ${tahun}");
        }
        break;
      case 6:
        {
          print("${tanggal} Juni ${tahun}");
        }
        break;
      case 7:
        {
          print("${tanggal} Juli ${tahun}");
        }
        break;
      case 8:
        {
          print("${tanggal} Agustus ${tahun}");
        }
        break;
      case 9:
        {
          print("${tanggal} September ${tahun}");
        }
        break;
      case 10:
        {
          print("${tanggal} Oktober ${tahun}");
        }
        break;
      case 11:
        {
          print("${tanggal} November ${tahun}");
        }
        break;
      case 12:
        {
          print("${tanggal} Desember ${tahun}");
        }
        break;
    }
  }
}
