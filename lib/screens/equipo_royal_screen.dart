import 'package:flutter/material.dart';

class RoyalScreen extends StatelessWidget {
   
  const RoyalScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Royal Academy'),
        backgroundColor:const Color.fromARGB(255, 173, 43, 34),
      ),
      body: Column(
        children: const <Widget> [
            SizedBox(height: 20,),
            FotoRoyal(),
            SizedBox(height: 20,),
            TextoRoyal(),
        ],
      ),
      backgroundColor:const Color.fromARGB(255, 6, 63, 8)
    );
  }
}

class FotoRoyal extends StatelessWidget {

  const FotoRoyal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Expanded(
          child: Image(
            image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTicX6rxr2E3wQ_Rj2h-hZ14XQPL3K9FmHm5Q&usqp=CAU"),
            height: 100,
            width: 100,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ],
    );
  }
}

class TextoRoyal extends StatelessWidget {

  const TextoRoyal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Text('La Royal destaca por sus trampas en el campo'),
    );
  }
}