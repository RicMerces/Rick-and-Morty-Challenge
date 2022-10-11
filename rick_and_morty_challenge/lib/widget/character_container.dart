import 'package:flutter/material.dart';
import 'package:rick_and_morty_challenge/models/dto/character_dto.dart';

class CharacterContainer extends StatelessWidget {
  const CharacterContainer({
    Key? key,
    required this.character,
  }) : super(key: key);

  final Character character;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff1F222A),
        borderRadius: BorderRadius.circular(60),
      ),
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(30),
      height: 300,
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 90,
            backgroundImage: NetworkImage(character.image.toString()),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            character.name.toString(),
            style: const TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w900),
          ),
          Text(
            character.species.toString(),
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
