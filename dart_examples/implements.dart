void main(List<String> args) {
  final client = Client(dni: 'client dni');
  printPerson(client);
  final employee = Employee();
  printPerson(employee);
}

void printPerson(Person person) {
  person.printInfo();
  print(person.dni);
}

class Person {
  final String dni;

  Person({required this.dni});

  void printInfo() {
    print('Im person');
  }
}

class Client extends Person {
  Client({required super.dni});
}

class Employee implements Person {
  @override
  void printInfo() {
    print('Im employee');
  }

  @override
  String get dni => 'Employee dni';
}
