import 'package:flutter/material.dart';

class LoadPage extends StatelessWidget {
  const LoadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          width: 150,
          height: 150,
          child: CircularProgressIndicator(
            color: Color(0xffA2CF2A),
            strokeWidth: 15,
          ),
        ),
      ),
      backgroundColor: Color(0xff181A20),
    );
  }
}
