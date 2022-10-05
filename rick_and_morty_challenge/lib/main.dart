import 'package:flutter/material.dart';
import 'package:rick_and_morty_challenge/clients/rick_and_morty_api_client.dart';
import 'package:rick_and_morty_challenge/screens/first_page.dart';
import 'package:http/http.dart' as http;

void main() async {
  final rickAndMortyApiClient = RickAndMortyApiClient(http.Client());

  final characterListDto = await rickAndMortyApiClient.getCharacterList();
  debugPrint(
      characterListDto.results!.map((character) => character.name).join(', '));

  final characterDto = await rickAndMortyApiClient.getCharacter(numero: 1);
  debugPrint(characterDto.name.toString());

  runApp(
    const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FirstPage();
  }
}
