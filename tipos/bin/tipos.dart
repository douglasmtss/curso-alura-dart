void main(List<String> arguments) {
  // Variáveis primitivas
  int numeroInteiro = 10;
  double numeroDecimal = 3.14;
  String texto = "Este é um texto.";
  bool isAtivo = true;

  // Variáveis compostas
  List<String> nomes = ["Ana", "João", "Maria"];
  Map<String, String> agenda = {"Ana": "1234-5678", "João": "9876-5432"};
  Set<int> numerosUnicos = {1, 2, 3, 4, 3}; // O número 3 só aparece uma vez

  // Acessando valores
  print("Número inteiro: $numeroInteiro");
  print("Número decimal: $numeroDecimal");
  print("Texto: $texto");
  print("Ativo: $isAtivo");

  print("Primeiro nome da lista: ${nomes[0]}");
  print("Telefone da Ana: ${agenda['Ana']}");
  print("Números únicos no conjunto: $numerosUnicos");
}
