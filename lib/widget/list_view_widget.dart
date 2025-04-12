import 'package:flutter/material.dart';
import 'package:modulo1_acougue/controller/meat_controller.dart';
import 'package:modulo1_acougue/model/registration_fields_model.dart';
import 'package:modulo1_acougue/widget/meat_card_widget.dart';
import 'package:provider/provider.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final meatController = Provider.of<MeatController>(context);
     final meats = meatController.meats;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de carnes', style: TextStyle(color: Color.fromARGB(255, 111, 111, 112)),),
      ),
      body: meats.isEmpty
          ? Center(child: Text("Nenhuma carne foi cadastrada."))
          : ListView.builder(
              itemCount: meats.length,
              itemBuilder: (context, index) {
                return MeatCardWidget(meat: meats[index]); 
              },
            ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 207, 56, 45),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RegistrationFieldsModel(),
            ),
          );
        },
        tooltip: 'Adicione a carne',
        child: Icon(Icons.add, color: const Color.fromARGB(255, 255, 255, 255),),
      ),
    );
  }
}