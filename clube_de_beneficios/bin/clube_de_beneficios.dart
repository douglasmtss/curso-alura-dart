import 'dart:io';

void main() {
  double pontosIniciais = 100;
  double pontosRetirados = 0.0;
  double pontosRestantes = 0.0;

  print("Você tem $pontosIniciais pontos.");
  print("Quantos pontos você gostaria de resgatar?");
  pontosRetirados = double.parse(stdin.readLineSync()!);

  void resgatarPontos() {
    pontosRestantes = pontosIniciais - pontosRetirados;
  }

  resgatarPontos();

  print(
    "Você resgatou $pontosRetirados pontos. Pontos restantes: $pontosRestantes.",
  );
}
