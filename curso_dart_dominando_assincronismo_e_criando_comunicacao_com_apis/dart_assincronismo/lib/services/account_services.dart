import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';
import 'package:main/api_key.dart';
import 'package:main/models/account.dart';

class AccountServices {
  final StreamController<String> _streamController = StreamController<String>();
  Stream<String> get streamInfos => _streamController.stream;

  String url = 'https://api.github.com/gists/11ca2d618d743b3cc6899bef6a1cfa2d';

  Future<List<Account>> getAll() async {
    Uri uri = Uri.parse(url);

    Response response = await get(uri);
    _streamController.add('${DateTime.now()} | Requisição de leitura');

    Map<String, dynamic> mapResponse = json.decode(response.body);

    List<dynamic> listDynamic = json.decode(
      mapResponse['files']['accounts.json']['content'],
    );

    List<Account> listAccounts = [];

    for (dynamic dyna in listDynamic) {
      Map<String, dynamic> mapAccount = dyna as Map<String, dynamic>;
      Account account = Account.fromMap(mapAccount);
      listAccounts.add(account);
    }

    return listAccounts;
  }

  void addAccount(Account account) async {
    List<Account> listAccounts = await getAll();

    listAccounts.add(account);

    List<Map<String, dynamic>> listContent = [];

    for (Account account in listAccounts) {
      listContent.add(account.toMap());
    }

    String content = json.encode(listContent);

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
      _streamController.add(
        '${DateTime.now()} | Requisição bem sucedida. (${account.name})',
      );
    } else {
      _streamController.add(
        '${DateTime.now()} | Requisição falhou. (${account.name})',
      );
    }
  }
}
