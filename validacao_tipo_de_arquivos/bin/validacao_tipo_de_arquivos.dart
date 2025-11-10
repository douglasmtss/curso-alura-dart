import 'dart:io';

void main() {
  List<String> categorias = <String>['pdf', 'jpg', 'png', 'docx'];

  void validateTipoArquivo() {
    print('Digite o tipo do arquivo (${categorias.join(', ')})');
    String? categoria = stdin.readLineSync();

    if (categoria != null) {
      if (categorias.contains(categoria.toLowerCase())) {
        print('Tipo de arquivo válido: $categoria');
      } else {
        print('Tipo de arquivo inválido');
        validateTipoArquivo();
      }
    }
  }

  validateTipoArquivo();
}
