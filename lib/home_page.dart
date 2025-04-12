import 'package:flutter/material.dart';
import 'package:modulo1_acougue/widget/list_view_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  final Color color = Color.fromARGB(255, 207, 56, 45);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(leading: Icon(Icons.outdoor_grill_outlined, color: color, size: 42,), title: Text('SABOR DA MORTE', textAlign: TextAlign.center, style: GoogleFonts.lobster(color: color, fontSize: 30, fontWeight: FontWeight.w800,),), backgroundColor: Color.fromARGB(255, 255, 255, 255),),
      body: ListViewWidget(),
    );
  }
}