import 'package:flutter/material.dart';

class stfScreen extends StatefulWidget {
  const stfScreen({super.key});

  @override
  State<stfScreen> createState() => _stfScreenState();
}

class _stfScreenState extends State<stfScreen> {
  int _clicks = 0;

  void _increase() {
    setState(() {
      _clicks = _clicks + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("$_clicks"),
        TextButton(
          onPressed: _increase,
          child: const Text('+'),
        ),
      ],
    );
  }
}
