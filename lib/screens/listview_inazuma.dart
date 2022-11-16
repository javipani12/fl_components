import 'package:fl_components/routes/equipos_routes.dart';
import 'package:flutter/material.dart';

class EquiposInazuma extends StatelessWidget {
   
  const EquiposInazuma({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Equipos Inazuma'),
        backgroundColor: Colors.lime,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile( 
          leading: Icon(EquiposRoutes.OpcionesEquipos[index].icon),
          title: Text(EquiposRoutes.OpcionesEquipos[index].name), // Sacará el elemento de option en la posición index
          onTap: () {
            Navigator.pushNamed(context, EquiposRoutes.OpcionesEquipos[index].route);
          }, // Propiedad del ListTile para que podamos pulsar sobre ellos y tenga funcionalidad
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        separatorBuilder: (context, index) => const Divider(), // Línea de separación para cada 
        itemCount: EquiposRoutes.OpcionesEquipos.length // Tamaño del elemento que contiene lo que queremos mostrar
      ),
      
    );
  }
}