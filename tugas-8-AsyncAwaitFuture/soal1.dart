// menggunakan async await dan future,
//untuk output yang diharpakan yaitu saat di compile pertama munculnya yaitu luffy, zoro, killer dan nama character one piece
//selanjutnya 3 detik kemudian muncul get data [done] , name 3: hilmy

void main(List<String> args) async {
  var h = Human();
  print("luffy");
  print("zoro");
  print("killer");
  print(h.name);
  await h.getData();}

class Human {
  String name = "nama character one piece";

  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3));
    name = "hilmy";
    print("get data [done], name 3 :${name}");
  }
}
