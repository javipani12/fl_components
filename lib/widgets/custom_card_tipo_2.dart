import 'package:flutter/material.dart';

class CustomCardTipo2 extends StatelessWidget {

  final String? imageURL;
  final String? nombre;

  const CustomCardTipo2({super.key, required this.imageURL, this.nombre});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageURL ?? 'assets/jar-loading.gif'), 
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity, // Ajusta automáticamente el ancho
            height: 260,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if(nombre != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
              child: Text(nombre ?? 'Desconocido'),
            )
        ],
      ),
    );
  }
}