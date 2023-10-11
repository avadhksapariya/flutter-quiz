import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom/styled_font.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionNumber extends StatelessWidget {
  const QuestionNumber({super.key, required this.questionIndex, required this.isCorrectAnswer});

  final int questionIndex;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 150, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
      ),
      child: Center(
        child: StyledFont(questionNumber.toString(), 12, FontWeight.bold, const Color.fromARGB(255, 22, 2, 56),)
      ),
    );
  }
}
