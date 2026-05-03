import 'dart:io';
import 'dart:math';

void main() {
  var circulo = Circulo();
  circulo.radio = 20;
  var areaCirculo = circulo.area();
  var perimetroCirculo = circulo.perimetro();
  
  print('Área del círculo: $areaCirculo y el perímetro del círculo: $perimetroCirculo el radio es: ${circulo.add10()}');
  
  int prev = 0, next = 1, sum;
  for (int i = 0; i < 10; i++) {
    print(prev);
    sum = prev + next;
    prev = next;
    next = sum;
  }
  
  try {
    stdout.write('Ingrese un número a dividir: ');
    double n = double.parse(stdin.readLineSync()!);
    stdout.write('Ingrese el divisor: ');
    double divisor = double.parse(stdin.readLineSync()!);
    
    if (divisor == 0) {
      throw Exception('No se puede dividir por cero');
    }
    
    print('El resultado de $n dividido por $divisor es: ${n / divisor}');
  } catch (e) {
    if (e.toString().contains('No se puede dividir por cero')) {
      print('Error: No se puede dividir por cero.');
    } else {
      print('Error: Entrada no válida. Por favor, ingrese un número.');
    }
  }
}

abstract class IFigura {
  double area();
  double perimetro();
}

abstract class IextraCalculations {
  double add10();
}

class Circulo implements IFigura, IextraCalculations {
  double _radio = 0;
  
  double get radio => _radio;
  set radio(double value) => _radio = value;
  
  @override
  double area() {
    return pi * pow(_radio, 2);
  }
  
  @override
  double perimetro() {
    return 2 * pi * _radio;
  }
  
  @override
  double add10() {
    return _radio + 10;
  }
}