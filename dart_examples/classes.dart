void main() {
  final dog = Dog(name: 'Thanos', age: 6);
  final dog2 = Dog(name: 'Thanos', age: 6);
  print(dog);
  dog.printName();
  dog.bark();

  final pet = getPet('Juan', 3) as Dog;
  pet.bark();
  print(pet.runtimeType);
  print(pet is Dog);
  print(pet is! Dog);

  const user = User('Juan', UserType.admin);
  print(user);
  print(dog == dog2);
}

class User {
  final String name;
  final UserType type;

  const User(this.name, this.type);
}

enum UserType { admin, client }

Pet getPet(String name, int age) {
  return Dog(name: name, age: age);
}

abstract class Pet {
  String name;
  int age;

  Pet({required this.name, required this.age}) {}

  void printName();

  @override
  bool operator ==(Object other) {
    if (other is! Pet) {
      return false;
    }
    return this.hashCode == other.hashCode;
  }

  @override
  int get hashCode {
    return name.hashCode + name.hashCode;
  }
}

class Dog extends Pet {
  Dog({required super.name, required super.age});

  void bark() {
    print('Im barking');
  }

  void sniff() {
    print('Im sniffing');
  }

  @override
  void printName() {
    print('My name is ${name}, and Im a dog');
  }
}

class Cat extends Pet {
  Cat({required super.name, required super.age});

  void mew() {
    print('Im mew');
  }

  @override
  void printName() {
    print('My name is ${name}, and Im a cat');
  }
}
