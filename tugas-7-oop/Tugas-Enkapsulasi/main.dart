import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran lngkrn;
  double luasLingkaran;

  lngkrn = new Lingkaran();
  lngkrn.setJariJari(7);
  luasLingkaran = lngkrn.hitungLuas();
  print(luasLingkaran);
}
