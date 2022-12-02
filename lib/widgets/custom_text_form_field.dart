import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomTextFormField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Meter un input de formalario 
    return TextFormField(
      autofocus: true, // Se abra el campo automáticamente
      // initialValue: 'Mark Evans', // Valor por defecto del input

      textCapitalization: TextCapitalization.words, // Poner la primera letra de cada palabra en mayúscula
      obscureText: obscureText, // Para las contraseñas, el texto salga con los puntitos
      keyboardType: keyboardType, // Para los correos electrónicos, para que en el teclado aparezca @

      // Almacenar lo que se está escribiendo
      onChanged: (value) => formValues[formProperty] = value,
      
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