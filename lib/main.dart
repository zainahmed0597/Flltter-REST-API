import 'package:flutter/material.dart';
import 'package:flutter_rest_api/signup.dart';


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
      home:  const SignUpScreen(),
    );
  }
}
