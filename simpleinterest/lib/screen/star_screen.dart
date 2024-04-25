import 'package:flutter/material.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Star'),
        ),
        body: Container(
          color: Colors.amber,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon((Icons.star)),
              Spacer(),
              Icon(Icons.star),
              Icon(Icons.star),
            ],
          ),
        ));
  }
}
