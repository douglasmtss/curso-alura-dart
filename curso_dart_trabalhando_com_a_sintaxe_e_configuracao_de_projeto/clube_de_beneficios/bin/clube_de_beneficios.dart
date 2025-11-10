import 'dart:io';

void main() {
  double pontosIniciais = 100;
  double pontosRetirados;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");

  pontosRetirados = double.parse(stdin.readLineSync()!);

  double pontosRestantes = resgatarPontos(pontosIniciais, pontosRetirados);

  print(
    "Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.",
  );
}

double resgatarPontos(double pontosIniciais, double pontosRetirados) {
  return pontosIniciais - pontosRetirados;
}

// void main() {
//   double pontosIniciais = 100;
//   double pontosRetirados = 0.0;
//   double pontosRestantes = 0.0;

//   print("Você tem $pontosIniciais pontos.");
//   print("Quantos pontos você gostaria de resgatar?");
//   pontosRetirados = double.parse(stdin.readLineSync()!);

//   void resgatarPontos() {
//     pontosRestantes = pontosIniciais - pontosRetirados;
//   }

//   resgatarPontos();

//   print(
//     "Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.",
//   );
// }
