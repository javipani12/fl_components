import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatares'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5.0),
            child: const CircleAvatar(
              maxRadius: 30,
              backgroundImage: NetworkImage('https://static.wikia.nocookie.net/wikiseriesjaponesas/images/8/82/Mark_Evans.jpg/revision/latest?cb=20120707235001&path-prefix=es'),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 125,
          backgroundImage: NetworkImage('https://static.wikia.nocookie.net/wikiseriesjaponesas/images/8/82/Mark_Evans.jpg/revision/latest?cb=20120707235001&path-prefix=es'),
         ),
      ),
    );
  }
}