// ignore_for_file: avoid_print

import 'dart:math';

void main() {
  List<int> ages = [33, 15, 27, 40, 22];

  print("La edad mayor es: ${ages.reduce(max)}");
  print("La edad mayor es: ${ages.reduce(min)}");
  print("La edad promedio es: ${ages.reduce((c, i) => c + i) / ages.length}");
}
