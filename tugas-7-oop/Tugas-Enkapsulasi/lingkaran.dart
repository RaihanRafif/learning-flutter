class Lingkaran {
  double? _r;

  void setJariJari(double value) {
    if (value < 0) {
      value *= -1;
    }
    _r = value;
  }

  double? getJariJari() {
    return _r;
  }

  double hitungLuas() {
    return this._r! * this._r! * 3.14;
  }
}
