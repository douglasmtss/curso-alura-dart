void main() {
  // Usando if-else
  int diaDaSemana = 3;

  if (diaDaSemana == 1) {
    print('Segunda-feira');
  } else if (diaDaSemana == 2) {
    print('Terça-feira');
  } else if (diaDaSemana == 3) {
    print('Quarta-feira');
  } else if (diaDaSemana == 4) {
    print('Quinta-feira');
  } else if (diaDaSemana == 5) {
    print('Sexta-feira');
  } else if (diaDaSemana == 6) {
    print('Sábado');
  } else if (diaDaSemana == 7) {
    print('Domingo');
  } else {
    print('Dia inválido');
  }

  // Usando switch-case
  switch (diaDaSemana) {
    case 1:
      print('Segunda-feira');
      break;
    case 2:
      print('Terça-feira');
      break;
    case 3:
      print('Quarta-feira');
      break;
    case 4:
      print('Quinta-feira');
      break;
    case 5:
      print('Sexta-feira');
      break;
    case 6:
      print('Sábado');
      break;
    case 7:
      print('Domingo');
      break;
    default:
      print('Dia inválido');
  }
}
