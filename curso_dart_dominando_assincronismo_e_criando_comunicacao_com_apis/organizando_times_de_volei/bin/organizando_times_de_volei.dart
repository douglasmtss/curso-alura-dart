import "package:http/http.dart";
import 'dart:convert';

void main() {
  fetchPlayerAndMakeTeams();
}

void fetchPlayerAndMakeTeams() async {
  String url =
      "https://raw.githubusercontent.com/alura-cursos/dart_assincronismo_api/aula05/.json/players.json";
  Response response = await get(Uri.parse(url));

  Map<String, dynamic> mapPlayers = json.decode(response.body);

  int playersPerTeam = mapPlayers["rules"]["playersPerTeam"];

  List<dynamic> listPlayers = mapPlayers["players"];
  listPlayers.sort(
    (a, b) => (b["roundsWaiting"] as int).compareTo(a["roundsWaiting"]),
  );

  List<dynamic> listFirstTeam = listPlayers.sublist(0, playersPerTeam);
  List<dynamic> listSecondTeam = listPlayers.sublist(
    playersPerTeam,
    playersPerTeam * 2,
  );

  print("**Time A**");
  for (Map<String, dynamic> person in listFirstTeam) {
    print(person["name"]);
  }

  print("\n**Time B**");
  for (Map<String, dynamic> person in listSecondTeam) {
    print(person["name"]);
  }
}
