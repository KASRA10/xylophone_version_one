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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () => playSound(1),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[100],
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
              ElevatedButton(
                onPressed: () => playSound(2),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange[400],
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
              ElevatedButton(
                onPressed: () => playSound(3),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[300],
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
              ElevatedButton(
                onPressed: () => playSound(4),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green[600],
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
              ElevatedButton(
                onPressed: () => playSound(5),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple[300],
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
              ElevatedButton(
                onPressed: () => playSound(6),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow,
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
              ElevatedButton(
                onPressed: () => playSound(7),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.cyan[800],
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
            ], // End Of Children
          ),
        ),
      ),
    );
  } // End Of Build
} // End Of State
