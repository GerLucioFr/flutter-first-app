void main(List<String> args) {
  final user = User(id: 11, name: 'ffff');
  print(user.id);
  print(user.name);
}

class User {
  final int id;
  final String name;

  User({required this.id, required this.name}) {
    assert(id > 0, 'Invalid id');
    assert(name.isNotEmpty, 'Invalid name');
  }
}
