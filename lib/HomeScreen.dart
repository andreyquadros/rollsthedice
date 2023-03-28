import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int valor_dado = 0;

  void jogarDado() {
    setState(() {
      valor_dado = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text('Jogue os dados e tente a sorte'),
            ),
            Container(
                width: 250, child: Image.asset('assets/images/rolls_dice.png')),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: AutoSizeText.rich(
                TextSpan(text: 'O número sorteado foi: ${valor_dado} '),
                style: TextStyle(fontSize: 20),
                minFontSize: 5,
              ),
            ),
            ElevatedButton(onPressed: jogarDado, child: Text('Jogar'))
          ],
        ),
      ),
    );
  }
}
