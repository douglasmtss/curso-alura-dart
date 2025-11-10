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

// void main() {
//   List<String> operacoes = [
//     'deposito',
//     'retirada',
//     'transferencia',
//     'pagamento',
//   ];
//   String? operacao;

//   operacao = validaOperacao(operacao, operacoes);

//   double? valor;

//   valor = validaValor(valor);

//   print('Operação escolhida: $operacao, Valor: $valor');
// }

// double? validaValor(double? valor) {
//   print('Digite o valor da operação:');
//   valor = double.tryParse(stdin.readLineSync()!);

//   if (valor == null || valor <= 0) {
//     print('Valor inválido. Tente novamente.');
//     return validaValor(valor);
//   } else {
//     return valor;
//   }
// }

// String? validaOperacao(String? operacao, List<String> operacoes) {
//   print('Digite uma operação (deposito, retirada, transferencia, pagamento):');
//   operacao = stdin.readLineSync();

//   if (operacoes.contains(operacao)) {
//     return operacao;
//   } else {
//     print('Operação inválida. Tente novamente.');
//     return validaOperacao(operacao, operacoes);
//   }
// }
