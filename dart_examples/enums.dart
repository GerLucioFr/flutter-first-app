void main() {
  final ColorsEnum color = ColorsEnum.red;

  switch (color) {
    case ColorsEnum.red:
      print('Is ${color.name}');
    case ColorsEnum.green:
      print('Is ${color.name}');
    case ColorsEnum.blue:
      print('Is ${color.name}');
  }

  print(MediaType.audio.id);

  final String day = switch (DateTime.now().weekday) {
    1 => 'MO',
    2 => 'TU',
    3 => 'WE',
    4 => 'TH',
    5 => 'FR',
    6 => 'SA',
    7 => 'SU',
    _ => 'N/A',
  };
  print(day);
}

enum ColorsEnum { red, green, blue }

enum MediaType {
  image(101),
  audio(110),
  video(200);

  const MediaType(this.id);

  final int id;
}
