void main(List<String> args) {
  final duck = Duck();
  final cat = Cat();
  duck.swim();
  cat.walk();
}

mixin Swim on Animal {
  void swim() {
    print('swimming');
  }
}

mixin Walk on Animal {
  void walk() {
    print('walking');
  }
}

mixin Fly on Animal {
  void fly() {
    print('flying');
  }
}

abstract class Animal {
  void eat() {
    print('eating');
  }
}

abstract class Mammal extends Animal {}

class Dolphin extends Mammal with Swim {}

class Bat extends Mammal with Walk, Fly {}

class Cat extends Mammal with Walk {}

abstract class Bird extends Animal {}

class Dove extends Bird with Walk, Fly {}

class Duck extends Bird with Walk, Fly, Swim {}

abstract class Fish extends Animal {}

class Shark extends Fish with Swim {}

class FlyingFish extends Fish with Fly, Swim {}
