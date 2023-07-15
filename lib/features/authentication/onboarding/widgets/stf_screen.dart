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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$_clicks",
            style: const TextStyle(
              fontSize: 48,
            ),
          ),
          TextButton(
            onPressed: _increase,
            child: const Text('+'),
          ),
        ],
      ),
    );
  }
}
