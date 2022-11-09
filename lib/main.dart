import 'package:flutter/material.dart';
import 'package:listview_animation/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final String title = 'PageView: Complex Animations';

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: title,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        home: HomePage(),
      );
}