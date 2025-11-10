import 'dart:io';

void main() {
  List<String> notas = <String>[];
  getComando();
  adicionNota(notas);
  adicionNota(notas);
  adicionNota(notas);
  listarNotas(notas);
}

String getComando() {
  print('Digite um comando: 1 - Adicionar nota, 2 - Listar notas, e - Sair');

  List<String> comandos = <String>['1', '2', '3'];

  String? entrada = '';

  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print('Coamando inválido');
    getComando();
  }

  return entrada!;
}

List<String> adicionNota(List<String> notas) {
  print('Escreva uma nota');
  String? nota = '';

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print('Não é possível adicionar uma nota vazia');
    adicionNota(notas);
  }

  notas.add(nota!);

  return notas;
}

void listarNotas(List<String> notas) {
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}
