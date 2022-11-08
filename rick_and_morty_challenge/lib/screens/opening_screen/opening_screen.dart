import 'package:flutter/material.dart';
import 'package:rick_and_morty_challenge/app/core/assets/colorsasset.dart';
import 'package:rick_and_morty_challenge/app/core/assets/pngassets.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsAsset.principalDarkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Image.asset(PngAssets.pickleRick),
                Image.asset(PngAssets.textLogo),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  onPressed: () {},
                  child: Container(
                    width: 250,
                    height: 65,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      gradient: const LinearGradient(
                        colors: [
                          ColorsAsset.principalLemonGreen,
                          ColorsAsset.secondaryGreen,
                        ],
                      ),
                    ),
                    child: const Text(
                      'Start',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
