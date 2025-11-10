void main() {
  List<String> nomes = <String>['Anna', 'João', 'Maria'];

  for (String nome in nomes) {
    print('Nome: $nome');
  }
  for (var i = 0; i < nomes.length; i++) {
    print('Nome: ${nomes[i]}');
  }
}
