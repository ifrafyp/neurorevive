import 'package:flutter/material.dart';
import 'assessment_provider.dart';
import 'package:provider/provider.dart';

class GameRecommendationScreen extends StatelessWidget {
  const GameRecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final recommendedGames = Provider.of<AssessmentProvider>(context).recommendedGames;

    return Scaffold(
      appBar: AppBar(title: Text('Recommended Games')),
      body: ListView.builder(
        itemCount: recommendedGames.length,
        itemBuilder: (context, index) {
          final game = recommendedGames[index];
          return Card(
            child: ListTile(
              title: Text(game.name),
              subtitle: Text(game.category),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                // Navigate to the game screen
              },
            ),
          );
        },
      ),
    );
  }
}