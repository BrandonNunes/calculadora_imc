import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'TablePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      initialRoute: '/',
      routes: {
        '/': (context) => MyImcApp(),
        '/table': (context) => TablePage(),
      },
    );
  }
}
