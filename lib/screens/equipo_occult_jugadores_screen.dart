import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class JugadoresOccultScreen extends StatelessWidget {
   
  const JugadoresOccultScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jugadores Instituto Occult'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const[
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/8/80/Johan_Tasman.jpg/revision/latest?cb=20101228131303&path-prefix=es', nombre: 'Johan Tassman',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/2/29/250px-Nata_Juuzou.jpg/revision/latest?cb=20111002194011&path-prefix=es', nombre: 'Nathan Jones',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/d/d8/Troy_con_su_tiro_fantasma.jpg/revision/latest?cb=20120202174725&path-prefix=es', nombre: 'Troy Moon',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/7/76/Burt_Wolf_IED.png/revision/latest?cb=20121202155718&path-prefix=es', nombre: 'Burt Wolf',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/3/3f/Ken_Furan_viendo_el_resultado.jpg/revision/latest?cb=20120202181447&path-prefix=es', nombre: 'Ken Furan',),
        ],
      ),
    );
  }
}