void main() {
  QuartoSimples quartoSimples = QuartoSimples(3);
  quartoSimples.reservar();
  quartoSimples.calcularValorTotal();
  QuartoMedio quartoMedio = QuartoMedio(5);
  quartoMedio.reservar();
  quartoMedio.servirCafeDaManha();
  quartoMedio.calcularValorTotal();
  QuartoLuxo quartoLuxo = QuartoLuxo(7);
  quartoLuxo.reservar();
  quartoLuxo.servirCafeDaManha();
  quartoLuxo.servicoDeQuarto();
  quartoLuxo.calcularValorTotal();
}

class Quarto {
  String tipo;
  double valorDiaria;
  int diarias;

  Quarto(this.diarias, this.valorDiaria, this.tipo);

  void reservar() {
    print("Reserva realizada para $diarias diarias no quarto $tipo.");
  }

  void calcularValorTotal() {
    print("Total a pagar: R\$${diarias * valorDiaria}");
  }
}

class QuartoSimples extends Quarto {
  QuartoSimples(int diarias) : super(diarias, 80, 'Simples');
}

class QuartoMedio extends Quarto {
  QuartoMedio(int diarias) : super(diarias, 250, 'Médio');

  void servirCafeDaManha() {
    print("Servindo cafe da manha no quarto $tipo.");
  }
}

class QuartoLuxo extends Quarto {
  QuartoLuxo(int diarias) : super(diarias, 1000, 'Luxo');

  void servirCafeDaManha() {
    print("Servindo cafe da manha no quarto $tipo.");
  }

  void servicoDeQuarto() {
    print("Limpando quarto $tipo.");
  }
}
