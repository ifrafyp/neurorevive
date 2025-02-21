import 'package:flutter/material.dart';
import 'game_model.dart';
import 'recommendation_logic.dart'; // Import RecommendationLogic

class AssessmentProvider with ChangeNotifier {
  final Map<String, String> _responses = {}; // Marked as final
  List<Game> _recommendedGames = [];

  Map<String, String> get responses => _responses;
  List<Game> get recommendedGames => _recommendedGames;

  void addResponse(String question, String response) {
    _responses[question] = response;
    notifyListeners();
  }

  void recommendGames() {
    _recommendedGames = RecommendationLogic.recommendGames(_responses); // Fixed
    notifyListeners();
  }
}