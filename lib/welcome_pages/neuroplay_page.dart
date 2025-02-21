import 'package:flutter/material.dart';
import '../game_recommendation/assessment_screen.dart'; // Correct import path

// Add this constructor
class NeuroPlayPage extends StatelessWidget {
  const NeuroPlayPage({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(title: Text('NeuroPlay')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AssessmentScreen()),
            );
          },
          child: Text('Start Assessment', style: TextStyle(fontSize: 24)),
        ),
      ),
    );
  }
}