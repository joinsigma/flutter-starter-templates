import 'package:flutter/material.dart';

class QuizAnswerScreen extends StatelessWidget {
  /// This screen takes in 2 parameters, whereby [currentQuiz] will carry the info of the current quiz and [userAnswer] carry the selected answer
  final Map<String, dynamic> currentQuiz;
  final bool userAnswer;

  const QuizAnswerScreen({
    Key? key,
    required this.currentQuiz,
    required this.userAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /**
       * Todo:
       *  - if the answer is correct, display 'Correct' as title, otherwise 'Wrong'
       * 
       * Hint:
       *  - 'title' property controls the title of the AppBar()
       */
      appBar: AppBar(),

      /**
       * Todo:
       *  - if user selected correct answer, background should be green. Otherwise red.
       *  - displays the question and corresponding correct answer in the screen
       * 
       * Hint:
       *  - you may setup a boolean flag to record whether the user selected the correct answer.
       *  - Then, based on the flag, use ?: operator to vary the properties value accordingly
       *  - eg. color: isAnswerCorrect ? Colors.green : Colors.red
       *  - you may access [currentQuiz] to access quiz question (question_string) and its answer (answer_bool)
       */
      body: Container(),
    );
  }
}
