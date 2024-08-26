import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class KocokDadu extends StatefulWidget {
  const KocokDadu({super.key});

  @override
  State<KocokDadu> createState() {
    return _KocokDaduState();
  }
}

class _KocokDaduState extends State<KocokDadu> {
  var daduSekarang = 1;
  void rollDice() {
    setState(
      () {
        daduSekarang = randomizer.nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$daduSekarang.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(top: 10),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 18,
            ),
          ),
          child: const Text('Kocok Dadu'),
        ),
      ],
    );
  }
}
