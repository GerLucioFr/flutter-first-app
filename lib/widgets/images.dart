import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyImages extends StatelessWidget {
  const MyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              Image.network(
                'https://static.wikia.nocookie.net/dccu/images/1/17/DCU_Superman_First_Look.jpeg',
                loadingBuilder: (_, witget, event) {
                  if (event == null) {
                    return witget;
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
              CachedNetworkImage(
                imageUrl:
                    'https://static.wikia.nocookie.net/dccu/images/1/17/DCU_Superman_First_Look.jpeg',
                placeholder: (_, __) => const CircularProgressIndicator(),
                errorWidget: (_, __, ___) => const Icon(Icons.error_outline),
              ),
              Image.asset(
                'assets/img/batman.jpg',
                height: 100,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/img/apple.png',
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
