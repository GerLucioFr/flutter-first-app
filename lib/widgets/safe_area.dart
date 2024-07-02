import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySafeArea extends StatelessWidget {
  const MySafeArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orange.shade50,
        width: double.infinity,
        height: double.infinity,
        child: SafeArea(
          child: Column(
            children: [
              const Text('Hello'),
              Expanded(
                  child: Container(
                color: Colors.blueGrey,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
