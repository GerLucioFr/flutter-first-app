void main() {
  final name = 'Darwin';

  if (name is String) {
    print('is string');
  } else {
    print('is not string');
  }

  final weekDay = DateTime.now().weekday;
  switch (weekDay) {
    case 1:
      print('Monday');
    case 2:
      print('Tuesday');
    case 3:
      print('Wednesday');
    case 4:
      print('Thursday');
    case 5:
      print('Friday');
    case 6:
      print('Saturday');
    case 7:
      print('Sunday');
    // or case _:
    default:
      print('Invalid day');
  }

  switch (weekDay) {
    case 1:
    case 3:
    case 4:
    case 5:
      print('open');
    default:
      print('closed');
  }
  // or
  switch (weekDay) {
    case 1 || 3 || 4 || 5:
      print('open');
    default:
      print('closed');
  }

  final names = ['Real Madrid', 'Barcelona', 'Manchester United', 'Liverpool'];
  for (int i = 0; i < names.length; i++) {
    print(names[i]);
  }

  for (String name in names) {
    print(name);
  }

  int iterator = 0;
  while (iterator < names.length) {
    print(names[iterator++]);
  }

  int i = 0;
  do {
    print(names[i++]);
  } while (i < names.length);

  for (int i = 0; i < names.length; i++) {
    print(names[i]);
    if (names[i] == 'Manchester United') break;
  }
}
