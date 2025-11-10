void main() {
  QuartoSimples quartoSimples = QuartoSimples(3);
  quartoSimples.reservar();
  QuartoMedio quartoMedio = QuartoMedio(5);
  quartoMedio.reservar();
  QuartoLuxo quartoLuxo = QuartoLuxo(7);
  quartoLuxo.reservar();
}

class Quarto {
  String tipo;
  double valorDiaria;
  int diarias;

  Quarto(this.diarias, this.valorDiaria, this.tipo);

  void reservar() {
    print("Reserva realizada para $diarias diarias no quarto $tipo.");
  }
}

class QuartoSimples extends Quarto {
  QuartoSimples(int diarias) : super(diarias, 80, 'Simples');
}

class QuartoMedio extends Quarto {
  QuartoMedio(int diarias) : super(diarias, 250, 'Médio');
}

class QuartoLuxo extends Quarto {
  QuartoLuxo(int diarias) : super(diarias, 1000, 'Luxo');
}
