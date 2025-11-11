import 'package:http/http.dart';
import 'dart:convert';

void main() {
  fetchBooksByAuthor('machado de assis');
}

void fetchBooksByAuthor(String author) async {
  String url =
      'https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json';

  Uri uri = Uri.parse(url);

  Response response = await get(uri);

  List<dynamic> books = json.decode(response.body);

  List<dynamic> booksOf = books
      .where((book) => book['author'].toString().toLowerCase() == author)
      .toList();

  for (dynamic bookOf in booksOf) {
    print('Título: ${bookOf['title']}');
  }
}
