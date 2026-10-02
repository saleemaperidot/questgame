import 'package:questforge/domain/character.dart';

class Warrior extends Character {
  Warrior(String name)
      : super(
          name: name,
          health: 120,
          attackPower: 18,
        );
@override
  void specialAbility(Character target) {
    int bonus = (attackPower * 1.5).toInt();

    target.takeDamage(bonus);

    print('$name uses Cleave! $bonus damage to ${target.name}');
  }
}