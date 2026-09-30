import 'package:questforge/domain/character.dart';

class Cleric extends Character {
  Cleric(String name)
      : super(
          name: name,
          health: 100,
          attackPower: 8,
        );

  void specialAbility(Character ally) {
    const int healAmount = 25;

    ally.heal(healAmount);

    print(
      "$name heals ${ally.name} for $healAmount HP!",
    );
  }
}
