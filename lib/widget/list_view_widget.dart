import 'package:flutter/material.dart';
import 'package:modulo1_acougue/mock/meat_mock.dart';
import 'package:modulo1_acougue/widget/meat_card_widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meatsMock.length,
      itemBuilder: (context, index) {
        final meat = meatsMock[index];
          return MeatCardWidget(meat: meat);
        },
      );

  }
}