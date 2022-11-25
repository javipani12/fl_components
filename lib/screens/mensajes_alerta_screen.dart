import 'package:flutter/material.dart';

class MensajesAlertaScreen extends StatelessWidget {
   
  const MensajesAlertaScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    showDialog(
      barrierDismissible: false, // Nos permite pulsar fuera de la alerta
      context: context,
      builder: ((context) {
        return AlertDialog(
          title: const Text('Alerta'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(20)
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 20,),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: const Text('OK')
            )
          ],
        );
      })
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: ( (){
              displayDialog(context);
            } ),
          child: 
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Mostrar alerta',
                  style: TextStyle( fontSize: 20, )
              ),
            ),
        ), 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ( () => Navigator.pop(context) ),
        child: const Icon( Icons.close ),
      ),
    );
  }
}