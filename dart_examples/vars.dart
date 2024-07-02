void main(List<String> args) {
  print(user);
  print(User.greetsCount);
  User.greet();
  print(User.greetsCount);
}

class User {
  final String dni;
  final String name;
  static int greetsCount = 0;

  User({required this.dni, required this.name});

  static void greet() {
    print('Hi bro');
    User.greetsCount++;
  }
}

final user = User(dni: 'dni', name: 'name');
