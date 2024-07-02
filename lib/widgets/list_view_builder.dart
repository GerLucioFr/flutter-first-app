import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final colorsList = List.generate(
      10000,
      (index) => Container(
        width: 100,
        height: 100,
        alignment: Alignment.center,
        color: Colors.primaries[index % 18],
        child: Text('Color $index'),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (_, index) {
          print('Hola bro ${index + 1}');
          return Container(
            width: 100,
            height: 100,
            alignment: Alignment.center,
            color: Colors.primaries[index % 18],
            child: Text('Color $index'),
          );
        },
        itemCount: 1000,
      ),
    );
  }
}
