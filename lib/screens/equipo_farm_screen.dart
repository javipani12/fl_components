import 'package:flutter/material.dart';

class FarmScreen extends StatelessWidget {
   
  const FarmScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instituto Farm'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: const <Widget> [
            SizedBox(height: 20,),
            Row1(),
            SizedBox(height: 20,),
            Row2()
        ],
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}

class Row1 extends StatelessWidget {

  const Row1({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Expanded(
          child: Image(
            image: NetworkImage('https://static.wikia.nocookie.net/inazuma-eleven/images/7/7c/Senbayama_SD.png'),
            height: 100,
            width: 100,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ],
    );
  }
}

class Row2 extends StatelessWidget {

  const Row2({super.key});



  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text('El Instituto Farm destaca por su capacidad defensiva'),
      ],
    );
  }
}