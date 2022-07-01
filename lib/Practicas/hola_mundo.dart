import 'package:flutter/material.dart';

class HolaMundo extends StatelessWidget {
  const HolaMundo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola Mundo Feliz'),
      ),
      body: //const RetoUNO(),

          const Center(
        child:
            //  Ejemplo de un Hola mundo
            Text('Hola Mundo Platzi'),

        //============================================================
        //ejemplo de diferentes estilos para cada palabra usando Text.rich
        /*
                Text.rich(
             TextSpan(
                text: 'Hola', 
                children: <TextSpan>[
                  TextSpan(
                      text: ' hermoso ',
                      style: TextStyle(fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: 'mundo',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            */
        //============================================================
      ),
    );
  }
}
