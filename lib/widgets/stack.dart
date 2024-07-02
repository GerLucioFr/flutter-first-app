import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Container(
        color: Colors.amber,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Container(
                height: 150,
                color: Colors.limeAccent,
              ),
            ),
            Positioned(
              left: -8,
              right: 50,
              bottom: 50,
              child: Container(
                height: 150,
                color: Colors.redAccent,
                child: const Text('Hi bro'),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.indigoAccent,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.lightGreenAccent,
            ),
            const Text('Hola bro'),
          ],
        ),
      ),
    );
  }
}
