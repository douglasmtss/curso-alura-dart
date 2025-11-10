import 'dart:io';

void main() {
  print('Digite um número:');
  int numero = int.parse(stdin.readLineSync()!);
  int dobro = numero * 2;
  print('O dobro de $numero é $dobro.');
}
