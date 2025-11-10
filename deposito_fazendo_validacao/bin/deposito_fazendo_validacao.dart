import 'dart:io';

void main() {
  List<String> operacoes = <String>[
    'deposito',
    'retirada',
    'transferencia',
    'pagamento',
  ];

  void executaOperacao() {
    print('Digite uma operação (${operacoes.join(', ')}):');

    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      String operacao = entrada;

      if (operacoes.contains(operacao.toLowerCase())) {
        print('Digite o valor da operação:');
        entrada = stdin.readLineSync();

        if (entrada != null) {
          double valor = double.parse(entrada);
          if (valor >= 0) {
            print('Operação escolhida: $operacao, Valor: R\$ $valor');
          } else {
            print('Valor inválido. Tente novamente.');
            executaOperacao();
          }
        } else {
          print('Valor inválido. Tente novamente.');
          executaOperacao();
        }
      } else {
        print('Operação inválida. Tente novamente.');
        executaOperacao();
      }
    } else {
      print('Operação inválida. Tente novamente.');
      executaOperacao();
    }
  }

  executaOperacao();
}
