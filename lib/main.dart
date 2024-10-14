import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      const XylophoneApp(),
    ); // End Of Main

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int number) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource(
        'audio/note$number.wav',
      ),
    );
  }

  Expanded buildKey({
    required Color color,
    required int number,
  }) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => playSound(number),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                .0,
              ),
            ),
          ),
        ),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(
                color: Colors.blue,
                number: 1,
              ),
              buildKey(
                color: Colors.orange,
                number: 2,
              ),
              buildKey(
                color: Colors.pink,
                number: 3,
              ),
              buildKey(
                color: Colors.purple,
                number: 4,
              ),
              buildKey(
                color: Colors.cyan,
                number: 5,
              ),
              buildKey(
                color: Colors.yellow,
                number: 6,
              ),
              buildKey(
                color: Colors.green,
                number: 7,
              ),
            ], // End Of Children
          ),
        ),
      ),
    );
  } // End Of Build
} // End Of State
