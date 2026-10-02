import 'package:questforge/domain/character.dart';
class Mage extends Character {
  int mana = 50;

  Mage(String name)
      : super(
          name: name,
          health: 80,
          attackPower: 10,
        );
@override
  void specialAbility(Character target) {
    const int cost = 20;

    if (mana < cost) {
      print('$name does not have enough mana!');
      return;
    }

    mana -= cost;

    int damage = attackPower * 3;

    target.takeDamage(damage);

    print('$name casts Fireball! $damage damage to ${target.name}');
  }
}