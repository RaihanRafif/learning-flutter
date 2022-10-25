import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main(List<String> args) {
  ArmorTitan art = ArmorTitan();
  AttackTitan att = AttackTitan();
  BeastTitan bt = BeastTitan();
  Human hm = Human();

  art.powerPoint = 8;
  att.powerPoint = 9;
  bt.powerPoint = 10;
  hm.powerPoint = 11;

  print("Level power point Armor Titan : ${art.powerPoint}");
  print("Level power point Attack Titan : ${att.powerPoint}");
  print("Level power point Beast Titan : ${bt.powerPoint}");
  print("Level power point Human: ${hm.powerPoint}");

  print("jurus dari Armor Titan: " + art.terjang());
  print("jurus dari Attack Titan: " + att.punch());
  print("jurus dari Beast Titan: " + bt.lempar());
  print("jurus dari Human: " + hm.killAlltitan());
}
