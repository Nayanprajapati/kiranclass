
import 'package:batch_32b/screen/ArithmeticScreen.dart';
import 'package:batch_32b/screen/hello_world_screen.dart';
import 'package:batch_32b/screen/simple_intrest.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SimpleInterestScreen(),
    );
  }
}
