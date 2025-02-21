import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; 
import 'assessment_questions.dart';
import 'assessment_provider.dart';
import 'game_recommendation_screen.dart'; 

class AssessmentScreen extends StatelessWidget {
  const AssessmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AssessmentProvider>(context);
    final questions = AssessmentQuestions.questions;

    return Scaffold(
      appBar: AppBar(title: Text('Initial Assessment')),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          final question = questions[index]['question'];
          final options = questions[index]['options'];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(question, style: TextStyle(fontSize: 18)),
                  ...options.map((option) {
                    return RadioListTile(
                      title: Text(option),
                      value: option,
                      groupValue: provider.responses[question],
                      onChanged: (value) {
                        provider.addResponse(question, value.toString());
                      },
                    );
                  }).toList(),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          provider.recommendGames();
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GameRecommendationScreen()),
          );
        },
        child: Icon(Icons.check),
      ),
    );
  }
}