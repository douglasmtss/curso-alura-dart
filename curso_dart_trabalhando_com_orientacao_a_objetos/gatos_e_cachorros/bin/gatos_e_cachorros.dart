// Classe base Animal
class Animal {
  void emitirSom() {
    print("O animal emitiu um som.");
  }
}

// Classe Cachorro que herda de Animal
class Cachorro extends Animal {
  @override
  void emitirSom() {
    print("O cachorro late.");
  }

  void abanarRabo() {
    print("O cachorro está abanando o rabo.");
  }
}

// Classe Gato que herda de Animal
class Gato extends Animal {
  @override
  void emitirSom() {
    print("O gato miou.");
  }

  void arranharMoveis() {
    print("O gato está arranhando os móveis.");
  }
}

void main() {
  // Instanciando as classes e chamando os métodos
  Cachorro cachorro = Cachorro();
  Gato gato = Gato();

  cachorro.emitirSom(); // O cachorro late.
  cachorro.abanarRabo(); // O cachorro está abanando o rabo.

  gato.emitirSom(); // O gato miou.
  gato.arranharMoveis(); // O gato está arranhando os móveis.
}
