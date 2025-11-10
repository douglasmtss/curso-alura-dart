import 'dart:io';

void main() {
  int idade = 0;
  int idadeMinimaParaDirigir = 18;

  print('Digite sua idade:');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      idade = int.parse(entrada);
    }
  }

  if (idade >= idadeMinimaParaDirigir) {
    print('Você pode dirigir!');
  } else {
    print('Você não possui idade para dirigir.');
  }
}
