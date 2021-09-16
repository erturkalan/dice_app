import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        setState(() {
          leftDiceNumber = Random().nextInt(6) + 1;
          rightDiceNumber = Random().nextInt(6) + 1;
        });
      },
      child: SizedBox.fromSize(
        size: Size(double.infinity, double.infinity),
        child: Row(
          children: [
            Expanded(
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
            SizedBox(
              width: 16.0,
            ),
            Expanded(
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ],
        ),
      ),
    );
  }
}
