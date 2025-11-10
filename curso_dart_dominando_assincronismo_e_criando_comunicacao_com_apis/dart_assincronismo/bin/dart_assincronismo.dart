import 'package:http/http.dart';

void main() {
  requestData();
}

void requestData() {
  String url =
      'https://gist.githubusercontent.com/douglasmtss/11ca2d618d743b3cc6899bef6a1cfa2d/raw/5fb4258e0a73afe8ca9227dd3f879fe0c2f1fd0f/accounts.json';

  print(get(Uri.parse(url)));
}
