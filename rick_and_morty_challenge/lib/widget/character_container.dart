import 'package:flutter/material.dart';

class CharacterContainer extends StatelessWidget {
  const CharacterContainer({Key? key}) : super(key: key);

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
        children: const [
          CircleAvatar(
            radius: 90,
            backgroundImage: NetworkImage(
                'https://rickandmortyapi.com/api/character/avatar/1.jpeg'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Rick Sanchez',
            style: TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.w900),
          ),
          Text(
            'Human',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
