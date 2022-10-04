import 'package:flutter/material.dart';
import 'package:rick_and_morty_challenge/widget/character_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Color(0xffA2CF2A),
        ),
        backgroundColor: const Color(0xff181A20),
        title: const Text(
          'Personagens',
          style: TextStyle(
            color: Color(0xffA2CF2A),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => const CharacterContainer(),
      ),
    );
  }
}
