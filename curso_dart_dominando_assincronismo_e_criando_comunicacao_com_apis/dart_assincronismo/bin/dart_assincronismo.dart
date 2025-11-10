import 'package:http/http.dart';
import 'dart:convert';

void main() {
  // requestData();
  requestDataAsync();
}

void requestData() {
  String url =
      'https://gist.githubusercontent.com/douglasmtss/11ca2d618d743b3cc6899bef6a1cfa2d/raw/5fb4258e0a73afe8ca9227dd3f879fe0c2f1fd0f/accounts.json';

  Uri uri = Uri.parse(url);

  Future<Response> futureResponse = get(uri);

  print(futureResponse);

  futureResponse.then((Response response) {
    print(response);
    print(response.body);

    List<dynamic> listAccounts = json.decode(response.body);

    Map<String, dynamic> mapCarla = listAccounts.firstWhere(
      (element) => element['name'].toString().toLowerCase() == 'carla',
    );

    print(mapCarla['balance']);
  });

  print('Última coisa a acontecer na função.');
}

void requestDataAsync() async {
  String url =
      'https://gist.githubusercontent.com/douglasmtss/11ca2d618d743b3cc6899bef6a1cfa2d/raw/5fb4258e0a73afe8ca9227dd3f879fe0c2f1fd0f/accounts.json';

  Uri uri = Uri.parse(url);

  Response response = await get(uri);

  print(json.decode(response.body));

  print('Última coisa a acontecer na função.');
}
