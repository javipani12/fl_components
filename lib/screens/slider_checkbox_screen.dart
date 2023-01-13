import 'package:fl_components/theme/app_themes.dart';
import 'package:flutter/material.dart';

class SliderCheckboxScreen extends StatefulWidget {
   
  const SliderCheckboxScreen({Key? key}) : super(key: key);

  @override
  State<SliderCheckboxScreen> createState() => _SliderCheckboxScreenState();
}

class _SliderCheckboxScreenState extends State<SliderCheckboxScreen> {

  double _sliderValue = 225;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks 2'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider.adaptive(
              activeColor: AppThemes.primary,
              value: _sliderValue,
              min: 50,
              max: 400,
              onChanged: _sliderEnable ? (value) {
                _sliderValue = value;
                
                setState(() {
                  
                });
              } : null
            ),
            Image(
              fit: BoxFit.contain,
              width: _sliderValue,
              image: NetworkImage('https://snipstock.com/assets/cdn/png/3343de735dd87337a1f5a62a224434fd.png'),
            ),
            /*Checkbox( // El valor que devulve puede ser true o null 
              value: _sliderEnable, 
              onChanged: (value) {
                _sliderEnable = value ?? false;
                setState(() {
                  
                });
              },
            ),*/
            CheckboxListTile( // Nos permite pulsar fuera del checkbox para marcarlo
              activeColor: AppThemes.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable, 
              onChanged: (value) {
                _sliderEnable = value ?? false;
                setState(() {
                  
                });
              },
            ),
            SwitchListTile( // Puede ser true o false, no tiene valores nulos
              activeColor: AppThemes.primary,
              title: const Text('Habilitar Slider'),
              value: _sliderEnable, 
              onChanged: (value) {
                _sliderEnable = value;
                setState(() {
                  
                });
              },
            ),
            
          ],
        ),
      )
    );
  }
}