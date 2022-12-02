import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    // Necesario para todos los formularioa
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'nombre':       'Mark',
      'apellido':     'Evans',
      'email':        'juguemosalfutbol@raimon.com',
      'password':     'vivaelfutbol',
      'role':         'user',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms: Inputs'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey, // Despues de hacer myFormKey, añadir esta propiedad en el formulario
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Nombre',
                labelText: 'Nombre completo',
                icon: Icons.abc, 
                formProperty: 'nombre', 
                formValues: formValues,
              ),
              const SizedBox( height: 30,),
              CustomTextFormField(
                hintText: 'Apellidos',
                labelText: 'Apellidos del usuario',
                icon: Icons.supervised_user_circle, 
                formProperty: 'apellido', 
                formValues: formValues,
              ),
              const SizedBox( height: 30,),
              CustomTextFormField(
                hintText: 'E-Mail',
                labelText: 'E-Mail del usuario',
                icon: Icons.alternate_email_outlined,
                keyboardType: TextInputType.emailAddress, 
                formProperty: 'email', 
                formValues: formValues,
              ),
              const SizedBox( height: 30,),
              CustomTextFormField(
                hintText: 'Contraseña',
                labelText: 'Contraseña del usuario',
                icon: Icons.password,
                obscureText: true, 
                formProperty: 'password', 
                formValues: formValues,
              ),
              const SizedBox( height: 30,),
              DropdownButtonFormField(
                items: const [
                  DropdownMenuItem(
                    value: 'usuario',
                    child: Text('Usuario'),
                  ),
                  DropdownMenuItem(
                    value: 'editor',
                    child: Text('Editor'),
                  ), 
                  DropdownMenuItem(
                    value: 'programador',
                    child: Text('Programador'),
                  ), 
                  DropdownMenuItem(
                    value: 'administrador',
                    child: Text('Administrador'),
                  )
                ] , 
                onChanged: ((value) {
                  print(value);
                  formValues['role'] = value ?? 'usuario';
                })
              ),
              const SizedBox( height: 30,),
              ElevatedButton(
                onPressed: (() {
                  // Al enviar el formulario se nos quita el foco del teclado
                  FocusScope.of(context).requestFocus(FocusNode());
                  if( !myFormKey.currentState!.validate() ) {
                    print('Formulario no válido');
                    return;
                  }
                  print(formValues);
                }), 
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(child: Text('Enviar'))
                  ),
              ),
            ],
          ),
        )
      )
    );
  }
}