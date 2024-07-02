import 'package:first_app/widgets/list_view_builder.dart';
import 'package:flutter/material.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

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
      ),
    );

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              final route = MaterialPageRoute(
                builder: (_) => const MyListViewBuilder(),
              );
              Navigator.push(context, route);
            },
            icon: const Icon(Icons.fork_left),
          )
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 100,
            child: ListView(
              physics: const ClampingScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              scrollDirection: Axis.horizontal,
              children: colorsList,
            ),
          ),
          // Expanded(
          //   child: ListView(
          //     physics: const ClampingScrollPhysics(),
          //     keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          //     children: colorsList,
          //   ),
          // ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: colorsList,
            ),
          ),
        ]),
      ),
    );
  }
}
