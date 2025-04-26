import 'package:flutter/material.dart';
import 'package:modulo1_acougue/theme/custom_theme.dart';
import 'package:modulo1_acougue/widget/login_page_widget.dart';
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
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
    );
  }
}
