import 'character.dart';
import 'item.dart';

class HealthPotion implements Item {
  final int healAmount;

  HealthPotion({this.healAmount = 25});

  @override
  String apply(Character character) {
    character.heal(healAmount);

    return '${character.name} drinks a potion and heals $healAmount HP!';
  }
}

class Weapon implements Item {
  final String name;
  final int bonusAttack;

  Weapon(this.name, this.bonusAttack);

  @override
  String apply(Character character) {
    character.increaseAttack(bonusAttack);

    return '${character.name} equips $name (+$bonusAttack ATK)';
  }
}

class Armor implements Item {
  final String name;
  final int defenseBonus;

  Armor(this.name, this.defenseBonus);

  @override
  String apply(Character character) {
    character.increaseDefense(defenseBonus);

    return '${character.name} equips $name (+$defenseBonus DEF)';
  }
}