import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rick_and_morty_challenge/screens/home_page.dart';

class LoadPage extends StatefulWidget {
  const LoadPage({Key? key}) : super(key: key);

  @override
  State<LoadPage> createState() => _LoadPageState();
}

class _LoadPageState extends State<LoadPage> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () async {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }

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
