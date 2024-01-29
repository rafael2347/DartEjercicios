import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context){
    //print('Hola mundo');
    showDialog(
      barrierDismissible: false,
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Text('Alerta'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(20)),
          content: Text('Este es el contenido de mi alerta'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text('Cancelar')
            ),
          ],
        );
      }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 20),),
          ),
          onPressed: () => displayDialog( context ),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.close ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}