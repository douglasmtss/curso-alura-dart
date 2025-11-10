import 'dart:io';

void main() {
  double valorDeCadaCupom = 50.0;

  print('Digite o valor gasto:');
  double valorGasto = double.parse(stdin.readLineSync()!);

  int quantidadeDeCupons = (valorGasto / valorDeCadaCupom).floor();

  print('Você ganhou $quantidadeDeCupons cupons.');
}
