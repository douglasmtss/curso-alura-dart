import 'dart:io';

void main() {
  print('Digite seu nome:');
  String nome = stdin.readLineSync()!;
  print('Digite sua idade:');
  int idade = int.parse(stdin.readLineSync()!);
  print('Olá $nome, você tem $idade anos!');
}
