import 'package:flutter/material.dart';
import 'package:flutter_rest_api/example_five.dart';
// import 'package:flutter_rest_api/example_four.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Rest API',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      debugShowCheckedModeBanner: false,
      // home: const ExampleFour(),
      home:  const LastExampleScreen(),
    );
  }
}
