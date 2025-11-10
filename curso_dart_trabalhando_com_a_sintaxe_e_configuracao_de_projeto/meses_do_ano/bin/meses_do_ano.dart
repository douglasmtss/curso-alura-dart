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

  String obterMes(int numero) {
    switch (numero) {
      case 1:
        return 'janeiro';

      case 2:
        return 'fevereiro';

      case 3:
        return 'março';

      case 4:
        return 'abril';

      case 5:
        return 'maio';

      case 6:
        return 'junho';

      case 7:
        return 'julho';

      case 8:
        return 'agosto';

      case 9:
        return 'setembro';

      case 10:
        return 'outrubro';

      case 11:
        return 'novembro';

      case 12:
        return 'dezembro';

      default:
        return 'Número inválido. Por favor, insira um número de 1 a 12.';
    }
  }

  String mes = obterMes(numero);

  print(mes);
}
