import 'package:rick_and_morty_challenge/models/domain/character_domain.dart';
import 'package:rick_and_morty_challenge/service/rick_and_morty_api_client.dart';

class CharacterRepository {
  const CharacterRepository(this._rmApiClient);

  final RickAndMortyApiClient _rmApiClient;

  Future<List<Character>> getCharacters({required int page}) async {
    final offset = (page - 1) * 20;
    final CharacterListDto =
        await _rmApiClient.getCharacterList(offset: offset);
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
