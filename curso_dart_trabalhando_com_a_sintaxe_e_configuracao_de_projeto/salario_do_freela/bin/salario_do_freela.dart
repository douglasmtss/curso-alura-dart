import 'dart:io';

void main() {
  double valorHora = 50;

  int horasTrabalhadas = int.parse(stdin.readLineSync()!);

  double salarioBruto = horasTrabalhadas * valorHora;

  double desconto = salarioBruto * 0.05;

  double salarioLiquido = salarioBruto - desconto;

  print('O salário líquido é R\$ $salarioLiquido.');
}

// void main() {
//   int desconto = 5; // 5 %
//   double valorHora = 50;

//   int horasTrabalhadas = int.parse(stdin.readLineSync()!);

//   double salarioBruto = horasTrabalhadas * valorHora;

//   double salarioLiquido = salarioBruto - (salarioBruto * desconto / 100);

//   print('O salário líquido é R\$ $salarioLiquido.');
// }
