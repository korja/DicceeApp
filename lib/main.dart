import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DicePage());
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  void changeDiceFace() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice${leftDice}.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice${rightDice}.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
