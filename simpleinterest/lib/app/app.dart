import 'package:flutter/material.dart';
import 'package:simpleinterest/screen/list_tile_screen.dart';
import 'package:simpleinterest/screen/simple_interest_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SimpleInterestScreen());
  }
}
