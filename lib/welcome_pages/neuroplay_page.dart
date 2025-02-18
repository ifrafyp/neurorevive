import 'package:flutter/material.dart';

class NeuroPlayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('NeuroPlay')),
      body: Center(
        child: Text('Welcome to NeuroPlay!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
