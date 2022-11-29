import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: const [
            SizedBox( width: 20,),
            CustomTextFormField(
              hintText: 'Nombre',
              labelText: 'Nombre',
              helperText: 'Mínimo 3 caracteres',
              icon: Icons.abc,
              suffixIcon: Icons.group_outlined,
            ),
            SizedBox( width: 20,),
            CustomTextFormField(
              hintText: 'Apellidos',
              labelText: 'Apellidos',
              helperText: 'Mínimo 3 caracteres',
              icon: Icons.abc,
              suffixIcon: Icons.group_outlined,
            ),
          ],
        )
      )
    );
  }
}