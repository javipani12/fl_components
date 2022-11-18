import 'package:fl_components/theme/app_themes.dart';
import 'package:flutter/material.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile (
            leading: Icon(Icons.photo_album_outlined, color: AppThemes.primary,),
            title: Text('Album de fotos'),
            subtitle: Text('Officia fugiat sunt officia anim ex nostrud veniam deserunt sunt amet.'),
            
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: (() {}), 
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: (() {}), 
                  child: const Text('OK')
                )
              ],
            ),
          ),
        ],
      )
    );
  }
}