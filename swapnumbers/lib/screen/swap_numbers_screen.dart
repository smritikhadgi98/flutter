import 'package:flutter/material.dart';

class SwapNumbersScreen extends StatefulWidget {
  const SwapNumbersScreen({super.key});

  @override
  State<SwapNumbersScreen> createState() => _SwapNumbersScreenState();
}

class _SwapNumbersScreenState extends State<SwapNumbersScreen> {
  int? first;
  int? second;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Swap Numbers',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Enter First Number'),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                second = int.parse(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter Second Number',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  first = first! + second!;
                  second = first! - second!;
                  first = first! - second!;
                });
              },
              child: const Text('Swap'),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'First Number : $first and Second Number: $second',
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
