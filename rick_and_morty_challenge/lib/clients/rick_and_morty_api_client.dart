import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_challenge/models/dto/character_dto.dart';
import 'package:rick_and_morty_challenge/models/dto/character_list_dto.dart';

class CharacterListRequestFailure implements Exception {}

class CharacterRequestFailure implements Exception {}

class RickAndMortyApiClient {
  static const _baseUrl = 'rickandmortyapi.com';
  static const _basePath = 'api/character';

  const RickAndMortyApiClient(this._httpClient);
  final http.Client _httpClient;

  Future<CharacterListDto> getCharacterList() async {
    // {required int offset}
    // {'offset': offset.toString()}

    final characterListUri = Uri.https(
      _baseUrl,
      _basePath,
    );
    final characterListResponse = await _httpClient.get(characterListUri);

    if (characterListResponse.statusCode == 200 &&
        characterListResponse.body.isNotEmpty) {
      return CharacterListDto.fromJson(jsonDecode(characterListResponse.body));
    }
    throw CharacterListRequestFailure();
  }

  Future<CharacterDto> getCharacter({required int numero}) async {
    // {'offset': offset.toString()}

    final characterUri = Uri.https(_baseUrl, '$_basePath/$numero');
    final characterResponse = await _httpClient.get(characterUri);

    if (characterResponse.statusCode == 200 &&
        characterResponse.body.isNotEmpty) {
      return CharacterDto.fromJson(jsonDecode(characterResponse.body));
    }
    throw CharacterRequestFailure();
  }
}
