import 'package:http/http.dart';
import 'dart:convert';
import 'api_key.dart';

void main() {
  // requestData();
  // requestDataAsync();
  sendDataAsync({
    'id': 'NEW001',
    'name': 'Flutter',
    'lastName': 'Dart',
    'balance': 5000,
  });
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

Future<List<dynamic>> requestDataAsync() async {
  String url =
      'https://gist.githubusercontent.com/douglasmtss/11ca2d618d743b3cc6899bef6a1cfa2d/raw/5fb4258e0a73afe8ca9227dd3f879fe0c2f1fd0f/accounts.json';

  Uri uri = Uri.parse(url);

  Response response = await get(uri);

  return json.decode(response.body);
}

void sendDataAsync(Map<String, dynamic> mapAccount) async {
  List<dynamic> listAccounts = await requestDataAsync();

  listAccounts.add(mapAccount);

  String content = json.encode(listAccounts);

  String url = 'https://api.github.com/gists/11ca2d618d743b3cc6899bef6a1cfa2d';

  Uri uri = Uri.parse(url);

  Response response = await post(
    uri,
    headers: {'Authorization': 'Bearer $githubApiKey'},
    body: json.encode({
      'description': 'accounts.json',
      'public': true,
      'files': {
        'accounts.json': {'content': content},
      },
    }),
  );

  print(response.statusCode);
}
