class ContaSalario extends Conta {
  String cnpjEmpresa;
  String nomeEmpresa;

  ContaSalario(super.titular, super._saldo, this.cnpjEmpresa, this.nomeEmpresa);

  void depositarSalario(double valor) {
    super._saldo += valor;
    print(
      "O salário da $nomeEmpresa, de CNPJ $cnpjEmpresa no valor de R\$$valor foi depositado!",
    );
  }
}

class Conta {
  String titular;
  double _saldo;

  Conta(this.titular, this._saldo);

  void receber(double valor) {
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor) {
    if (_saldo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }
  }

  void imprimeSaldo() {
    print('O saldo atual de $titular, é R\$$_saldo');
  }
}

class ContaCorrente extends Conta {
  double emprestimo = 300;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }
  }
}

class ContaPoupanca extends Conta {
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }
}

void main() {
  ContaSalario contaSalarioCatarina = ContaSalario(
    "Catarina",
    5000,
    "123456789",
    "AnyBank",
  );
  contaSalarioCatarina.depositarSalario(1000);
  contaSalarioCatarina.imprimeSaldo();
}
