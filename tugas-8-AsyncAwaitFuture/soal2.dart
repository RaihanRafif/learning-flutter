void main(List<String> args) {
  print("life");
  Future.delayed(Duration(seconds: 1),()=>print("never flat"));
  print("is");
}
