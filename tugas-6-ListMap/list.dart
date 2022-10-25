void main(List<String> args) {
  // -------------------- NOMOR 1 --------------------
  print(range(1, 10));
  print(range(10, 1));
  // -------------------- NOMOR 2 --------------------
  print(rangeWithStep(1, 10, 2));
  print(rangeWithStep(11, 23, 3));
  print(rangeWithStep(5, 2, 1));
  // -------------------- NOMOR 3 --------------------
  dataHandling(2);
}

range(startNum, finishNum) {
  var numberArray = [];
  if (startNum < finishNum) {
    for (var i = startNum; i <= finishNum; i++) {
      numberArray.add(i);
    }
    return numberArray;
  } else {
    for (var i = startNum; i >= finishNum; i--) {
      numberArray.add(i);
    }
    return numberArray;
  }
}

rangeWithStep(startNum, finishNum, step) {
  var numberArray = [];
  if (startNum < finishNum) {
    for (var i = startNum; i <= finishNum; i = i + step) {
      numberArray.add(i);
    }
    return numberArray;
  } else {
    var numberArray = [];
    for (var i = startNum; i >= finishNum; i = i - step) {
      numberArray.add(i);
    }
    return numberArray;
    // return numberArray;
  }
}

dataHandling(n) {
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Wiyona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
  ];
  for (var i = 0; i < n; i++) {
    print("Nomor ID : " + input[i][0]);
    print("Nama Lengkap : " + input[i][1]);
    print("TTL : " + input[i][2] + " " + input[i][3]);
    print("Hobi : " + input[i][4]);
    print("\n");
  }
}
