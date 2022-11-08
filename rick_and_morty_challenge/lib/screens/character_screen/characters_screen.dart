import 'package:flutter/material.dart';
import 'package:rick_and_morty_challenge/app/core/assets/colorsasset.dart';
import 'package:rick_and_morty_challenge/app/core/assets/pngassets.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsAsset.principalDarkColor,
      body: Center(
        child: Column(
          children: [
            Image.asset(PngAssets.pickleRick),
            Image.asset(PngAssets.textLogo),
          ],
        ),
      ),
    );
  }
}
