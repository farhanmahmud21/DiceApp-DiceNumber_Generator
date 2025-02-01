import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text('Dice App'),
      ),
      body: DiceApp(),
    ),

  ));
}

class DiceApp extends StatefulWidget {
  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDice = 1;
  int rightDice = 1;
  changeDie() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset(
                'images/dice$leftDice.png',
              ),
              onPressed: changeDie,
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDice.png'),
              onPressed: changeDie,
            ),
          ),
        ],
      ),
    );
  }
}
