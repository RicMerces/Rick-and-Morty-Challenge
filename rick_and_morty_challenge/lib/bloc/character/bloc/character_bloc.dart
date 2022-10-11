import 'package:rick_and_morty_challenge/bloc/character/bloc/character_event.dart';
import 'package:rick_and_morty_challenge/models/dto/character_dto.dart';
import 'package:rick_and_morty_challenge/models/enum/character_status.dart';
import 'package:bloc/bloc.dart';
import 'package:rick_and_morty_challenge/repositories/character_repositoy.dart';

// part 'character_event.dart';
part 'character_state.dart';

class CharacterBloc extends Bloc<CharacterEvent, CharacterState> {
  CharacterBloc(this._characterRepository)
      : super(const CharacterState(
          status: CharacterStatus.initial,
          characters: [],
        )) {
    on<CharacterLoaded>(
      (_onCharacterLoaded),
    );
  }

  final CharacterRepository _characterRepository;

  List<ResultDto> listCharacters = [];
  int page = 1;

  void _onCharacterLoaded(
    CharacterEvent event,
    Emitter<CharacterState> emit,
  ) async {
    emit(state.copyWith(status: CharacterStatus.loading));

    try {
      ResultDto characters =
          await _characterRepository.getCharacters(page: page);
      listCharacters.add(characters);
      emit(
        state.copyWith(
            status: CharacterStatus.success, character: characters.character),
      );

      page++;
      if (event is AddCharacter) {}
    } on Exception {
      emit(state.copyWith(status: CharacterStatus.failure));
    }
  }
}
