import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceIndex = 1;
  int secondDiceIndex = 1;
  void changeDiceIndex() {
    setState(() {
      firstDiceIndex = Random().nextInt(6) + 1;
      secondDiceIndex = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceIndex();
              },
              child: Image.asset("images/dice$firstDiceIndex.png"),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceIndex();
              },
              child: Image.asset("images/dice$secondDiceIndex.png"),
            ),
          ),
        ],
      ),
    );
  }
}
