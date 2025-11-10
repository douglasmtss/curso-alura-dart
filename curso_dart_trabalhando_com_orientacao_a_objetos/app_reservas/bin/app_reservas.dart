class Cliente {
  String nome;
  List<String> _reservas;

  Cliente(this.nome, this._reservas);

  void fazerReserva(String quarto) {
    _reservas.add(quarto);
    _mostrarReservas();
  }

  void cancelarReserva(String quarto) {
    if (_reservas.contains(quarto)) {
      _reservas.remove(quarto);
      _mostrarReservas();
    }
  }

  void _mostrarReservas() {
    print(_reservas);
  }
}

void main() {
  Cliente cliente = Cliente('Joaquim', []);
  cliente.fazerReserva('101');
  cliente.fazerReserva('102');
  cliente.fazerReserva('103');
  cliente.cancelarReserva('102');
}
