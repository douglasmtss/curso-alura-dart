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

// void main() {
//   List<String> categorias = ['eletronicos', 'alimentos', 'vestuario', 'livros'];
//   String? categoria;

//   categoria = validaCategoria(categoria, categorias);

//   print('Categoria válida: $categoria');
// }

// String? validaCategoria(String? categoria, List<String> categorias) {
//   print(
//     'Digite a categoria do produto (eletronicos, alimentos, vestuario, livros):',
//   );
//   categoria = stdin.readLineSync();
//   if (categorias.contains(categoria)) {
//     return categoria;
//   } else {
//     print('Categoria inválida. Tente novamente.');
//     return validaCategoria(categoria, categorias);
//   }
// }
