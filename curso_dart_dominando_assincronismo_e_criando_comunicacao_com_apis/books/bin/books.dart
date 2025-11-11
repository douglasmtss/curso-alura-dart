import 'package:http/http.dart';
import 'dart:convert';

void main() {
  fetchBooks();
}

void fetchBooks() async {
  String url =
      'https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/books.json';

  Uri uri = Uri.parse(url);

  Response response = await get(uri);

  List<dynamic> books = json.decode(response.body);

  Iterable<dynamic> booksOf = books.where(
    (book) => book['author'].toString().toLowerCase() == 'machado de assis',
  );

  for (var bookOf in booksOf) {
    print(bookOf['title']);
  }
}
