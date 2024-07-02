abstract class Pet {
  final int id;
  final String name;

  Pet({required this.id, required this.name}) {
    assert(id > 0 && name.isNotEmpty);
  }

  bool get isValidPet {
    return id > 0 && name.isNotEmpty;
  }
}

class Dog extends Pet {
  Dog({required super.id, required super.name});
}

class Cat extends Pet {
  Cat({required super.id, required super.name});
}
