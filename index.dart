import 'dart:io';

void main() {
  print('Hello, bienvenido al calculador de años');
  print("escribetu nombre");
  String? nameInput = stdin.readLineSync();
  print('Un gusto conocerte $nameInput');
  print('escribe tu año de nacimiento en formato dd/mm/yyyy: ');
  String? birthDateInput = stdin.readLineSync();
  DateTime? dateConverted = convertToDateTime(birthDateInput!);
  if (dateConverted == null) {
    print('La fecha ingresada no es válida: $birthDateInput');
    return;
  }

  var person = Person(
    name: nameInput,
    birthDate: dateConverted,
    age: DateTime.now().year - dateConverted.year,
  );

print('tu nombre es: ${person.name}');
print('Tu fecha de nacimiento es: ${person.birthDate}');
print('Tu edad es: ${person.age} años');
}

DateTime? convertToDateTime(String date) {
  List<String> parts = date.split('/');
  if (parts.length != 3) return null;
  return DateTime.tryParse('${parts[2]}-${parts[1]}-${parts[0]}');
}

class Person {
 final String? name;
  final DateTime? birthDate;
  final int? age;
  Person({this.name, this.birthDate, this.age});
}