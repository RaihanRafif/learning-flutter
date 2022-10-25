void main(List<String> args) {
  // ------------------------------------------- NOMOR 1 -------------------------------------------
  print(teriak());

  // ------------------------------------------- NOMOR 2 -------------------------------------------
  var num1 = 4;
  var num2 = 12;
  var hasilKali = kalikan(num1, num2);
  print(hasilKali);
  // ------------------------------------------- NOMOR 3 -------------------------------------------
  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);
  // ------------------------------------------- NOMOR 4 -------------------------------------------
  print(factorial(-100));
}

teriak() {
  return "Hello Sanbers";
}

kalikan(a, b) {
  return a * b;
}

introduce(name, age, address, hobby) {
  return "Nama saya ${name}, umur saya ${age} tahun, alamat saya di ${address},dan saya punya hobby yaitu ${hobby}!";
}

factorial(theNumber) {
  var sum = 1;
  if (theNumber > 0) {
    for (var i = 1; i <= theNumber; i++) {
      sum = i * sum;
    }
    return sum;
  } else {
    return 1;
  }
}
