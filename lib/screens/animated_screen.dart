import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {

  const AnimatedScreen({Key? key}) : super(key: key);

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {

  double _width = 50;
  double _height = 50;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);
  Random _numero = Random();
  List<MaterialColor>  colores = [
    Colors.amber,
    Colors.red,
    Colors.blue,
    Colors.cyan,
    Colors.deepOrange,
    Colors.purple,
    Colors.pink,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
         child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.play_circle_outline,
          size: 35,
        ),
        onPressed: () {
          _width = _numero.nextDouble() * 200;
          _height = _numero.nextDouble() * 200;
          _color = colores[_numero.nextInt(colores.length)];
          _borderRadius = BorderRadius.circular(_numero.nextDouble() * 200);

          setState(() {
            
          }); 
        },
      ),
    );
  }
}