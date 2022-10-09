import 'package:rick_and_morty_challenge/models/domain/character_domain.dart';
import 'package:rick_and_morty_challenge/models/enum/character_status.dart';
import 'package:bloc/bloc.dart';
import 'package:rick_and_morty_challenge/repositories/character_repositoy.dart';

part 'character_event.dart';
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

  void _onCharacterLoaded(
    CharacterLoaded event,
    Emitter<CharacterState> emit,
  ) async {
    emit(state.copyWith(status: CharacterStatus.loading));
    try {
      final characters = await _characterRepository.getCharacters(page: 1);
      emit(state.copyWith(
          status: CharacterStatus.success, character: characters));
    } on Exception {
      emit(state.copyWith(status: CharacterStatus.failure));
    }
  }
}
