import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class JugadoresFarmScreen extends StatelessWidget {
   
  const JugadoresFarmScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const[
          CustomCardTipo2(imageURL: 'https://mgrgaming.co.za/wp-content/uploads/Candy.png', nombre: 'Hillvalley',),
          SizedBox(height: 10),
          CustomCardTipo2(imageURL: 'https://as01.epimg.net/meristation/imagenes/2019/02/16/noticias/1550308133_525712_1550308658_noticia_normal.jpg', nombre: 'Kingdom Come Deliverance',),
          SizedBox(height: 10),
          CustomCardTipo2(imageURL: 'https://cdn.cloudflare.steamstatic.com/steam/apps/239030/capsule_616x353.jpg?t=1646889353', nombre: 'Papers Please',),
          SizedBox(height: 10),
          CustomCardTipo2(imageURL: 'https://tradusquare.es/wp-content/uploads/2021/11/go_strikers.webp', nombre: 'Inazuma Eleven Go Strikers 2013',),
          SizedBox(height: 10),
          CustomCardTipo2(imageURL: 'https://static.wikia.nocookie.net/life-is-strange-w/images/c/c9/Lifeisstrange_wikia.jpg/revision/latest?cb=20150803213501&path-prefix=es', nombre: 'Life is Strange',),
        ],
      ),
    );
  }
}