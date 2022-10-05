import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_challenge/bloc/character/bloc/character_bloc.dart';
import 'package:rick_and_morty_challenge/models/enum/character_status.dart';
import 'package:rick_and_morty_challenge/screens/load_page.dart';
import 'package:rick_and_morty_challenge/widget/character_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CharacterBloc, CharacterState>(
      builder: (context, state) {
        switch (state.status) {
          case CharacterStatus.initial:
          case CharacterStatus.loading:
            return const LoadPage();
          case CharacterStatus.success:
            return Scaffold(
              backgroundColor: const Color(0xff181A20),
              appBar: AppBar(
                automaticallyImplyLeading: false,
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
                itemBuilder: (context, index) => CharacterContainer(
                  character: state.characters[index],
                ),
                itemCount: state.characters.length,
              ),
            );

          case CharacterStatus.failure:
            return const Center(
              child: Text('Error :/'),
            );
        }
      },
    );
  }
}
