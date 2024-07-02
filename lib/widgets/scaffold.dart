import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
        ),
        backgroundColor: const Color(0xff01579b),
        elevation: 13,
        shadowColor: Colors.black,
        title: const Text(
          'Home',
        ),
        titleTextStyle: const TextStyle(
            color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              )),
        ],
      ),
      drawer: const Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            FlutterLogo(
              size: 20,
            )
          ],
        ),
      ),
      drawerEnableOpenDragGesture: false,
      onDrawerChanged: (isOpened) {
        print(isOpened);
      },
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff01579b),
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          print('Pressed');
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Color(0xff01579b)),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Color(0xff01579b)),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(32),
        child: const Text('Hola'),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
