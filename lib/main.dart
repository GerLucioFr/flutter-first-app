// import 'package:first_app/widgets/container.dart';
// import 'package:first_app/widgets/column.dart';
// import 'package:first_app/widgets/row.dart';
// import 'package:first_app/widgets/stack.dart';
// import 'package:first_app/widgets/scaffold.dart';
// import 'package:first_app/widgets/safe_area.dart';
// import 'package:first_app/widgets/single_child_scroll_view.dart';
// import 'package:first_app/widgets/list_view.dart';
// import 'package:first_app/widgets/custom_fonts.dart';
// import 'package:first_app/widgets/custom_icons.dart';
import 'package:first_app/widgets/images.dart';

// import 'package:first_app/widgets/scaffold_cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyImages());
    // return const CupertinoApp(home: MyScaffoldCupertino());
  }
}
