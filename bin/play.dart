import 'package:questforge/domain/battle.dart';
import 'package:questforge/domain/character.dart';
import 'package:questforge/domain/cleric.dart';
import 'package:questforge/domain/items.dart';
import 'package:questforge/domain/mage.dart';
import 'package:questforge/domain/rogue.dart';
import 'package:questforge/domain/warrior.dart';

void main() {
  Warrior warrior = Warrior("Bram");
  Mage mage = Mage("Sylla");
  Rogue rogue = Rogue("Shadow");

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

  // List<Character> party = [
  //   Warrior("Bram"),
  //   Mage("Sylla"),
  //   Rogue("Kade"),
  //   Cleric("Lina"),
  // ];

  // Warrior dummy = Warrior("Training Dummy");

  // for (Character member in party) {
  //   runSpecialRound(member, dummy);

  //   print("Dummy HP: ${dummy.health}");
  //   print("");
  // }

   
  print("Initial HP: ${warrior.health}");
  print("Initial ATK: ${warrior.attackPower}");
  print("Initial DEF: ${warrior.defense}");

  print("\nAdding items...");

  warrior.inventory.add(
    HealthPotion(),
  );

  warrior.inventory.add(
    HealthPotion(healAmount: 30),
  );

  warrior.inventory.add(
    Weapon("Fire Sword", 10),
  );

  print(warrior.inventory.listItems());

  print("\nUsing first potion:");

  print(
    warrior.inventory.use(0, warrior),
  );

  print("HP: ${warrior.health}");

  print("\nUsing second potion:");

  print(
    warrior.inventory.use(0, warrior),
  );

  print("HP: ${warrior.health}");

  print("\nUsing weapon:");

  print(
    warrior.inventory.use(0, warrior),
  );

  print("ATK: ${warrior.attackPower}");

  print("\nTesting armor:");

  warrior.inventory.add(
    Armor("Iron Armor", 5),
  );

  print(
    warrior.inventory.use(0, warrior),
  );

  print("DEF: ${warrior.defense}");

  print("\nTaking 20 damage...");

  warrior.takeDamage(20);

  print("HP: ${warrior.health}");
  
}
