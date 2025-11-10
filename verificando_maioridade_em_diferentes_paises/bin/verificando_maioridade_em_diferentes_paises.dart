import 'dart:io';

void main() {
  print('Digite sua idade:');
  int idade = int.parse(stdin.readLineSync()!);

  print('Digite o país em que se encontra (Brasil, EUA, Japão):');
  String pais = stdin.readLineSync()!.toLowerCase();

  if ((pais == 'brasil' && idade >= 18) ||
      (pais == 'eua' && idade >= 16) ||
      (pais == 'japão' && idade >= 20)) {
    print('Você pode dirigir um veículo no $pais.');
  } else {
    print('Você não pode dirigir um veículo no $pais.');
  }
}

// void main() {
//   int idadeMinimaBrasil = 18;
//   int idadeMinimaEua = 16;
//   int idadeMinimaJapao = 20;

//   int idade = 0;
//   String pais = '';

//   print('Digite sua idade');
//   String? entrada = stdin.readLineSync();

//   if (entrada != null) {
//     if (entrada.isNotEmpty) {
//       idade = int.parse(entrada);
//     }
//   }

//   print('Digite o país (brasil, eua ou japao)');
//   entrada = stdin.readLineSync();

//   if (entrada != null) {
//     if (entrada.isNotEmpty) {
//       pais = entrada;
//     }
//   }

//   switch (pais) {
//     case 'brasil':
//       if (idade >= idadeMinimaBrasil) {
//         print('Você pode dirigir.');
//       } else {
//         print('Você não pode dirigir.');
//       }
//       break;
//     case 'eua':
//       if (idade >= idadeMinimaEua) {
//         print('Você pode dirigir.');
//       } else {
//         print('Você não pode dirigir.');
//       }
//       break;
//     case 'japao':
//       if (idade >= idadeMinimaJapao) {
//         print('Você pode dirigir.');
//       } else {
//         print('Você não pode dirigir.');
//       }
//       break;
//     default:
//   }
// }
