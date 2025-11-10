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
