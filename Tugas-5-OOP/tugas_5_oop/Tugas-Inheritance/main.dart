import 'titan.dart';    
import 'armor_titan.dart'; 
import 'attack_titan.dart'; 
import 'beast_titan.dart'; 
import 'human.dart'; 
void main() {
  ArmorTitan armorTitan = ArmorTitan();
  AttackTitan attackTitan = AttackTitan();
  BeastTitan beastTitan = BeastTitan();
  Human human = Human();

  armorTitan.setPowerPoint(3.0);
  attackTitan.setPowerPoint(7.0);
  beastTitan.setPowerPoint(4.0);
  human.setPowerPoint(6.0);

  print("=== Hasil ===");
  print("Armor Titan:");
  print("  Power Point: ${armorTitan.getPowerPoint() < 5 ? 5 : armorTitan.getPowerPoint()}");
  print("  Terjang: ${armorTitan.terjang()}");

  print("\nAttack Titan:");
  print("  Power Point: ${attackTitan.getPowerPoint() < 5 ? 5 : attackTitan.getPowerPoint()}");
  print("  Punch: ${attackTitan.punch()}");

  print("\nBeast Titan:");
  print("  Power Point: ${beastTitan.getPowerPoint() < 5 ? 5 : beastTitan.getPowerPoint()}");
  print("  Lempar: ${beastTitan.lempar()}");

  print("\nHuman:");
  print("  Power Point: ${human.getPowerPoint() < 5 ? 5 : human.getPowerPoint()}");
  print("  Kill All Titan: ${human.killAllTitan()}");
}