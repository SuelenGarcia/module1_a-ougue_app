import 'package:flutter/material.dart';
import 'package:modulo1_acougue/model/meat_model.dart';

class MeatCardWidget extends StatelessWidget {
  final Meat meat;
  const MeatCardWidget({super.key, required this.meat});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final whiteColor = theme.colorScheme.surface;
    // final heightCard = MediaQuery.of(context).size.height * 0.20;
    return ListTile(
      tileColor: meat.colorStatus(),
          title: Text(meat.name, style: TextStyle(color: whiteColor, fontSize: 16, fontWeight: FontWeight.w700,)),
          subtitle: Text('Responsável: ${meat.responsibleEmployee}\n'
              'Local: ${meat.location} - Há ${meat.storageDays()} dias', style: TextStyle(color: whiteColor, fontSize: 14),),
          trailing: Text(
           meat.textStatus(),
            style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        );
  }
}