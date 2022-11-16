import 'package:flutter/material.dart';

class ZeusScreen extends StatelessWidget {
   
  const ZeusScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instituto Zeus'),
        backgroundColor: const Color.fromARGB(255, 9, 136, 13),
      ),
      body: Column(
        children: const <Widget> [
            SizedBox(height: 20,),
            FotoZeus(),
            SizedBox(height: 20,),
            TextoZeus(),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 228, 225, 225)
    );
  }
}

class FotoZeus extends StatelessWidget {

  const FotoZeus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Expanded(
          child: Image(
            image: NetworkImage("http://pm1.narvii.com/6486/df1a7278b8ed630281eb4b5ec04d94e2d8a0c70d_00.jpg"),
            height: 100,
            width: 100,
            alignment: Alignment.bottomCenter,
          ),
        ),
      ],
    );
  }
}

class TextoZeus extends StatelessWidget {

  const TextoZeus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Text('Se consideran los "Dioses" del fútbol'),
      ],
    );
  }
}