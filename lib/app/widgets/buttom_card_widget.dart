import 'package:flutter/material.dart';

class ButtomCardWidget extends StatelessWidget {
  const ButtomCardWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: TextButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
