import 'package:fl_components/routes/app_routes.dart';
import 'package:fl_components/routes/equipos_routes.dart';
import 'package:fl_components/theme/app_themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quitar la etiqueta del debug
      title: 'Material App',
      // home: const ListView2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      // En caso de pasar entre pantallas y dé error nos llevará a la ventana que le indiquemos
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppThemes.lightTheme
    );
  }
}