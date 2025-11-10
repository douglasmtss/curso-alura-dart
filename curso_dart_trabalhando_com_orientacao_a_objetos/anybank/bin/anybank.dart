void main() {
  Conta contaMatheus = Conta('Matheus', 1000);
  Conta contaMaria = Conta('Maria', 2000);

  List<Conta> contas = <Conta>[contaMatheus, contaMaria];

  for (Conta conta in contas) {
    print(conta.titular);
    print(conta.saldo);
  }

  contaMaria.saldo = 5000;

  print(contaMaria.saldo);
}

class Conta {
  String titular;
  double saldo;

  Conta(this.titular, this.saldo);
}
