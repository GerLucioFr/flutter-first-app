import 'package:first_app/icons/my_custom_icons_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyCustomIcon extends StatelessWidget {
  const MyCustomIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: const EdgeInsets.all(32),
            children: const [
              Column(
                children: [
                  CupertinoSearchTextField(),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.camera,
                    size: 48,
                    color: Colors.blue,
                    semanticLabel: 'An icon',
                  ),
                  Icon(
                    CupertinoIcons.camera,
                    size: 48,
                    color: Colors.blue,
                    semanticLabel: 'An icon',
                  ),
                  Icon(
                    MyCustomIcons.camera,
                    size: 48,
                    color: Colors.blue,
                    semanticLabel: 'An icon',
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.heart_broken,
                    size: 48,
                    color: Colors.blue,
                    semanticLabel: 'An icon',
                  ),
                  Icon(
                    CupertinoIcons.heart,
                    size: 48,
                    color: Colors.blue,
                    semanticLabel: 'An icon',
                  ),
                  Icon(
                    MyCustomIcons.heart,
                    size: 48,
                    color: Colors.blue,
                    semanticLabel: 'An icon',
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.speaker,
                    size: 48,
                    color: Colors.blue,
                    semanticLabel: 'An icon',
                  ),
                  Icon(
                    CupertinoIcons.speaker,
                    size: 48,
                    color: Colors.blue,
                    semanticLabel: 'An icon',
                  ),
                  Icon(
                    MyCustomIcons.speaker,
                    size: 48,
                    color: Colors.blue,
                    semanticLabel: 'An icon',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
