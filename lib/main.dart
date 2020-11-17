import 'package:flutter/material.dart';
import 'package:the_basics_web/locator.dart';

import 'package:the_basics_web/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      title: 'Material App',
      home: LayoutTemplate(),
    );
  }
}
