import 'package:flutter/material.dart';
import 'package:modulo1_acougue/controller/meat_controller.dart';
import 'package:modulo1_acougue/model/meat_model.dart';
import 'package:provider/provider.dart';

class RegistrationFieldsModel extends StatefulWidget {
  const RegistrationFieldsModel({super.key});

  @override
  State<RegistrationFieldsModel> createState() => _RegistrationFieldsModelState();
}

class _RegistrationFieldsModelState extends State<RegistrationFieldsModel> {
  final _formKey = GlobalKey<FormState>(); //chave privada p n ser acessada fora. usando global key pra pegar o status do widget e vai controlar o forms
  final nameController = TextEditingController();
  final locationController = TextEditingController();
  final employeeController = TextEditingController();
  DateTime? arrivalDate;
  DateTime? expiryDate;

//metodo q mostra calendario - CORRIGIDA
  void _pickDate({required bool isArrival}) async {
  final DateTime firstDate = isArrival ? DateTime(2025) : DateTime.now(); 
  final DateTime lastDate = isArrival ? DateTime.now() : DateTime(2030); 

  final picked = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: firstDate,
    lastDate: lastDate,
  );
    if (picked != null) {
      setState(() { //set state p atualizar os dados na tela
        if (isArrival) {
          arrivalDate = picked;
        } else {
          expiryDate = picked;
        }
      });
    }
  }

  void _saveMeat() {
    //metodo validate valida se os campos sao tds validos
    if (_formKey.currentState!.validate() && arrivalDate != null && expiryDate != null) {
      final newMeat = Meat(
        name: nameController.text,
        location: locationController.text,
        arrivalDate: arrivalDate!,
        expiryDate: expiryDate!,
        responsibleEmployee: employeeController.text,
      );
// o listen ta como false pq só quero chamar sem reconstruir.
    final meatController = Provider.of<MeatController>(context, listen: false);
    meatController.addMeat(newMeat);
    //volta depois de salvar
    Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastrar nova carne')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Nome da carne'),
                validator: (value) => value == null || value.isEmpty ? 'Campo obrigatório!' : null,
              ),
              TextFormField(
                controller: locationController,
                decoration: const InputDecoration(labelText: 'Local'),
                validator: (value) => value == null || value.isEmpty ? 'Campo obrigatório!' : null,
              ),
              TextFormField(
                controller: employeeController,
                decoration: const InputDecoration(labelText: 'Responsável'),
                validator: (value) => value == null || value.isEmpty ? 'Campo obrigatório!' : null,
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () => _pickDate(isArrival: true),
                child: Text(arrivalDate == null
                    ? 'Selecione a data de chegada:'
                    : 'Chegou em: ${arrivalDate!.day}/${arrivalDate!.month}/${arrivalDate!.year}', style: TextStyle(color: theme.colorScheme.onSurface, fontSize: 14),),
              ),
              TextButton(
                onPressed: () => _pickDate(isArrival: false),
                child: Text(expiryDate == null
                    ? 'Selecione a data de validade:'
                    : 'Vence em: ${expiryDate!.day}/${expiryDate!.month}/${expiryDate!.year}', style: TextStyle(color: theme.colorScheme.onSurface, fontSize: 14),),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveMeat,
                style: ElevatedButton.styleFrom(
                 backgroundColor: theme.primaryColor,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12),),),
                ),
                child: Text('Salvar', style: TextStyle(color: theme.colorScheme.surface, fontSize: 14, fontWeight: FontWeight.w500,),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
