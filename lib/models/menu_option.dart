import 'package:flutter/material.dart';

class MenuOption {
  final String route;
  final IconData icon;
  final String name;
  final Widget screen;

  // Ponemos los atributos en el constructor entre llaves para que 
  // a la hora de instanciarlo no sea necesario ponerlos en el orden indicado
  MenuOption({
    required this.route, 
    required this.icon, 
    required this.name, 
    required this.screen
  });
}