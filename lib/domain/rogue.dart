import 'package:questforge/domain/character.dart';
class Rogue extends Character {
  Rogue(String name)
      : super(
          name: name,
          health: 90,
          attackPower: 14,
        );

  void specialAbility(Character target) {
    int crit = attackPower * 2;

    target.takeDamage(crit);

    print(
      '$name lands a Backstab! '
      '$crit critical damage to ${target.name}',
    );
  }
}