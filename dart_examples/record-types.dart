void main(List<String> args) {
  final data = getData();
  print(data[0]);

  final data2 = getData2();
  print(data2['id']);

  final data3 = getData3();
  print(data3.id);

  final data4 = getData4();
  final (id: userId, name: username) = getData4();
  print(data4.id);
  print(userId);
  print(username);

  final (id, name) = getData5();
  print(id);

  final coord = Coord(lat: 2.3, lng: 1.6);
  final (double, double) position = (12.3, 4.9);
  final (lat, lng) = position;
  print(position.$1);
  print(lat);
  print(lng);
  switch (position) {
    // ignore: pattern_never_matches_value_type
    case (lat: 0, lng: 0):
      print('it works');
    default:
      print('it does not work');
  }
}

List<Object> getData() {
  return [0, 'Name'];
}

Map<String, Object> getData2() {
  return {'id': 0, 'name': 'Name'};
}

Result getData3() {
  return Result(id: 1, name: 'name');
}

({int id, String name}) getData4() {
  return (id: 0, name: 'Name');
}

(int, String) getData5() {
  return (0, 'Name');
}

class Result {
  final int id;
  final String name;

  Result({required this.id, required this.name});
}

class Coord {
  final double lat;
  final double lng;

  Coord({required this.lat, required this.lng});
}
