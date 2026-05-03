import 'dart:io';

void main() {
  print('ingrese un número:');

double? a = double.tryParse(stdin.readLineSync()!);
 print('ingrese un  segundo número:');

double? b = double.tryParse(stdin.readLineSync()!);

const indeterminado = 'indeterminado';
if(a !=null && b != null){
   print("la suma es: ${a + b}, resta es: ${a - b}, multiplicación es: ${a * b}, división es: ${(b != 0 ? a / b : indeterminado)}");
    } else {
      print('Por favor, ingrese números válidos.');
}
}