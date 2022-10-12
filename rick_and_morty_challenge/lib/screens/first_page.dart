import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_challenge/bloc/character/bloc/character_bloc.dart';
import 'package:rick_and_morty_challenge/repositories/character_repositoy.dart';
import 'package:rick_and_morty_challenge/screens/home_page.dart';

import '../bloc/character/bloc/character_event.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
    required this.characterRepository,
  }) : super(key: key);

  final CharacterRepository characterRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: characterRepository,
      child: Scaffold(
        backgroundColor: const Color(0xff181A20),
        body: Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Image.asset('assets/image1.png'),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: const Color(0xffA2CF2A),
                  minimumSize: const Size(250, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => CharacterBloc(characterRepository)
                          ..add(CharacterLoaded()),
                        child: const HomePage(),
                      ),
                    ),
                  );
                },
                child: const Text(
                  'Iniciar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
