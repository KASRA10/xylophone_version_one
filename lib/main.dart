import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      const XylophoneApp(),
    ); // End Of Main

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: ElevatedButton(
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(
                  AssetSource(
                    'audio/note1.wav',
                  ),
                );
              },
              child: const Text(
                'Click Me',
              ),
            ),
          ),
        ),
      ),
    );
  } // End Of Build
} // End Of State
