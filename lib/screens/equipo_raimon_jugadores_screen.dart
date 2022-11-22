import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class JugadoresRaimonScreen extends StatelessWidget {
   
  const JugadoresRaimonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jugadores Instituto Raimon'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const[
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/9/9f/180px-Gk000Endou.jpg/revision/latest?cb=20110718125618&path-prefix=es', nombre: 'Mark Evans',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazumaharrypottereinazumaelevengo/images/4/4a/Nathan_Swift.jpg/revision/latest?cb=20121120160008&path-prefix=es', nombre: 'Nathan Swift',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/5/52/Jack_%28Artwork_IE_T3%29.png/revision/latest?cb=20180130144747&path-prefix=es', nombre: 'Jack Wallside',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://i.pinimg.com/originals/5c/15/43/5c1543e968eb53810e19bd59005be76c.jpg', nombre: 'Axel Blaze',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/2/29/Kev_vs_Royal_Delkuxe.jpg/revision/latest/scale-to-width-down/250?cb=20121202184344&path-prefix=es', nombre: 'Kevin Dragonfly',),
        ],
      ),
    );
  }
}