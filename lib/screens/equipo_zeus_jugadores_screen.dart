import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class JugadoresZeusScreen extends StatelessWidget {
   
  const JugadoresZeusScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jugadores Instituto Raimon'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const[
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/0/0f/Paulsiddon.png/revision/latest?cb=20130830084758&path-prefix=es', nombre: 'Paul Siddon',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/5/52/Hephestus_outer_code.jpeg/revision/latest?cb=20200708160641&path-prefix=es', nombre: 'Jeff Iron',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://i.pinimg.com/564x/b8/f2/44/b8f2445845d57eec98016688c3461333.jpg', nombre: 'Artie Mishman',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/f/f9/Jonas_Demetrius_IED.png/revision/latest?cb=20121213132742&path-prefix=es', nombre: 'Jonas Demetrius',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://i1.sndcdn.com/avatars-AO7bZRt6bES0HHMi-aenN5g-t500x500.jpg', nombre: 'Byron Love',),
        ],
      ),
    );
  }
}