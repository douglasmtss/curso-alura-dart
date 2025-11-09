import 'dart:io';

void main() {
  print('Digite a idade da primeira pessoa:');
  int idadeUm = int.parse(stdin.readLineSync()!);

  print('Digite a idade da segunda pessoa:');
  int idadeDois = int.parse(stdin.readLineSync()!);

  print('Digite a idade da terceira pessoa:');
  int idadeTres = int.parse(stdin.readLineSync()!);

  double media = (idadeUm + idadeDois + idadeTres) / 3;

  print('A média das idades é $media.');
}
