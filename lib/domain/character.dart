// import 'dart:math';

// class Character {
//   String name;
//   int _health;
//   int attackPower;
// final int _maxHealth;

//   Character(this.name, int health, this.attackPower)
//   :_health=health,
// _maxHealth = health;

// int get health => _health;

//   bool get isAlive => _health > 0;

//   void takeDamage(int amount) {
//     if (amount < 0) {
//       throw ArgumentError("Damage cannot be negative");
//     }

//     _health = max(0, _health - amount);
//   }
//   String describe() {
//     return "$name has $_health HP and $attackPower ATK";
//   }

//   void attack(Character target) {
//     target._health -= attackPower;
//     print("$name attacks ${target.name} for $attackPower damage!");
//   }

//   void heal(int amount) {
//     _health += amount;
//     print("$name heals for $amount HP! Now at $_health HP.");
//   }
// }

import 'dart:math';

import 'package:questforge/domain/exception.dart';
import 'package:questforge/domain/inventory.dart';

abstract class Character {
  String name;

  int _health;
  final int _maxHealth;

  int attackPower;

    final Inventory inventory = Inventory();

  Character({
    required this.name,
    required int health,
    required this.attackPower,
  })  : _health = health,
        _maxHealth = health;

  // Read-only access to health
  int get health => _health;

  // Check whether character is alive
  bool get isAlive => _health > 0;


  int _defense = 0;

int get defense => _defense;

void increaseDefense(int amount) {
  if (amount < 0) {
    throw ArgumentError("Defense increase cannot be negative");
  }

  _defense += amount;
}

  // Reduce health safely


  void takeDamage(int amount) {
  if (amount < 0) {
    throw ArgumentError("Damage cannot be negative");
  }

  int actualDamage = max(0, amount - _defense);

  _health = max(0, _health - actualDamage);
}

  // Increase health safely
  void heal(int amount) {
    if (amount < 0) {
      throw ArgumentError("Healing cannot be negative");
    }

    _health = min(_maxHealth, _health + amount);
  }

  // Attack another character
  void attack(Character target) {
    if (!isAlive) {
         throw DeadCharacterError(
      "$name is dead and cannot act",
    );

    }
    if (!target.isAlive) {
      return;
    }
    target.takeDamage(attackPower);

    print(
      "$name attacks ${target.name} for $attackPower damage!",
    );
  }

  String describe() {
    return "$name has $health HP and $attackPower ATK";
  }
    void specialAbility(Character target);
    void increaseAttack(int amount) {
  if (amount < 0) {
    throw ArgumentError("Attack increase cannot be negative");
  }

  attackPower += amount;
}
   //void specialAbility(Character target);
}
