class QuestForgeError implements Exception {
  final String message;

  QuestForgeError(this.message);

  @override
  String toString() => message;
}

class DeadCharacterError extends QuestForgeError {
  DeadCharacterError(String message) : super(message);
}

class InsufficientManaError extends QuestForgeError {
  InsufficientManaError(String message) : super(message);
}

class InvalidActionError extends QuestForgeError {
  InvalidActionError(String message) : super(message);
}

class InventoryEmptyError extends QuestForgeError {
  InventoryEmptyError(String message) : super(message);
}