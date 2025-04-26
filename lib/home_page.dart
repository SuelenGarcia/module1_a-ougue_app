import 'package:flutter/material.dart';
import 'package:modulo1_acougue/widget/list_view_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modulo1_acougue/theme/custom_theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
      final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: Icon(Icons.outdoor_grill_outlined, color: theme.primaryColor, size: 42),
        title: Text(
          'Carnes',
          textAlign: TextAlign.center,
          style: GoogleFonts.roboto(
            color: theme.primaryColor,
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: theme.colorScheme.surface,
      ),
      body: ListViewWidget(),
    );
  }
}
