import 'dart:io';

void main() {
  List<String> metodosDePagamento = <String>[
    'cartao',
    'boleto',
    'paypal',
    'pix',
  ];

  void validaMetodoDePagamento() {
    print('Digite o método de pagamento (${metodosDePagamento.join(', ')}):');
    String? entrada = stdin.readLineSync();

    if (entrada != null) {
      String metodoSelecionado = entrada;

      if (metodosDePagamento.contains(metodoSelecionado.toLowerCase())) {
        print('Metodo selecionado é válido!');
      } else {
        print('Metodo selecionado é inválido! Tente novamente!');
        validaMetodoDePagamento();
      }
    }
  }

  validaMetodoDePagamento();
}

// void main() {
//   List<String> pagamentos = ['pix', 'boleto', 'cartao', 'paypal'];
//   String? pagamento;

//   pagamento = validaPagamento(pagamento, pagamentos);

//   print('Pagamento válido: $pagamento');
// }

// String? validaPagamento(String? pagamento, List<String> pagamentos) {
//   print('Digite o tipo de pagamento (pix, boleto, cartao, paypal):');
//   pagamento = stdin.readLineSync();
//   if (pagamentos.contains(pagamento)) {
//     return pagamento;
//   } else {
//     print('Pagamento inválido. Tente novamente.');
//     return validaPagamento(pagamento, pagamentos);
//   }
// }
