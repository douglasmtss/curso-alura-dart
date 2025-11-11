import 'dart:async';

import 'package:http/http.dart';
import 'dart:convert';
import 'package:dart_assincronismo/api_key.dart';

StreamController<String> streamController = StreamController<String>();

void main() {
  StreamSubscription streamSubscription = streamController.stream.listen((
    String info,
  ) {
    print(info);
  });

  requestData();
  requestDataAsync();
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

  futureResponse.then((Response response) {
    streamController.add(
      '${DateTime.now()} | Requisição de leitura (usando then).',
    );
  });
}

Future<List<dynamic>> requestDataAsync() async {
  String url =
      'https://gist.githubusercontent.com/douglasmtss/11ca2d618d743b3cc6899bef6a1cfa2d/raw/5fb4258e0a73afe8ca9227dd3f879fe0c2f1fd0f/accounts.json';

  Uri uri = Uri.parse(url);

  Response response = await get(uri);
  streamController.add('${DateTime.now()} | Requisição de leitura');

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

  if (response.statusCode.toString()[0] == '2') {
    streamController.add(
      '${DateTime.now()} | Requisição bem sucedida. (${mapAccount['name']})',
    );
  } else {
    streamController.add(
      '${DateTime.now()} | Requisição falhou. (${mapAccount['name']})',
    );
  }
}
