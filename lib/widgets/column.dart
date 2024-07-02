import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.white,
      ),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 32),
          color: Colors.blueGrey,
          width: 500,
          // double.infinity to width 100%
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // const Text(
              //   'Hello bro',
              // ),
              // const Text(
              //   'Other text',
              //   style: TextStyle(
              //     color: Colors.blue,
              //     fontWeight: FontWeight.w800,
              //     fontSize: 22,
              //   ),
              // ),
              // const Spacer(),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.lightGreen,
                  height: 50,
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.redAccent,
                  height: 50,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.green,
                  height: 50,
                ),
              ),
              Container(
                color: Colors.lightBlue,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
