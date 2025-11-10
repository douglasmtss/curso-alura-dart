import 'package:http/http.dart';

void main() {
  fetchRecipes();
}

void fetchRecipes() {
  String url =
      "https://gist.githubusercontent.com/douglasmtss/6c99b0483116bc74cd1b56bf28dd0a56/raw/7ee096b16cfea24b8685548b7594e40dc86f7cd9/recipes.json";

  Uri uri = Uri.parse(url);

  Future<Response> futureResponse = get(uri);

  futureResponse.then((Response response) {
    print(response.body);
  });
}
