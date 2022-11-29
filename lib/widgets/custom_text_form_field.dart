import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;

  const CustomTextFormField({
    Key? key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Meter un input de formalario 
    return TextFormField(
      autofocus: true, // Se abra el campo automáticamente
      // initialValue: 'Mark Evans', // Valor por defecto del input
      textCapitalization: TextCapitalization.words, // Poner la primera letra de cada palabra en mayúscula
      // Almacenar lo que se está escribiendo
      onChanged: (value) {
        print('Value: $value');
      },
      // Comprobar condiciones establecidas
      validator: (value) {
        if(value!.length < 3) {
          return 'Mínimo 3 caractereres';
        }
        if(value.length > 20) {
          return 'Máximo 20 caractereres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // prefixIcon: Icon(Icons.verified_outlined), 
        icon: Icon(icon),
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}