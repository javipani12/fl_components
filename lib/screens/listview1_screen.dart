import 'package:fl_components/routes/jugadores_equipos_routes.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

  // final options = const['Instituto Raimon', 'Royal Academy', 'Instituto Zeus', 'Instituto Farm', 'Instituto Occult'];
   
  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      /*body: ListView(
        children: [
          ...options.map(
            (institutosInazuma) => 
              ListTile(
                leading: const Icon(Icons.sports_soccer),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                title: Text(institutosInazuma),
                onTap: () => {

                },
              )
          ).toList()
        ],
      ),*/
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile( 
          leading: Icon(JugadoresEquiposRoutes.JugadoresEquipos[index].icon),
          title: Text(JugadoresEquiposRoutes.JugadoresEquipos[index].name), // Sacará el elemento de option en la posición index
          onTap: () {
            Navigator.pushNamed(context, JugadoresEquiposRoutes.JugadoresEquipos[index].route);
          }, // Propiedad del ListTile para que podamos pulsar sobre ellos y tenga funcionalidad
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        separatorBuilder: (context, index) => const Divider(), // Línea de separación para cada 
        itemCount: JugadoresEquiposRoutes.JugadoresEquipos.length // Tamaño del elemento que contiene lo que queremos mostrar
      ),
    );
  }
}