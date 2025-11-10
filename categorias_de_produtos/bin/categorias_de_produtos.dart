import 'dart:io';

void main() {
  List<String> categorias = <String>[
    'eletronicos',
    'alimentos',
    'vestuario',
    'livros',
  ];

  void getCategorias() {
    print('Digite a categoria do produto (${categorias.join(', ')})');
    String? categoria = stdin.readLineSync();

    if (categoria != null) {
      if (categorias.contains(categoria.toLowerCase())) {
        print('Categoria válida: $categoria');
      } else {
        print('Categoria inválida');
        getCategorias();
      }
    }
  }

  getCategorias();
}
