import 'package:flutter/material.dart';

class TextContainerExample extends StatelessWidget {
  final String longText;

  const TextContainerExample({super.key, required this.longText});

  @override
  Widget build(BuildContext context) {
    return Text(
              longText,
              softWrap: true, 
              overflow: TextOverflow.visible, 
              style: TextStyle(fontSize: 16),
            );
  }
}