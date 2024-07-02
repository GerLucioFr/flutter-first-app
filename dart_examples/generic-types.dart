import 'dart:math';

void main(List<String> args) {
  final integers = Example<int>(items: [1, 2]);
  print(integers.items);

  final carTypeMenu =
      Menu<CarType>(title: 'Select a car type', options: CarType.values);
  print(carTypeMenu.showOptions());

  final energyTypeMenu = Menu<EnergyType>(
      title: 'Select a energy type', options: EnergyType.values);
  print(energyTypeMenu.showOptions());

  final statusTypeMenu = Menu<StatusType>(
      title: 'Select a status type', options: StatusType.values);
  print(statusTypeMenu.showOptions());
}

class Menu<T> {
  final String title;
  final List<T> options;

  Menu({required this.title, required this.options});

  T showOptions() {
    print(this.title);

    for (var option in options) {
      print('Option : ${option}');
    }
    final index = Random().nextInt(options.length - 1);
    return options[index];
  }
}

class Example<T> {
  final List<T> items;

  Example({required this.items});
}

enum CarType { suv, va, hb, sedan }

enum EnergyType { oil, electric, hybrid }

enum StatusType { zero, used }
