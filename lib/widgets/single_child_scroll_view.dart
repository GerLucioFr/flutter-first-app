import 'package:flutter/material.dart';

class MySingleChildScrollView extends StatelessWidget {
  const MySingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    final colorsList = List.generate(
        20,
        (index) => Container(
              width: 100,
              height: 100,
              alignment: Alignment.center,
              color: Colors.primaries[index % 18],
              child: Text('Color ${index}'),
            ));

    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        Container(
          height: 100,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: colorsList,
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            reverse: false,
            padding: const EdgeInsets.all(8),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextField(),
                ...colorsList,
              ],
            ),
          ),
        )
      ],
    )));
  }
}
