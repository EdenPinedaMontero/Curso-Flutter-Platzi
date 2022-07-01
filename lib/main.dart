import 'package:flutter/material.dart';
import 'package:platzi_trips_app/Practicas/hola_mundo.dart';
import 'package:platzi_trips_app/Retos/reto_dos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RetoDos(),
    );
  }
}
