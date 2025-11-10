import 'package:anybank/conta.dart';

void main() {
  Conta contaMatheus = Conta('Matheus', 1000);
  Conta contaMaria = Conta('Maria', 2000);

  List<Conta> contas = <Conta>[contaMatheus, contaMaria];

  for (Conta conta in contas) {
    conta.imprimeSaldo();
  }

  contaMaria.receber(3000);
  contaMatheus.receber(500);
  contaMatheus.enviar(200);
}
