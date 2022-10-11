import 'package:rick_and_morty_challenge/models/dto/character_dto.dart';

abstract class CharacterEvent {}

class CharacterLoaded extends CharacterEvent {}

class AddPagina extends CharacterEvent {
  List<ResultDto> lista;

  AddPagina({required this.lista});
}
