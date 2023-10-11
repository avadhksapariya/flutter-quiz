import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom/styled_font.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 150,
            color: const Color.fromARGB(150, 237, 223, 252),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25.0),
            child: StyledFont('Learn Flutter in a fun way !', 18, FontWeight.w500, Color.fromARGB(255, 237, 223, 252),)
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 237, 223, 252),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0))),
              label: const StyledFont('Start Quiz', 12, FontWeight.w400, Color.fromARGB(255, 237, 223, 252),),
              icon: const Icon(Icons.arrow_right),
            ),
          ),
        ],
      ),
    );
  }
}
