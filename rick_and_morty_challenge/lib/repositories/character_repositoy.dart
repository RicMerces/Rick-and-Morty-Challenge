import 'package:rick_and_morty_challenge/models/dto/character_dto.dart';
import 'package:rick_and_morty_challenge/service/rick_and_morty_api_client.dart';

class CharacterRepository {
  const CharacterRepository(this._rmApiClient);

  final RickAndMortyApiClient _rmApiClient;

  Future<ResultDto> getCharacters({required int page}) async {
    ResultDto characterListDto =
        await _rmApiClient.getCharacterList(offset: page);

    return characterListDto;
  }
}
