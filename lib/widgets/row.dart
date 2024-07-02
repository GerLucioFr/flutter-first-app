import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.pinkAccent,
      ),
      child: Container(
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min,
          children: [
            // Container(
            //   width: 50,
            //   height: 50,
            //   color: Colors.blue,
            // ),
            // Container(
            //   width: 50,
            //   height: 50,
            //   color: Colors.yellow,
            // ),
            // Container(
            //   width: 50,
            //   height: 100,
            //   color: Colors.green,
            // ),
            // Flexible(
            //   fit: FlexFit.tight,
            //   child: Container(
            //     width: 50,
            //     height: 50,
            //     color: Colors.amber,
            //   ),
            // ),
            // Flexible(
            //   child: Container(
            //     width: 190,
            //     height: 50,
            //     color: Colors.red,
            //   ),
            // )
            Flexible(
              child: FlutterLogo(
                size: 200,
              ),
            ),
            Flexible(
              flex: 2,
              child: FlutterLogo(
                size: 300,
              ),
            ),
            Flexible(
              child: FlutterLogo(
                size: 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
