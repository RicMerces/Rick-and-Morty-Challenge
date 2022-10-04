import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff181A20),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/image1.png'),
          ),
          const SizedBox(
            height: 200,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffA2CF2A),
              ),
              child: const Text(
                'Iniciar',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
