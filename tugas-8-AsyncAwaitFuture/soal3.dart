void main(List<String> args) async {
  print("ready. Sing");
  print(await line());
  print(await line2());
  print(await line3());
  print(await line4());
}

Future<String> line() async {
  return await Future.delayed(
      Duration(seconds: 5), () => ("pernahkah kau merasa"));
}

Future<String> line2() async {
  return await Future.delayed(
      Duration(seconds: 3), () => ("pernahkah kau merasa ...."));
}

Future<String> line3() async {
  return await Future.delayed(
      Duration(seconds: 2), () => ("pernahkah kau merasa"));
}

Future<String> line4() async {
  return await Future.delayed(Duration(seconds: 1),
      () => ("Hatimu hampa, Pernahkah kau merasa hatimu ksong...."));
}
