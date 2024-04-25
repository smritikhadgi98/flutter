import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final int index;
  const ListTileWidget({required this.index, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.accessible_forward),
      title: Text('Smriti Khadgi $index'),
      subtitle: const Text('Kathmandu,Nepal'),
      trailing: Wrap(
        spacing: 8,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete)),
        ],
      ),
    );
  }
}
