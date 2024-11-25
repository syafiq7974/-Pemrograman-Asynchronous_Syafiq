import 'package:flutter/material.dart';
import 'navigation_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dialog Async/Await Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NavigationDialog(),
    );
  }
}
