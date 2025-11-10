import 'package:anybank/conta.dart';

void main() {
  ContaCorrente contaChris = ContaCorrente('Chris', 4000);
  ContaPoupanca contaDenize = ContaPoupanca('Denize', 4000);

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
