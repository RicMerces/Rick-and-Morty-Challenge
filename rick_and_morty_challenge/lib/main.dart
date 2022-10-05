import 'package:flutter/material.dart';
import 'package:rick_and_morty_challenge/clients/rick_and_morty_api_client.dart';
import 'package:rick_and_morty_challenge/repositories/character_repositoy.dart';
import 'package:rick_and_morty_challenge/screens/first_page.dart';
import 'package:http/http.dart' as http;

void main() async {
  final rickAndMortyApiClient = RickAndMortyApiClient(http.Client());
  final characterRepository = CharacterRepository(rickAndMortyApiClient);

  runApp(
    MaterialApp(
      home: MyApp(characterRepository: characterRepository),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.characterRepository,
  }) : super(key: key);
  final CharacterRepository characterRepository;
  @override
  Widget build(BuildContext context) {
    return FirstPage(
      characterRepository: characterRepository,
    );
  }
}
