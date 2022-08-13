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
       *  - Use ternary operator to check on true/false values
       */
      appBar: AppBar(),

      /**
       * Todo:
       *  - if user selected correct answer, background color of Container should be green. Otherwise red.
       *  - displays the question and corresponding correct answer in the screen
       * 
       * Hint:
       *  - you may setup a boolean flag to record whether the user selected the correct answer.
       *  - Then, based on the flag, use ?: ternary operator to vary the properties value accordingly
       *  - eg. color: isAnswerCorrect ? Colors.green : Colors.red
       *  - you may access [currentQuiz] to access quiz question (question_string) and its answer (answer_bool)
       */
      body: Container(
        color: Colors.lightGreen[100],
        child: Center(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                 "Question description",
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20.0),
                ),
                Text(
                  'TRUE',
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
