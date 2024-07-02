import 'package:flutter/cupertino.dart';

class MyScaffoldCupertino extends StatelessWidget {
  const MyScaffoldCupertino({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: const [Text('Hi bro')],
        ),
      ),
    );
  }
}
