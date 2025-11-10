import 'dart:io';

void main() {
  int idadeMinimaBrasil = 18;
  int idadeMinimaEua = 16;
  int idadeMinimaJapao = 20;

  int idade = 0;
  String pais = '';

  print('Digite sua idade');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      idade = int.parse(entrada);
    }
  }

  print('Digite o país (brasil, eua ou japao)');
  entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      pais = entrada;
    }
  }

  switch (pais) {
    case 'brasil':
      if (idade >= idadeMinimaBrasil) {
        print('Você pode dirigir.');
      } else {
        print('Você não pode dirigir.');
      }
      break;
    case 'eua':
      if (idade >= idadeMinimaEua) {
        print('Você pode dirigir.');
      } else {
        print('Você não pode dirigir.');
      }
      break;
    case 'japao':
      if (idade >= idadeMinimaJapao) {
        print('Você pode dirigir.');
      } else {
        print('Você não pode dirigir.');
      }
      break;
    default:
  }
}
