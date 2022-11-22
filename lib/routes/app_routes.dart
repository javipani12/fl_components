import 'package:fl_components/models/models.dart';
import 'package:fl_components/routes/equipos_routes.dart';
import 'package:fl_components/routes/jugadores_equipos_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home'; 

  static final MenuOptions = <MenuOption>[
    MenuOption( 
      route: 'home', 
      icon: Icons.home_outlined, 
      name: 'Home Screen', 
      screen: const HomeScreen(), 
    ),

    MenuOption( 
      route: 'plantillas_equipos', 
      icon: Icons.list_outlined, 
      name: 'Plantillas Equipos', 
      screen: const ListviewJugadoresEquipos(), 
    ),

    MenuOption( 
      route: 'lista_equipos', 
      icon: Icons.list_alt_outlined, 
      name: 'Equipos Inazuma', 
      screen: const ListviewInazuma(), 
    ),

    MenuOption( 
      route: 'cards', 
      icon: Icons.add_card_sharp, 
      name: 'Cards', 
      screen: const CardScreen(), 
    ),

    MenuOption( 
      route: 'alert', 
      icon: Icons.warning_amber_rounded, 
      name: 'Alerts', 
      screen: const AlertScreen(), 
    ),

  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = { };

    for(final option in MenuOptions) {
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }

    
    for(final option in EquiposRoutes.OpcionesEquipos) {
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }

    for(final option in JugadoresEquiposRoutes.JugadoresEquipos) {
      appRoutes.addAll({ option.route : (BuildContext context) => option.screen });
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => const AlertScreen(),);
      }
}