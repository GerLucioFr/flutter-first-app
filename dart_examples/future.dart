void main(List<String> args) async {
  // Future is like promise in Js
  final db = Database();
  final opened = await db.open();
  print(opened);
  final read = await db.read();
  print(read);
  final wrote = await db.write();
  print(wrote);
}

class Database {
  Future<String> open() async {
    await Future.delayed(Duration(seconds: 2));
    return 'opened';
  }

  Future<String> read() {
    return Future.delayed(
      Duration(seconds: 2),
      () => 'read',
    );
  }

  Future<String> write() {
    return Future.delayed(
      Duration(seconds: 2),
      () => 'wrote',
    );
  }
}
