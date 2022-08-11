import 'package:flutter/material.dart';

class BarraGradient extends StatelessWidget {
  //const BarraGradient({Key? key}) : super(key: key);

  String title = "Profile";
  BarraGradient(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 79, 112, 201),
                Color.fromARGB(255, 63, 163, 202),
              ],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(
        title,
        style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      alignment: const Alignment(-0.9, -0.6),
    );
  }
}
