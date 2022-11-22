import 'package:fl_components/models/models.dart';
import 'package:fl_components/screens/equipo_occult_jugadores_screen.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class JugadoresEquiposRoutes {

  static final JugadoresEquipos = <MenuOption> [
    MenuOption(
      route: 'jugadores_raimon',
      icon: Icons.sports_soccer,
      name: 'Instituto Raimon',
      screen: const JugadoresRaimonScreen(),
    ),

    MenuOption(
      route: 'jugadores_royal',
      icon: Icons.sports_soccer,
      name: 'Royal Academy',
      screen: const RoyalScreen(),
    ),

    MenuOption(
      route: 'jugadores_zeus',
      icon: Icons.sports_soccer,
      name: 'Instituto Zeus',
      screen: const ZeusScreen(),
    ),

    MenuOption(
      route: 'jugadores_farm',
      icon: Icons.sports_soccer,
      name: 'Instituto Farm',
      screen: const JugadoresFarmScreen(),
    ),

    MenuOption(
      route: 'jugadores_occult',
      icon: Icons.sports_soccer,
      name: 'Instituto Occult',
      screen: const JugadoresOccultScreen(),
    ),
  ];
  
}