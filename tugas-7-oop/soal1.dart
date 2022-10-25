void main() {
  Segitiga sgt;
  double luasSegitiga;
  sgt = new Segitiga();
  sgt.setengah = 0.5;
  sgt.tinggi = 20.0;
  sgt.alas = 30;
  luasSegitiga = sgt.hitungLuas();
  print(luasSegitiga);
}

class Segitiga {
  double? setengah;
  double? alas;
  double? tinggi;
  double hitungLuas() {
    return setengah! * alas! * tinggi!;
  }
}
