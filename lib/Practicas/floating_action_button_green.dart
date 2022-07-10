import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  State<FloatingActionButtonGreen> createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool _pressed = false;

  void onPressedFav() {
    setState(() {
      _pressed = !this._pressed;
    });
    // ignore: deprecated_member_use
    Scaffold.of(context).showSnackBar(SnackBar(
        content: this._pressed
            ? const Text("Agregaste a tus Favoritos")
            : const Text("Quitaste de tus Favoritos")));
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF11DA53),
      mini: true, //el icono es pequeño
      tooltip: "Fav", //Interecación al pasar el mouse
      onPressed: onPressedFav,
      child: Icon(
        this._pressed ? Icons.favorite : Icons.favorite_border,
      ),
    );
  }
}
