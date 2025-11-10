int fatorial(int n) {
  if (n == 0) {
    return 1; // Caso base: fatorial de 0 é definido como 1
  } else {
    return n *
        fatorial(n - 1); // Chamada recursiva: multiplica n por fatorial(n - 1)
  }
}

void main() {
  int resultado = fatorial(5); // Armazena o resultado do fatorial de 5
  print(resultado); // Exibe o valor do fatorial: 120 (5 * 4 * 3 * 2 * 1)
}
