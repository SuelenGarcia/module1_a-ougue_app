import 'package:flutter/material.dart';

class Meat {
  String name;
  String location;
  DateTime arrivalDate;
  DateTime expiryDate;
  String responsibleEmployee;

  Meat({required this.name,
    required this.location,
    required this.arrivalDate,
    required this.expiryDate,
    required this.responsibleEmployee,});


  // qts dias a carne chegou
int storageDays (){ return DateTime.now().difference(arrivalDate).inDays;
  }

 // vence em até 5 dias
bool isCloseExpiry() {
    final difference = expiryDate.difference(DateTime.now()).inDays;
    return difference > 0 && difference <= 5;
  }

// já venceu
bool isExpired() {
  return expiryDate.isBefore(DateTime.now());
}

  // texto
  String textStatus() {
    if (isExpired()) return 'VENCIDA';
    if (isCloseExpiry()) return 'VENCE EM 5 DIAS';
    return 'FRESCA';
  }

// cor do card
  Color colorStatus() {
    if (isExpired()) return const Color.fromARGB(255, 0, 0, 0);
    if (isCloseExpiry()) return const Color.fromARGB(255, 238, 86, 75);
    return const Color.fromARGB(255, 69, 167, 72);
  }
}