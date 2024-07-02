void main() {
  final List<String> names = ['Naruto', 'Sasuke', 'Sakura'];
  names.add('Rock Lee');
  final upperNames = names.map((e) => e.toUpperCase());
  names.addAll(['Kakashi', 'Tsunade', 'Sasuke']);
  names.removeAt(0);
  names.remove('Kakashi');
  names.removeWhere((element) => element == 'Sasuke');
  print(names);
  print(upperNames);

  List<Person> people = [
    Person(1, 'Naruto'),
    Person(2, 'Sasuke'),
    Person(3, 'Sakura')
  ];
  print(people);
}

class Person {
  final int id;
  final String name;
  Person(this.id, this.name);

  @override
  String toString() {
    return '${name}';
  }
}
