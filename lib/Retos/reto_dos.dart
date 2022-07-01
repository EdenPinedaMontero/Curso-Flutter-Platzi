import 'package:flutter/material.dart';

class RetoDos extends StatelessWidget {
  const RetoDos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: const Text(
          'Reto numero 2',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    */
      // ===== Se agrega una imagen que estará de fondo, y se utiliza un stack que sirve para poner widgets encima de otros =====//
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/fondo_reto_dos.jpg',
              fit: BoxFit.cover,
            ),
          ),
          // ===== Se crea un contenedor donde tendra un color transparente y que este centrado incluyendo el texto =====//
          Center(
            child: Container(
              color: const Color.fromRGBO(0, 0, 0, 0.5),
              width: 500,
              height: 100,
              child: const Center(
                child: Text(
                  'Eden Pineda',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
