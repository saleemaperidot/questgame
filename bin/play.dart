

import '../lib/domain/character.dart';

void main() {
  print("--- Original demo: Aria vs Goblin ---");
  var hero = Character("Aria", 100, 15);
  var goblin = Character("Goblin", 30, 5);

  print(hero.describe());
  print(goblin.describe());

  hero.attack(goblin);
  print(goblin.describe());

  hero.heal(10);

  print("\n--- Checkpoint: 3-round exchange, Knight vs Orc ---");
  var knight = Character("Knight", 50, 8);
  var orc = Character("Orc", 45, 6);

  print(knight.describe());
  print(orc.describe());

  for (var roundNum = 1; roundNum < 10; roundNum++) {
    print("\nRound $roundNum:");
   knight.attack(orc);

if (!orc.isAlive) {
  print("${orc.name} is defeated!");
  break;
}

orc.attack(knight);

if (!knight.isAlive) {
  print("${knight.name} is defeated!");
  break;
}
    print(knight.describe());
    print(orc.describe());
  }
}
