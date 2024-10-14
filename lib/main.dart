import 'package:flutter/material.dart';

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
          child: Container(),
        ),
      ),
    );
  } // End Of Build
} // End Of State
