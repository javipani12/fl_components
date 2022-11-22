import 'package:flutter/material.dart';

class RaimonScreen extends StatelessWidget {
   
  const RaimonScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instituto Raimon'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: const <Widget> [
            SizedBox(height: 20,),
            FotoRaimon(),
            SizedBox(height: 20,),
            TextoRaimon(),
        ],
      ),
      backgroundColor: Colors.orangeAccent
    );
  }
}

class FotoRaimon extends StatelessWidget {

  const FotoRaimon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        FadeInImage(
            image: NetworkImage("https://static.wikia.nocookie.net/inazuma-eleven/images/4/40/Raimon_SD.png/revision/latest?cb=20220703151255"),
            height: 100,
            width: 100,
            alignment: Alignment.bottomCenter,
            placeholder: AssetImage('assets/jar-loading.gif'),
          ),
      ],
    );
  }
}

class TextoRaimon extends StatelessWidget {

  const TextoRaimon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Text('El Instituto Raimon destaca por su coraje y garra'),
    );
  }
}