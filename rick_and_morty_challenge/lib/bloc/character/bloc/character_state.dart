part of 'character_bloc.dart';

class CharacterState {
  const CharacterState({
    required this.status,
    required this.characters,
  });

  final CharacterStatus status;
  final List<Character> characters;

  CharacterState copyWith({
    CharacterStatus? status,
    List<Character>? character,
  }) {
    return CharacterState(
      status: status ?? this.status,
      characters: character ?? characters,
    );
  }
}
