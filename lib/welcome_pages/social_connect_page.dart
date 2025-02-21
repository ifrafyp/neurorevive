import 'package:flutter/material.dart';

class SocialConnectPage extends StatelessWidget {
  const SocialConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Social Connect')),
      body: Center(
        child: Text('Welcome to Social Connect!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
