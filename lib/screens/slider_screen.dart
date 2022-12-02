import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_themes.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double _sliderValue = 100.0;
  bool _sliderEnable = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppThemes.primary,
            min: 50,
            max: 400,
            value: _sliderValue, 
            onChanged: _sliderEnable ? (value) {
              _sliderValue = value;
              setState(() {
                
              });
            }
            : null,
          ),
          Checkbox(
            value: _sliderEnable, 
            onChanged: (value) {
              _sliderEnable = value ?? true;

              setState(() {
                
              });
            }
          ), 
        ],
      )
    );
  }
}