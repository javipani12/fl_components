import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  final options = const['Instituto Raimon', 'Royal Academy', 'Instituto Zeus', 'Instituto Farm', 'Instituto Occult'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (institutosInazuma) => 
              ListTile(
                leading: const Icon(Icons.sports_soccer),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                title: Text(institutosInazuma),
              )
          ).toList()
        ],
      ),
    );
  }
}