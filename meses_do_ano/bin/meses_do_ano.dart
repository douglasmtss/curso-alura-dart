import 'dart:io';

void main() {
  int numero = 1;

  print('Digite um número de 1 a 12');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      numero = int.parse(entrada);
    }
  }

  switch (numero) {
    case 1:
      print('janeiro');
      break;
    case 2:
      print('fevereiro');
      break;
    case 3:
      print('março');
      break;
    case 4:
      print('abril');
      break;
    case 5:
      print('maio');
      break;
    case 6:
      print('junho');
      break;
    case 7:
      print('julho');
      break;
    case 8:
      print('agosto');
      break;
    case 9:
      print('setembro');
      break;
    case 10:
      print('outrubro');
      break;
    case 11:
      print('novembro');
      break;
    case 12:
      print('dezembro');
      break;
    default:
  }
}
