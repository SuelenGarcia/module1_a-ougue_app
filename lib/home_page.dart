import 'package:flutter/material.dart';
import 'package:modulo1_acougue/widget/list_view_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(leading: Icon(Icons.outdoor_grill_outlined, color: const Color.fromARGB(255, 253, 99, 88), size: 40,), title: Text('SABOR DA MORTE', style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w800,),), backgroundColor: const Color.fromARGB(255, 255, 255, 255),),
      body: ListViewWidget(),
    );
  }
}