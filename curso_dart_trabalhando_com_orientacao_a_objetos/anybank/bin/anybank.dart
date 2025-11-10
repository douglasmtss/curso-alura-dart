import 'package:anybank/conta.dart';

void main() {
  Conta contaMatheus = Conta('Matheus', 1000);
  Conta contaMaria = Conta('Maria', 2000);
  ContaCorrente contaChris = ContaCorrente('Chris', 4000);
  ContaPoupanca contaDenize = ContaPoupanca('Denize', 4000);

  List<Conta> contas = <Conta>[contaMatheus, contaMaria];

  for (Conta conta in contas) {
    conta.imprimeSaldo();
  }

  contaMaria.receber(3000);
  contaMatheus.receber(500);
  contaMatheus.enviar(200);

  contaChris.imprimeSaldo();
  contaChris.receber(100);

  contaDenize.imprimeSaldo();
  contaDenize.enviar(300);

  contaChris.imprimeSaldo();
  contaChris.enviar(100);

  contaDenize.imprimeSaldo();
  contaDenize.receber(300);

  contaChris.imprimeSaldo();
  contaChris.enviar(4300);

  contaDenize.imprimeSaldo();
  contaDenize.enviar(4300);
  contaDenize.calculaRendimento();
  contaDenize.imprimeSaldo();
}
