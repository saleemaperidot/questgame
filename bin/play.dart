import 'package:questforge/domain/battle.dart';
import 'package:questforge/domain/character.dart';
import 'package:questforge/domain/cleric.dart';
import 'package:questforge/domain/mage.dart';
import 'package:questforge/domain/rogue.dart';
import 'package:questforge/domain/warrior.dart';

void main() {
  // Warrior warrior = Warrior("Bram");
  // Mage mage = Mage("Sylla");
  // Rogue rogue = Rogue("Shadow");

  // print(warrior.describe());
  // print(mage.describe());
  // print(rogue.describe());

  // print("");

  // warrior.attack(mage);

  // mage.specialAbility(warrior);

  // rogue.specialAbility(warrior);

  // print("");

  // print("Bram HP: ${warrior.health}");
  // print("Sylla HP: ${mage.health}");

   List<Character> party = [
    Warrior("Bram"),
    Mage("Sylla"),
    Rogue("Kade"),
    Cleric("Lina"),
  ];

  Warrior dummy = Warrior("Training Dummy");

  for (Character member in party) {
    runSpecialRound(member, dummy);

    print("Dummy HP: ${dummy.health}");
    print("");
  }
}
