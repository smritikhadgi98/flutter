import 'package:flutter/material.dart';
import 'package:swapnumbers/screen/swap_numbers_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SwapNumbersScreen()
    );

  }
}