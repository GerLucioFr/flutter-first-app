import 'package:first_app/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 400,
        height: 600,
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: Colors.amber,
              style: BorderStyle.solid,
              width: 5,
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.blue.withOpacity(1),
                  blurRadius: 30,
                  spreadRadius: 5,
                  offset: const Offset(10, 30)),
            ],
            gradient: const LinearGradient(
              colors: [
                Colors.red,
                Colors.orange,
                Colors.cyan,
              ],
              stops: [0.3, 0.6, 1],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: const DefaultTextStyle(
          style: TextStyle(),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: MyText(),
          ),
        ),
      ),
    );
  }
}
