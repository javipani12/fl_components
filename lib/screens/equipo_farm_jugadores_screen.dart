import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class JugadoresFarmScreen extends StatelessWidget {
   
  const JugadoresFarmScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jugadores Instituto Farm'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const[
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/6/69/Albert_Green.png/revision/latest?cb=20130910103759&path-prefix=es', nombre: 'Albert Green',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/d/dc/250px-Sumino_Eisuke.jpg/revision/latest?cb=20120218215629&path-prefix=es', nombre: 'Seward Hayseed',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/9/92/Markhillvalley1.png/revision/latest/scale-to-width-down/1000?cb=20140107201723&path-prefix=es', nombre: 'Mark Hillvalley',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/3/37/Sherman.jpg/revision/latest?cb=20160509015843&path-prefix=es', nombre: 'Herb Sherman',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/6/6d/250px-Harano_Tooru.jpg/revision/latest?cb=20120423001154&path-prefix=es', nombre: 'Tom Walters',),
        ],
      ),
    );
  }
}