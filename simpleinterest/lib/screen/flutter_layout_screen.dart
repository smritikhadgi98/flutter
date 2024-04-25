import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Layout',
          ),
        ),
        body: Container(
          color: Colors.amber,
          height: 60,
        
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [Icon(Icons.phone), Text('Call')],
              ),
              Column(
                children: [Icon(Icons.route), Text('Route')],
              ),
              Column(
                children: [Icon(Icons.share), Text('Share')],
              ),
            ],
          ),
        ));
  }
}
