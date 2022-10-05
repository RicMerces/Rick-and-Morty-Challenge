import 'package:rick_and_morty_challenge/clients/rick_and_morty_api_client.dart';
import 'package:rick_and_morty_challenge/models/domain/character_domain.dart';

class CharacterRepository {
  const CharacterRepository(this._rmApiClient);

  final RickAndMortyApiClient _rmApiClient;

  Future<List<Character>> getCharacters() async {
    final CharacterListDto = await _rmApiClient.getCharacterList();
    final characters = <Character>[];
    for (final characterListResult in CharacterListDto.results!) {
      final characterDto = await _rmApiClient.getCharacter(
        numero: int.parse(
          characterListResult.id.toString(),
        ),
      );

      characters.add(
        Character(
          id: characterDto.id,
          name: characterDto.name,
          url: characterDto.url,
          gender: characterDto.gender,
          image: characterDto.image,
          species: characterDto.species,
        ),
      );
    }
    return characters;
  }
}
