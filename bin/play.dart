import 'package:questforge/domain/mage.dart';
import 'package:questforge/domain/rogue.dart';
import 'package:questforge/domain/warrior.dart';

void main() {
  Warrior warrior = Warrior("Bram");
  Mage mage = Mage("Sylla");
  Rogue rogue = Rogue("Shadow");

  print(warrior.describe());
  print(mage.describe());
  print(rogue.describe());

  print("");

  warrior.attack(mage);

  mage.specialAbility(warrior);

  rogue.specialAbility(warrior);

  print("");

  print("Bram HP: ${warrior.health}");
  print("Sylla HP: ${mage.health}");
}
