import 'package:flutter/material.dart';
import 'dart:math';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MaterialApp(
    home: BallPage(),
  ));
}

class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade700,
      appBar: AppBar(
        title: const Center(
          child: Text('Magic 8 Ball'),
        ),
        backgroundColor: Colors.blue[900],
      ),
      body: const Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballCount = 1;

  void getData() {
    print('I got clicked');
    ballCount = Random().nextInt(4) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              getData();
            });
          },
          child: Text(adjectives.last),
        ),
      ),
    );
  }
}
