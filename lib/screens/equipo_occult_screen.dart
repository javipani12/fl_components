import 'package:flutter/material.dart';

class OccultScreen extends StatelessWidget {
   
  const OccultScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instituto Occult'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: const <Widget> [
            SizedBox(height: 20,),
            FotoOccult(),
            SizedBox(height: 20,),
            TextoOccult(),
        ],
      ),
      backgroundColor: Colors.purple
    );
  }
}

class FotoOccult extends StatelessWidget {

  const FotoOccult({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Expanded(
          child: Image(
            image: NetworkImage("https://c.tenor.com/9xpklfuAyasAAAAC/inazuma-eleven-ina11.gif"),
            height: 100,
            width: 100,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ],
    );
  }
}

class TextoOccult extends StatelessWidget {

  const TextoOccult({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Text('El Instituto Occult es un equipo con habilidades extrañas'),
    );
  }
}