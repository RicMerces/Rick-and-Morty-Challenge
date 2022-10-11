import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_challenge/models/dto/character_dto.dart';

class CharacterListRequestFailure implements Exception {}

class CharacterRequestFailure implements Exception {}

class RickAndMortyApiClient {
  static const _baseUrl = 'rickandmortyapi.com';
  static const _basePath = 'api/character';

  const RickAndMortyApiClient(this._httpClient);
  final http.Client _httpClient;

  Future<ResultDto> getCharacterList({required int offset}) async {
    final characterListUri = Uri.https(
      _baseUrl,
      _basePath,
      {'page': '/?page=$offset'},
    );
    final characterListResponse = await _httpClient.get(characterListUri);

    if (characterListResponse.statusCode == 200 &&
        characterListResponse.body.isNotEmpty) {
      return ResultDto.fromJson(jsonDecode(characterListResponse.body));
    }
    throw CharacterListRequestFailure();
  }

  Future<Character> getCharacter({required int numero}) async {
    final characterUri = Uri.https(_baseUrl, '$_basePath/$numero');
    final characterResponse = await _httpClient.get(characterUri);

    if (characterResponse.statusCode == 200 &&
        characterResponse.body.isNotEmpty) {
      return Character.fromJson(jsonDecode(characterResponse.body));
    }
    throw CharacterRequestFailure();
  }
}
