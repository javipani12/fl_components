import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class JugadoresRoyalScreen extends StatelessWidget {
   
  const JugadoresRoyalScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jugadores Instituto Raimon'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const[
          CustomCardTipo3(imageURL: 'http://pm1.narvii.com/6321/68077a8d4cff2b4b2168c8b3d0023df99615fd5a_00.jpg', nombre: 'Joseph King',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://pm1.narvii.com/6870/a73ac13fdda323cc245a4b87a5212fc124585ee3r1-540-631v2_hq.jpg', nombre: 'Peter Drent',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/6/63/250px-Doumen_Shuuichirou.jpg/revision/latest?cb=20120501151046&path-prefix=es', nombre: 'Derek Swing',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'http://pm1.narvii.com/6802/398289454d95e99e60128c3109ff077b0f4ebb25v2_00.jpg', nombre: 'Daniel Hatch',),
          SizedBox(height: 10),
          CustomCardTipo3(imageURL: 'https://static.wikia.nocookie.net/inazuma/images/f/f7/Samford_%28Artwork_IE_VJ%29.png/revision/latest?cb=20160402202546&path-prefix=es', nombre: 'David Samford',),
        ],
      ),
    );
  }
}