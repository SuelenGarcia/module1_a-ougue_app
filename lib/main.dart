import 'package:flutter/material.dart';
import 'package:modulo1_acougue/home_page.dart';
import 'package:provider/provider.dart';
import 'package:modulo1_acougue/controller/meat_controller.dart';
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => MeatController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Açougue Sabor da Morte',
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
