import 'dart:io';

void main() {
  Cuadrado cuadr=Cuadrado();
  cuadr.base=20;
  cuadr.altura=40;
  print('El área del rectángulo es: ${cuadr.area}');
  print('El perímetro del rectángulo es: ${cuadr.perimetro}');
  print('el lado del cuadrado es: ${cuadr.lado}');
}

class Rectangulo {
  double? base;
  double? altura;

  double get area => base! * altura!;
  double get perimetro => 2 * (base! + altura!);
}

class Cuadrado extends Rectangulo {
  set lado(double value) {
    base = value;
    altura = value;
  }

  double get lado => base!;
}