void main(List<String> args) async {
  try {
  final db = Databse();
    await db.connect();
  } catch (e) {
    print(e);
  }
}

class Databse {
  Future<void> connect() async {
    await Future.delayed(Duration(seconds: 1));
    throw Exception('Error bro');
    print('Connected');
  }
}
