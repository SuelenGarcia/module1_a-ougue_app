import 'package:flutter/material.dart';
import 'package:modulo1_acougue/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Açougue Sabor da Morte',
      home: const HomePage(),
    );
  }
}

