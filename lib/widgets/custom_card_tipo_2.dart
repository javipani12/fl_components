import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {
  const CustomCardTipo2({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          Image(
            image: NetworkImage('https://mgrgaming.co.za/wp-content/uploads/Candy.png'),
          )
        ],
      ),
    );
  }
}