import 'package:flutter/material.dart';

class LingoQuestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LingoQuest')),
      body: Center(
        child: Text('Welcome to LingoQuest!', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
