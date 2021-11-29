import 'package:flutter/material.dart';
import 'package:flutter_tutorial/cricketer_details/cricketer_details_screen.dart';
import 'package:flutter_tutorial/quiz_game/quiz_welcome_screen.dart';

void main() {
  runApp(const MaterialApp(
    home: QuizWelcomeScreen(
      quizTitle: "Animal Kingdom Quiz",
      quizButtonText: "Start Playing",
    ),
  ));
}
