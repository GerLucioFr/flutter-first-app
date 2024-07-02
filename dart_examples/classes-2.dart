void main() {
  signIn(
      username: 'username',
      password: 'password',
      brand: 'Apple',
      model: 'iPhone 5',
      so: 'iOS');

  final student = createStudent('dni', 'name', 'lastName', UserType.admin);
  final student2 = createStudent('dni', 'name', 'lastName', UserType.admin,
      career: 'Enineering', semester: 4);
  print(student);
  print(student2);
}

Student createStudent(String dni, String name, String lastName, UserType type,
    {String career = 'Common', int? semester}) {
  return Student(
      dni: dni,
      name: name,
      lastName: lastName,
      type: type,
      career: career,
      semester: semester ?? 1);
}

void signIn(
    {required String username,
    required String password,
    required String brand,
    required String model,
    required String so}) {}

abstract class User {
  final String dni;
  final String name;
  final String lastName;
  final UserType type;

  User(
      {required this.dni,
      required this.name,
      required this.lastName,
      required this.type});
}

class Student extends User {
  final String career;
  final int semester;

  Student(
      {required super.dni,
      required super.name,
      required super.lastName,
      super.type = UserType.client,
      required this.career,
      required this.semester});
}

enum UserType { admin, client }
